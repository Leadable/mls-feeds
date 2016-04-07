#!/usr/bin/perl

use strict;
use warnings;
use FindBin;

use lib "$FindBin::Bin/../lib";

use Data::Dumper;
use Mojo::JSON qw(j);
use Mojo::UserAgent;

use MLS::Database;

$| = 1;

my $MLS        = $ENV{MLS_NAME};
my $VIEW       = $ENV{MLS_VIEW};
my $API_KEY    = $ENV{API_KEY};
my $DOMAIN_URL = $ENV{DOMAIN_URL};

die "Missing parameters" if (!$MLS || !$VIEW || !$API_KEY || !$DOMAIN_URL);

my $MV_ACTIVE = $VIEW . '_mv_active';

my $area_dbh = MLS::Database->new({db => 'feeds'});

sub get_circle_action_listings {
    my $url = qq|https://api.leadable.com/circle/get_action_listings|;
    my $req = {
        api_key   => $API_KEY,
    };

    my $ua = Mojo::UserAgent->new();
    my $tx = $ua->get($url => json => $req);
    die "Error getting /circle/get_action_listings: [$tx->error]" if (!$tx->success);

    return $tx->res->json;
}

sub get_current_listing_status {
    my $listings = shift;

    my $where_sql = join (' OR ', map {'mlsnum = ' . $area_dbh->quote($_)} @$listings);
    my $sql = qq|SELECT * FROM $MLS.$MV_ACTIVE WHERE $where_sql;|;
    my $rs = $area_dbh->selectall_hashref($sql, 'mlsnum');

    return $rs;
}

sub get_past_listing_status {
    my ($listings, $account_id) = @_;

    $account_id = $area_dbh->quote($account_id);

    my $where_sql = join (' OR ', map {'mlsnum = ' . $area_dbh->quote($_)} @$listings);
    my $sql = qq|SELECT * FROM $MLS.sync_action_listings WHERE $where_sql AND account_id = $account_id;|;
    my $rs = $area_dbh->selectall_hashref($sql, 'mlsnum');

    return $rs;
}

sub create_listing_record {
    my ($mlsnum, $account_id, $status) = @_;

    $mlsnum     = $area_dbh->quote($mlsnum);
    $status     = $area_dbh->quote($status);
    $account_id = $area_dbh->quote($account_id);

    my $sql = qq|INSERT INTO $MLS.sync_action_listings (mlsnum, account_id, status) VALUES ($mlsnum, $account_id, $status);|;
    $area_dbh->do($sql);
}

sub update_listing_record {
    my ($mlsnum, $account_id, $status) = @_;

    $mlsnum     = $area_dbh->quote($mlsnum);
    $status     = $area_dbh->quote($status);
    $account_id = $area_dbh->quote($account_id);

    my $sql = qq|UPDATE $MLS.sync_action_listings SET status = $status, account_id = $account_id, last_synced_at = NOW() WHERE mlsnum = $mlsnum;|;
    $area_dbh->do($sql);
}

sub create_event {
    my $opts = shift;

    my $listing    = $opts->{listing};
    my $account_id = $opts->{account_id};
    my $circle_id  = $opts->{circle_id};
    my $contact_id = $opts->{contact_id};

    my $event = {
        api_key   => $API_KEY,
        type      => 'LISTING_STATUS_CHANGED',
        circle_id  => $circle_id,
        contact_id => $opts->{contact_id},
        listing => {
            baths => $listing->{baths_total},
            primary_photo => $listing->{__photo_urls}->[0],
            property_type => $listing->{type},
            list_date => $listing->{__list_date},
        },
        links => {
            web  => qq|http://$DOMAIN_URL/circle/$circle_id/property/search/$account_id/$listing->{mlsnum}|,
            self => qq|https://api.leadable.com/mls/area/$account_id/mlsnum/$listing->{mlsnum}|,
        }
    };

    my @listing_cols = qw(
        mls
        beds
        acres
        price
        state
        mlsnum
        status
        latitude
        longitude
        sold_date
        listing_id
        sold_price
        year_built
        image_count
        square_feet
        listing_type
        address_line1
        address_line2
    );

    foreach my $col (@listing_cols) {
        $event->{listing}{$col} = $listing->{$col};
    }

    my $ua = Mojo::UserAgent->new();
    my $url = q|https://api.leadable.com/event_queue|;
    my $tx = $ua->post($url => json => $event);
    if (!$tx->success) {
        print Dumper $tx->error;
    }
}

my $action_data = get_circle_action_listings();
my $account_id = $action_data->{account_id};

# Compile an objects with listings and the contacts who care about them
my %seen;
foreach my $circle (@{$action_data->{data}}) {
    my $circle_id = $circle->{circle_id};

    foreach my $contact (@{$circle->{data}}) {
        my $contact_id = $contact->{contact_id};

        foreach my $mls (@{$contact->{data}}) {
            my $mlsnum = $mls->{mlsnum};

            push @{$seen{$mlsnum}}, {
                circle_id  => $circle_id,
                contact_id => $contact_id,
            };
        }
    }
}

my $current_listing_data = get_current_listing_status([keys %seen]);
my $past_listing_data    = get_past_listing_status([keys %seen], $account_id);

while (my ($mlsnum, $contact_list) = each %seen) {
    my $current_status = $current_listing_data->{$mlsnum}{status};
    my $past_status    = $past_listing_data->{$mlsnum}{status};

    if (!$current_status) {
        print "No current status for [$mlsnum] - skipping\n";
        next;
    }
    elsif (!$past_status) {
        print "Missing past record for [$mlsnum] - creating it\n";
        create_listing_record($mlsnum, $account_id, $current_status);
        next;
    }
    elsif ($current_status eq $past_status) {
        print "Current status matches past for [$mlsnum] - skipping\n";
        next;
    }
    else {
        print "Status changed for [$mlsnum]\n";
    }
    
    foreach my $contact (@$contact_list) {
        print "Sending notifcation for contact\n";

        my $listing = $current_listing_data->{$mlsnum};

        create_event({
            listing    => $listing,
            account_id => $account_id,
            circle_id  => $contact->{circle_id}, 
            contact_id => $contact->{contact_id}, 
        });

        # Update record
        update_listing_record($mlsnum, $account_id, $current_status);
    }
}

1;
