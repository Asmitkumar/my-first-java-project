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
 open my $fh, ">:encoding(utf8)", "alexa_products.csv" or die "alexa_products.csv: $!";

my $dbName = "crawl_alexa_com";
my $collectionName = "c_52df58f2d4532c5c75000000_1_1390381317_contents_products";

my $connection = MongoDB::Connection->new(host => "raw-db2.semantics3.com:27017", query_timeout => 120000);

my $db = $connection->$dbName;
my $collection = $db->$collectionName;

my @headers = qw/
global_rank
sku
name
related_sites
us_rank
url
/;

$csv->print ($fh, $_) for \@headers;

my $cursor = $collection->find();
my $counter=0;

while (my $product = $cursor->next) {
    my @rows;
    next if $product->{name} eq "";
    push(@rows,$product->{global_rank});
    push(@rows, $product->{sku}); 
    push(@rows, $product->{name}); 
    push(@rows, join(",", @{$product->{related_sites}})); 
    push(@rows, $product->{url}); 
    push(@rows, $product->{us_rank}); 


    $csv->print ($fh, $_) for \@rows;
    $counter+=1;

    print STDERR "Printed $counter products..\n" if $counter%100 == 0;
}


close $fh or die "alexa_products.csv: $!";

print STDERR "Done!\n";

