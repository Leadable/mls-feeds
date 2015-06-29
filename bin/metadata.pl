#!/usr/bin/env perl
use lib "blib/lib", "blib/arch"; 
use strict; 
use librets;

use Data::Dumper qw(Dumper);
use Mojo::Template;
use Mojolicious::Lite;

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

my %IGNORED_CLASSES = (
#  5 => 'Industrial',
#  7 => 'Commercial',
#  8 => 'Business'
);

sub dumpAllObjects {
  my $metadata = shift;
  my $resource = shift;
  print "\nOBJECTS\n";

  my $objects = $metadata->GetAllObjects($resource->GetResourceID());
  foreach my $object (@$objects) {
    print "\tID: " . $object->GetId() . "\n";
    print "\tType: " . $object->GetObjectType() . "\n";
    print "\tMime Type: " . $object->GetMIMEType() . "\n";
    print "\n";
  }
}

sub dumpAllClasses {
  my $metadata = shift;
  my $resource = shift;
  my $columns = shift;

  my $classes = $metadata->GetAllClasses($resource->GetResourceID());
  foreach my $class (@$classes) {
    next if ($IGNORED_CLASSES{ $class->GetClassName });

    $columns->{ $resource->GetStandardName() }->{ $class->GetClassName() } = {};

    print "Class ID: " . $class->GetId() . "\n";
    print "Class name: " . $class->GetClassName() . " [" .  $class->GetStandardName() . "] " . $class->GetVisibleName . "\n";
    dumpAllTables($metadata, $resource, $columns, $class);
  }
}

sub dumpAllTables {
  my $metadata = shift;
  my $resource = shift;
  my $columns = shift;
  my $class = shift;

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

    my $comment = 'COMMENT ON COLUMN beaches."' . $resource->GetStandardName() . '"."' . $table->GetSystemName() . '" IS \'' . $longname . "'";
    my $sql = 'ALTER TABLE beaches."' . $resource->GetStandardName() . '" ADD COLUMN "' . $table->GetSystemName() . '" ' . $DATA_TYPE_FROM_RETS_TO_PG{ $table->GetDataType() };

    # LOOKUP MULTI, make column an array
    $sql .= '[]' if ($INTERPRETATION_TYPE_FROM_RETS_TO_PG{ $table->GetInterpretation() } eq 'array');

    # Primary Key field
    $sql .= ' PRIMARY KEY' if ($table->GetSystemName() eq $resource->GetKeyField());

    $info{sql} = $sql;
 
    $columns->{ $resource->GetStandardName() }->{ $class->GetClassName() }->{ $table->GetSystemName() } = \%info;

    $columns->{ $resource->GetStandardName() }->{'ALL'}->{ $table->GetSystemName() } = { column => $sql, comment => $comment };
  }
}

sub dumpAllLookups {
  my $metadata = shift;
  my $resource = shift;
  my $lookups = shift;

  return if ($resource->GetStandardName() ne 'Property');

  my $lookup_list = $metadata->GetAllLookups($resource->GetStandardName());
  foreach my $lookup (@$lookup_list) {
    my $lookup_key = $lookup->GetLookupName();
    next if (
      $lookup_key ne 'Status'
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

#my $mt = Mojo::Template->new;
#my $sql = $mt->render_file('./tables.mt', 'beaches', $metadata);
#print $sql;

#print Dumper(\%columns);

get '/' => sub {
  my $c = shift;

  my $rets = new librets::RetsSession( "http://matrixrets.carolinamls.com/rets/login.ashx");

  #$rets->SetUserAgentAuthType( $librets::UserAgentAuthType::USER_AGENT_AUTH_RETS_1_7);

  if (!$rets->Login("idxRaelstrom", "Zj0Y9g34")) {
      $c->render( text => "Invalid login" );
      return;
  }

  # Very useful for determining differences between RETS servers
  # and understanding the metadata
  $rets->SetHttpLogName("rets.log");

  # Get metadata
  my $metadata = $rets->GetMetadata;
  my $system = $metadata->GetSystem();
  print "System ID: " . $system->GetSystemID() . "\n";
  print "Desription: " . $system->GetSystemDescription() . "\n";
  print "Comment : " . $system->GetComments() . "\n\n";

  my $resources = $metadata->GetAllResources();
  my %columns;
  my %lookups;

  foreach my $resource (@$resources) {
    $columns{ $resource->GetStandardName() } = { 'ALL' => {} };

    print "Resource name: " . $resource->GetResourceID() . " [" .  $resource->GetStandardName() . "]\n";
    print "Key Field: " . $resource->GetKeyField() . "\n";

    print join(', ', @{ $resource->GetAttributeNames() });
    dumpAllObjects($metadata, $resource);
    dumpAllClasses($metadata, $resource, \%columns);
    dumpAllLookups($metadata, $resource, \%lookups);

    print Dumper \%lookups;
  }

  $rets->Logout();

  $c->render(template => 'columns', mls => 'beaches', columns => \%columns, lookups => \%lookups);
};

app->start;

__DATA__

@@ columns.html.ep
% use Data::Dumper qw(Dumper);
% foreach my $resource_id (sort keys %$columns) {
  % my $resource = $columns->{$resource_id};

  <h2><%= $resource_id %></h2>
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

    <h3>Lookups</h3>
  % foreach my $lookup_name (sort keys %$lookups) {
    <table width="100%" cellpadding="2" cellspacing="2" border="1">

      <tr>
        <td colspan="2"><%= $lookup_name %></td>
      </tr>

      <tr>
        % foreach my $attr (qw(LongValue Value)) {
          <th><%= $attr %></th>
        % }
      </tr>

        % foreach my $lookup (@{$lookups->{$lookup_name}}) {
          <tr>
          % foreach my $attr (qw(long_value value)) {
            <td><%= $lookup->{$attr} %></td>
          % }
          </tr>
        % }
    </table>
  % }
% }

<pre>
BEGIN;

% foreach my $resource_id (sort keys %$columns) {
  % my $resource = $columns->{$resource_id};
  CREATE TABLE <%= $mls %>."<%= $resource_id %>"() <%= lc($resource_id) eq 'property' ? 'INHERITS (property)' : '' %>;
  % foreach my $col_id (sort { $a <=> $b } keys %{ $resource->{ALL} }) {
    <%== $resource->{ALL}->{ $col_id }->{column} %>;
    <%== $resource->{ALL}->{ $col_id }->{comment} %>;
    <%= ' ' %>
  % }
% }

COMMIT;
</pre>
