use strict; 
use warnings; 
 
my $inFile02 = pop; 
my %hash; 
 
while (<>) { 
	chomp; 
	my @fields = split /,/; 
	$hash{ $fields[1] } = \@fields if @fields; 
} 
 
push @ARGV, $inFile02; 
 
while (<>) { 
	chomp; 
	my @fields = split /,/; 
	next unless $hash{ $fields[1] }; 
 
	my @results; 
	for my $i ( 0 .. @fields - 1 ) { 
		push @results, "$i|$hash{ $fields[1] }[$i]|$fields[$i]" 
		  if $hash{ $fields[1] }[$i] ne $fields[$i]; 
	} 
 
	print "$.," . ( join ',', @results ) . "\n" if @results; 
}