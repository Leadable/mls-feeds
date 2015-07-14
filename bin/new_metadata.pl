#!/usr/bin/env perl
use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../lib";

use strict;
use librets;

use Data::Dumper qw(Dumper);
use Mojo::Template;
use Mojolicious::Lite;
use MLS::Resource::Utils;

# have to do this outside of the handlers for some reason
my $SCRIPT_DIR = $FindBin::Bin;

# cache of librets objects
my %RETS_OBJ;

my %DATA_TYPE_FROM_RETS_TO_PG = (
  $librets::MetadataTable::BOOLEAN => 'boolean',
  $librets::MetadataTable::CHARACTER => 'text',
  $librets::MetadataTable::DATE => 'text', #'date',
  $librets::MetadataTable::DATE_TIME => 'text', #'timestamp without time zone',
  $librets::MetadataTable::TIME => 'text', #'timestamp without timezone',
  $librets::MetadataTable::TINY => 'integer',
  $librets::MetadataTable::SMALL => 'integer',
  $librets::MetadataTable::INT => 'integer',
  $librets::MetadataTable::LONG => 'bigint',
  $librets::MetadataTable::DECIMAL => 'decimal'
);

my %INTERPRETATION_TYPE_FROM_RETS_TO_PG = (
  $librets::MetadataTable::NUMBER => 'numeric',
  $librets::MetadataTable::CURRENCY => 'numeric',
  $librets::MetadataTable::LOOKUP => 'lookup',
  $librets::MetadataTable::LOOKUP_MULTI => 'array',
  $librets::MetadataTable::LOOKUP_BITSTRING => 'lookup_bitstring',
  $librets::MetadataTable::LOOKUP_BITMASK => 'lookup_bitmask',
  $librets::MetadataTable::URI => 'text',
  $librets::MetadataTable::NO_INTERPRETATION => 'none',
);

sub dumpAllObjects {
  my ($metadata, $resource_id) = @_;

  my @object_info;

  my $objects = $metadata->GetAllObjects($resource_id);
  foreach my $object (@$objects) {
    push @object_info, {
      id => $object->GetId(),
      object_type => $object->GetObjectType(),
      mime_type => $object->GetMIMEType(),
    };
  }

  return \@object_info;
}

sub dumpAllClasses {
  my ($metadata, $resource, $columns, $mls) = @_;

  my @class_info;

  my $classes = $metadata->GetAllClasses($resource->GetResourceID());
  foreach my $class (@$classes) {
    $columns->{ $resource->GetResourceID() }->{ $class->GetClassName() } = {};

    push @class_info, {
      id            => $class->GetId(),
      name          => $class->GetClassName(),
      standard_name => $class->GetStandardName(),
      visible_name  => $class->GetVisibleName(),
    };

    dumpAllTables($metadata, $resource, $columns, $class, $mls);
  }

  return \@class_info;
}

sub dumpAllTables {
  my ($metadata, $resource, $columns, $class, $mls) = @_;

  my $tables = $metadata->GetAllTables($class);
  foreach my $table (@$tables) {

    my %info = (
      SystemName => $table->GetSystemName(),
      StandardName => $table->GetStandardName(),
      DBName => $table->GetDBName(),
      ShortName => $table->GetShortName(),
      LongName => $table->GetLongName(),
      Unique => $table->IsUnique(),
      DataType => $table->GetDataType() . " (" . $DATA_TYPE_FROM_RETS_TO_PG{ $table->GetDataType() } . ")",
      Interpretation => $table->GetInterpretation() . " (" . $INTERPRETATION_TYPE_FROM_RETS_TO_PG{ $table->GetInterpretation() } . ")",
      LookupName => $table->GetLookupName(),
    );

    my $longname = $table->GetLongName();
    $longname =~ s/'/''/;

    my $comment = 'COMMENT ON COLUMN ' . $mls . '."' . $resource->GetResourceID() . '"."' . $table->GetSystemName() . '" IS \'' . $longname . "'";
    my $sql = 'ALTER TABLE ' . $mls . '."' . $resource->GetResourceID() . '" ADD COLUMN "' . $table->GetSystemName() . '" ' . $DATA_TYPE_FROM_RETS_TO_PG{ $table->GetDataType() };

    # LOOKUP MULTI, make column an array
    $sql .= '[]' if ($INTERPRETATION_TYPE_FROM_RETS_TO_PG{ $table->GetInterpretation() } eq 'array');

    # Primary Key field
    $sql .= ' PRIMARY KEY' if ($table->GetSystemName() eq $resource->GetKeyField());

    $info{sql} = $sql;

    $columns->{ $resource->GetResourceID() }->{ $class->GetClassName() }->{ $table->GetSystemName() } = \%info;

    $columns->{ $resource->GetResourceID() }->{'ALL'}->{ $table->GetSystemName() } = { column => $sql, comment => $comment };
  }
}

sub dumpAllLookups {
  my $metadata = shift;
  my $resource = shift;
  my $lookups = shift;

  return if ($resource->GetResourceID() ne 'Property');

  my $lookup_list = $metadata->GetAllLookups($resource->GetResourceID());
  foreach my $lookup (@$lookup_list) {
    my $lookup_key = $lookup->GetLookupName();
    next if (
      $lookup_key ne 'ListingStatus' &&
      $lookup_key ne 'ContingencyType'
    );

    my $lookup_types = $metadata->GetAllLookupTypes($lookup);
    foreach my $lookup_type (@$lookup_types) {

       push @{$lookups->{$lookup_key}}, {
        long_value => $lookup_type->GetLongValue(),
        value      => $lookup_type->GetValue(),
      };
    }
  }
}

sub get_rets_obj {
  my ($vendor, $mls) = @_;
  
  my $board_path = "MLS::Resource::${vendor}::${mls}::Config";
  eval "require $board_path" or die "Could not find [$board_path]: $@\n";

  $MLS::Config::RETS->SetHttpLogName("/tmp/metadata_$mls.log");

  # cache the object
  $RETS_OBJ{$mls} = $MLS::Config::RETS;

  return $MLS::Config::RETS;
}

get '/:mls/:resource' => sub {
  my $c = shift;

  my $mls = $c->param('mls');
  my $resource_name = $c->param('resource');
  my $vendor = MLS::Resource::Utils::find_vendor($mls, "$SCRIPT_DIR/../lib/MLS/Resource");

  my $rets = $RETS_OBJ{$mls} || get_rets_obj($vendor, $mls);

  my $metadata = $rets->GetMetadata;
  my $resource = $metadata->GetResource($resource_name);
  my $resource_id = $resource->GetResourceID();

  my %columns;
  $columns{ $resource_id } = { 'ALL' => {} };

  my $objects = dumpAllObjects($metadata, $resource_id);
  my $classes = dumpAllClasses($metadata, $resource, \%columns, $mls);

  $c->render(
    template => 'mls_resource',
    mls => $mls,
    vendor => $vendor,
    columns => \%columns,
    objects => $objects,
    classes => $classes,
  );
};

get '/:mls' => sub {
  my $c = shift;

  my $mls = $c->param('mls');
  my $vendor = MLS::Resource::Utils::find_vendor($mls, "$SCRIPT_DIR/../lib/MLS/Resource");

  my $rets = $RETS_OBJ{$mls} || get_rets_obj($vendor, $mls);
  my $metadata = $rets->GetMetadata;
  my $system = $metadata->GetSystem();

  my @resource_names;
  my $resources = $metadata->GetAllResources();
  foreach (@$resources) {
    push @resource_names, $_->GetResourceID();
  }

  $c->render(
    template => 'mls_info',
    vendor   => $vendor,
    mls      => $mls,
    system_id          => $system->GetSystemID(),
    system_description => $system->GetSystemDescription(),
    system_comment     => $system->GetComments(),
    resource_names     => \@resource_names,
  );
};

#

get '/' => sub {
  my $c = shift;

  $c->render(template => 'main');
};

app->start;

__DATA__

@@ main.html.ep
<!DOCTYPE html>
<html>
<div>
  Enter MLS abbreviation:
  <input type="text" id="mls"/>
  <input type="Submit" id="mls_submit">
</div>
</html>


@@ mls_info.html.ep
<!DOCTYPE html>
<html>
<div>
  Vendor: <%= $vendor %> <br>
  MLS:    <%= $mls %> <br> <br>

  System ID: <%= $system_id %> <br>
  System Description: <%= $system_description %> <br>
  System Comment: <%= $system_comment %> <br>
</div>
<h2> Resources </h2>
% foreach (@$resource_names) {
  <a href="<%= $_ %>"><%= $_ %></a><br>
% }
</html>


@@ mls_resource.html.ep
Vendor: <%= $vendor %> <br>
MLS:    <%= $mls %> <br> <br>
% foreach my $resource_id (sort keys %$columns) {
  % my $resource = $columns->{$resource_id};
  <h2><%= $resource_id %></h2>

  <h3>Objects</h3>
  <table width="100%" cellpadding="2" cellspacing="2" border="1">
    <tr>
      <th>ID</th>
      <th>Object Type</th>
      <th>Mime Type</th>
    </tr>
  % foreach my $object (@$objects) {
      <tr>
        <td><%= $object->{id} %></td>
        <td><%= $object->{object_type} %></td>
        <td><%= $object->{mime_type} %></td>
      </tr>
  % }
  </table>

  <h3>Classes</h3>
  <table width="100%" cellpadding="2" cellspacing="2" border="1">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Standard Name</th>
      <th>Visibile Name</th>
    </tr>
  % foreach my $class (@$classes) {
      <tr>
        <td><%= $class->{id} %></td>
        <td><%= $class->{name} %></td>
        <td><%= $class->{standard_name} %></td>
        <td><%= $class->{visible_name} %></td>
      </tr>
  % }
  </table>

  <h3>Fields</h3>
  % foreach my $col_id (sort keys %{ $resource->{ALL} }) {
    <table width="100%" cellpadding="2" cellspacing="2" border="1">

      <tr>
        <td colspan="10"><%= $col_id %></td>
      </tr>

      <tr>
        <th colspan="2">&nbsp;</th>
        % foreach my $attr (qw(StandardName DBName ShortName LongName Unique DataType Interpretation LookupName sql)) {
          <th><%= $attr %></th>
        % }
      </tr>


      % foreach my $class_id (sort keys %$resource) {
        % next if $class_id eq 'ALL';
        % my $x = 0;
        % my $info = $resource->{$class_id}->{$col_id};
        <tr bgcolor="<%= $x++ % 2 ? '#f7f7f7' : '#fff' %>">
          <td>&nbsp;</td>
          <td><%= $class_id %></td>
          % foreach my $attr (qw(StandardName DBName ShortName LongName Unique DataType Interpretation LookupName sql)) {
            <td><%== $info ? $info->{$attr} : '&nbsp;' %></td>
          % }
        </tr>
      % }

      <tr><td colspan="10"><%= $resource->{ALL}->{ $col_id }->{column} %></td></tr>
      <tr><td colspan="10"><%= $resource->{ALL}->{ $col_id }->{comment} %></td></tr>
    </table>
    <br><br>
  % }
% }

<pre>
BEGIN;

% foreach my $resource_id (sort keys %$columns) {
  % my $resource = $columns->{$resource_id};
  CREATE TABLE <%= $mls %>."<%= $resource_id %>"() <%= lc($resource_id) eq 'property' ? 'INHERITS (property)' : '' %>;
  % foreach my $col_id (sort { $a cmp $b } keys %{ $resource->{ALL} }) {
    <%== $resource->{ALL}->{ $col_id }->{column} %>;
    <%== $resource->{ALL}->{ $col_id }->{comment} %>;
    <%= ' ' %>
  % }
% }

COMMIT;
</pre>
