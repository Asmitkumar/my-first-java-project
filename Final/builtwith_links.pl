  use Text::CSV;
my $file = "alexa_products.csv";
  open my $fh, "<", $file or die "$file: $!";

my $csv = Text::CSV->new ({
      'sep_char'    => "\t",
      binary    => 1, # Allow special character. Always set this
      auto_diag => 1, # Report irregularities immediately
      });
  while (my $row = $csv->getline ($fh)) {
      #print "http://www.builtwith.com/$row->[2]\n";
       print "$row->[0]\n"; # To get the required rows from csv ie. in this case is name row
       print "$row->[1]\n";
       print "$row->[2]\n";
       print "$row->[5]\n";
      }
  close $fh;

# One liner to get output as a CSV file----perl -w builtwith_links.pl &> links.csv