#!/usr/bin/env perl
use lib "blib/lib", "blib/arch"; 
use strict; 
use librets;

use Data::Dumper qw(Dumper);

my %extentions =
(
 'image/jpeg' => "jpg",
 'image/gif' => "gif",
 'text/xml' => "xml"
);

my $rets = new librets::RetsSession(
    "http://ragfl.retsiq.com/contact/rets/login"
);

$rets->SetUserAgentAuthType(
   $librets::UserAgentAuthType::USER_AGENT_AUTH_RETS_1_7
);

if (!$rets->Login("ListingTech", "W1Nt3R2015"))
{
    print "Invalid login\n";
    exit 1;
}

# Very useful for determining differences between RETS servers
# and understanding the metadata
$rets->SetHttpLogName("rets.log");

my $request = new librets::GetObjectRequest("Property", "Photo");

$request->AddAllObjects("332258487");

my $response = $rets->GetObject($request);

print Dumper($response);

my $objectDescriptor = $response->NextObject();
    
while ($objectDescriptor)
{
    my $objectKey = $objectDescriptor->GetObjectKey();
    my $objectId = $objectDescriptor->GetObjectId();
    my $contentType = $objectDescriptor->GetContentType();
    my $description = $objectDescriptor->GetDescription();

    print $objectKey . " object #" . $objectId;
    if ($description ne "")
    {
        print ", description: " . $description;
    }
    print "\n";

    print Dumper($contentType);
    my $ext = $extentions{$contentType};
    my $outputFilename = $objectKey . "-" . $objectId . "." . $ext;

    open(OUT, ">", $outputFilename) || die ("Couldn't open output file");
    binmode(OUT);

    my $resultdata = $objectDescriptor->GetDataAsString();
    #print Dumper($resultdata);
    print length($resultdata) . "\n";
    syswrite(OUT, $resultdata);

    close(OUT);

    $objectDescriptor = $response->NextObject();
}

my $logout =  $rets->Logout();

