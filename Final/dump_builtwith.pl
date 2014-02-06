#!/usr/bin/perl                                           
use strict;  
use warnings;
use lib("/usr/local/lib/perl");


use JSON qw/encode_json decode_json/;
use Text::CSV_XS;

use Net::Semantics3::Products qw/get_results/;
use Data::Dumper;
use Redis;
use MongoDB;

my $csv = Text::CSV_XS->new ({
     #'quote_char'  => '',
     #'escape_char' => '',
     'sep_char'    => "\t",
     'binary'      => 1
 }) or
     die "Cannot use CSV: ".Text::CSV_XS->error_diag ();
$csv->eol ("\r\n");
 open my $fh, ">:encoding(utf8)", "builtwith_products.csv" or die "builtwith_products.csv: $!";

my $dbName = "crawl_builtwith_com";
my $collectionName = "c_51d531e84e9515f807000007_1_1390470781_contents_products";

my $connection = MongoDB::Connection->new(host => "raw-db2.semantics3.com:27017", query_timeout => 120000);

my $db = $connection->$dbName;
my $collection = $db->$collectionName;

my @headers = qw/
Frameworks
Ecommerce
/;

$csv->print ($fh, $_) for \@headers;

my $cursor = $collection->find();
my $counter=0;

while (my $product = $cursor->next) {
    my @rows;
    next if $product->{site_tools} eq "";
    push(@rows, join(",", %{$product->{Frameworks}}));
    push(@rows, join(",", %{$product->{Ecommerce}})); 


    $csv->print ($fh, $_) for \@rows;
    $counter+=1;

    print STDERR "Printed $counter products..\n" if $counter%100 == 0;
}


close $fh or die "builtwith_products.csv: $!";

print STDERR "Done!\n";

