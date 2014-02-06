use Net::Semantics3::Products;
use JSON::XS;
use Data::Dumper;
my $sem3 = Net::Semantics3::Products->new (
api_key => 'SEM39AEC188E82DC8A8DDF5D3F1BF168CFF0',
api_secret => 'YTFhNDZlOTZjN2FhNWVmMDVmMjczZTI0YjdlMjNlZTU',
);
$sem3->categories_field( "parent_cat_id", 1 );
# Make the query
my $categoriesRef = $sem3->get_categories();

my %a = (%$categoriesRef);
#$size = @($a{'results'});
$length = scalar( @{ $a{'results'} } );
for(my $index=0; $index < $length; $index++)
{
	my $b =  $a{'results'}[$index]->{'name'};
	print "1 $b";
  print " (";
  my $g =  $a{'results'}[$index]->{'cat_id'}.")"."\n";
  print "$g";
  my $h =  $a{'results'}[$index]->{'cat_id'}."\n";

# for second subcategory.
$sem3->categories_field( "parent_cat_id", $h );

my $categoriesRef = $sem3->get_categories();

my %j = (%$categoriesRef);
$length0 = scalar(@{ $j{'results'} });

for(my $index0=0; $index0 < $length0; $index0++)
{
  my $i =  $j{'results'}[$index0]->{'name'};
  print "\t 2 $i";

  print " (";
  my $k =  $j{'results'}[$index0]->{'cat_id'}.")"."\n";
  print "$k";
  my $lo =  $j{'results'}[$index0]->{'cat_id'}."\n";

# For third subcategory.
$sem3->categories_field( "parent_cat_id", $lo );

my $categoriesRef = $sem3->get_categories();

#print STDERR Dumper( $categoriesRef );
my %m = (%$categoriesRef);
$length1 = scalar(@{ $m{'results'} });

for(my $index1=0; $index1 < $length1; $index1++)
{
  my $no =  $m{'results'}[$index1]->{'name'};
  print "\t\t 3 $no";

  print " (";
  my $o =  $m{'results'}[$index1]->{'cat_id'}.")"."\n";
  print "$o";
  my $p =  $m{'results'}[$index1]->{'cat_id'}."\n";

# For fourth subcategory.
$sem3->categories_field( "parent_cat_id", $p );

my $categoriesRef = $sem3->get_categories();

my %q = (%$categoriesRef);
$length2 = scalar(@{ $q{'results'} });

for(my $index2=0; $index2 < $length2; $index2++)
{
  my $r =  $q{'results'}[$index2]->{'name'};
  print "\t\t\t 4 $r";

  print " (";
  my $s =  $q{'results'}[$index2]->{'cat_id'}.")"."\n";
  print "$s";
#my $t =  $q{'results'}[$index1]->{'cat_id'}."\n";
}
}
}
}
