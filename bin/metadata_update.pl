#!/usr/bin/env perl
use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../lib";

use strict;
use librets;

use Data::Dumper;

use DBI;
use MLS::Resource::Utils;
use MLS::Rets;
use File::Temp qw(tempfile);

# have to do this outside of the handlers for some reason
my $SCRIPT_DIR = $FindBin::Bin;

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

    # always assume lookups are text since we only care about storing the long value
    my $long_data_type = $table->GetLookupName() ? 'text' : $DATA_TYPE_FROM_RETS_TO_PG{ $table->GetDataType() };

    # fall back if no interpretation
    if ($INTERPRETATION_TYPE_FROM_RETS_TO_PG{ $table->GetInterpretation() } eq 'none') {
      $long_data_type = $DATA_TYPE_FROM_RETS_TO_PG{ $table->GetDataType() };
    }

    my $longname = $table->GetLongName();
    $longname =~ s/'/''/;

    my $comment = 'COMMENT ON COLUMN ' . $mls . '."' . $resource->GetResourceID() . '"."' . $table->GetSystemName() . '" IS \'' . $longname . "'";
    my $sql = 'ALTER TABLE ' . $mls . '."' . $resource->GetResourceID() . '" ADD COLUMN "' . $table->GetSystemName() . '" ' . $long_data_type;

    # LOOKUP MULTI, make column an array
    $sql .= '[]' if ($INTERPRETATION_TYPE_FROM_RETS_TO_PG{ $table->GetInterpretation() } eq 'array');

    # Primary Key field
    $sql .= ' PRIMARY KEY' if ($table->GetSystemName() eq $resource->GetKeyField());

    $info{sql} = $sql;

    $columns->{ $resource->GetResourceID() }->{ $class->GetClassName() }->{ $table->GetSystemName() } = \%info;

    $columns->{ $resource->GetResourceID() }->{'ALL'}->{ $table->GetSystemName() } = { column => $sql, comment => $comment };
  }
}

sub get_rets_obj {
  my $mls = shift;

  my $vendor = MLS::Resource::Utils::find_vendor($mls, "$SCRIPT_DIR/../lib/MLS/Resource");

  my $board_path = "MLS::Resource::${vendor}::${mls}::Config";
  eval "require $board_path" or die "Could not find [$board_path]: $@\n";

  $MLS::Config::RETS->login;

  $MLS::Config::RETS->SetHttpLogName("/tmp/metadata_$mls.log");

  return $MLS::Config::RETS;
}


$ENV{PGPASSWORD} = $ENV{POSTGRES_FEEDS_PASS};
my $mls = $ENV{MLS_NAME} || die 'MLS_NAME must be set';
my $resource_name = 'Property';

my $vendor = eval {
    MLS::Resource::Utils::find_vendor($mls, "$SCRIPT_DIR/../lib/MLS/Resource");
};

my $rets = get_rets_obj($mls);

print "Getting metadata\n";

my $metadata = $rets->GetMetadata;
my $resource = $metadata->GetResource($resource_name);
my $resource_id = $resource->GetResourceID();

my %columns;
$columns{ $resource_id } = { 'ALL' => {} };

my $classes = dumpAllClasses($metadata, $resource, \%columns, $mls);

my $sql = '';

foreach my $resource_id (sort keys %columns) {
  my $resource = $columns{$resource_id};

  foreach my $col_id (sort { $a cmp $b } keys %{ $resource->{ALL} }) {
    $sql .= $resource->{ALL}->{ $col_id }->{column} . ";";
    $sql .= $resource->{ALL}->{ $col_id }->{comment} .";";
  }
}

print "Writing to database\n";

my ($fh, $filename) = tempfile();
print $fh $sql;

my @cmd = (
  'psql',
  '-h', $ENV{POSTGRES_PORT_5432_TCP_ADDR},
  '-p', $ENV{POSTGRES_PORT_5432_TCP_PORT},
  '-U', $ENV{POSTGRES_FEEDS_USER},
  '-d', 'mls-db-owner',
  '-f', $filename
);

`@cmd`;

1;
