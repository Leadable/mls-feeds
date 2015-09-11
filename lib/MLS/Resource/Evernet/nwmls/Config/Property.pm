package MLS::Resource::Evernet::nwmls::Config::Property;
use strict;

use MLS::Resource::Evernet::nwmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(warmack dominic);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'LN' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'UD' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'UD' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ST' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'LP' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'STR',
  number   => 'HSN',
  suffix   => 'SSUF',
  post_dir => 'DRS',
  prefix   => 'DRP',
  city     => 'CIT',
  state    => 'STA',
  zip      => 'ZIP',
);

$MLS::Config::ADDRESS = sub {
  my $remote_row = shift;

  my %address;
  while (my ($col_name, $col_mapping) = each %MLS::Config::ADDR_COLUMNS) {
    $address{$col_name} = $remote_row->{$col_mapping} if ($col_mapping);
  }

  my (@line1, @full);

  push(@line1, $address{number}) if $address{number};
  push(@line1, $address{prefix}) if $address{prefix};
  push(@line1, $address{street}) if $address{street};
  push(@line1, $address{suffix}) if $address{suffix};
  push(@line1, $address{post_dir}) if $address{post_dir};

  $address{line1} = join(' ', @line1);

  $address{line2} = sprintf('%s, %s %s', $address{city}, $address{state}, $address{zip})  if ($address{city} && $address{state} && $address{zip});
  $address{line2} = sprintf('%s, %s', $address{city}, $address{state})                    if ($address{city} && $address{state} && !($address{zip}));

  push(@full, $address{line1}) if $address{line1};
  push(@full, $address{line2}) if $address{line2};
  $address{full} = join(', ', @full);

  my $spec = Geo::StreetAddress::US->parse_address($address{full});

  @line1 = ();
  my @line2 = ();

  push(@line1, $spec->{number}) if $spec->{number};
  push(@line1, $spec->{prefix}) if $spec->{prefix};
  push(@line1, $spec->{street}) if $spec->{street};
  push(@line1, $spec->{type}) if $spec->{type};
  push(@line1, $spec->{suffix}) if $spec->{suffix};

  push(@line2, $spec->{city} . ', ' . $spec->{state}) if ($spec->{city} && $spec->{state});
  push(@line2, $spec->{zip}) if $spec->{zip};

  return 'INVALID' unless (scalar(@line1) && scalar(@line2));

  return join(' ', @line1) . ', ' . join(' ', @line2);
};

# Make sure $MLS::Config::PEAK_TIME is set
MLS::Resource::Utils::is_peak_time();
%MLS::Config::CLASSES = (
  BUSO => { StandardName => 'Business' },
  COMI => { StandardName => 'Commericial' },
  COND => { StandardName => 'Condominium' },
  FARM => { StandardName => 'Farmland' },
  MANU => { StandardName => 'Manufacturered Home' },
  MULT => { StandardName => 'Multi-Family' },
  RENT => { StandardName => 'Rental' },
  RESI => { StandardName => 'Residential' },
  TSHR => { StandardName => 'Time Share' },
  VACL => { StandardName => 'Lots and Land' },
);

1;
