use strict; 
use warnings;
use Text::CSV;
use Data::Dumper;
open my $f1, '<', 'alexa_products.csv';

open my $f3, '>', 'final.csv';
my $csv = Text::CSV->new ({
     #'quote_char'  => '',
     #'escape_char' => '',
     'sep_char'    => "\t",
     'binary'      => 1
 });

$csv->eol ("\r\n");

my @headers = qw/
Name
Global_Rank 
US_Rank
Framework
Ecommerce
Analytics
/;

$csv->print($f3, $_) for \@headers;


$csv->getline ($f1);
while(my $rows = $csv->getline ($f1)){
#print STDERR Dumper $rows->[2];
#print STDERR ".";
  my $a = $rows->[1]; # sku field of csv
  my $c = $rows->[0]; 
  my $d = $rows->[2];
  my $e = $rows->[5];
  open my $f2, '<', 'data.csv';
  $csv->getline ($f2);
  my @field;
  while(my $rows1 = $csv->getline ($f2)){
  #print STDERR Dumper $rows->[2];
   
    my $b = $rows1->[0]; # the url field of csv
    my $f = $rows1->[1];
    my $g = $rows1->[2];
    my $h = $rows1->[3];
    foreach($b){
      if($a eq $b) #### Url and csv are compared , if they match the values are pushed to corresponding fields ####
      {
        #print STDERR "*";
        push(@field,$d);
        push(@field,$c);
        push(@field,$e);
        push(@field,$f);
        push(@field,$g);
        push(@field,$h);
         
      }

    }

 
  }
  close($f2);
  print STDERR Dumper(\@field);
  $csv->print ($f3,$_) for \@field;
 
}
close($f3);
close($f1);