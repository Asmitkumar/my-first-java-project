use JSON;
use Data::Dumper;
use lib("/usr/local/lib/perl");

open my $fh, "<", "builtwith_com.json";
 
 my $csv = Text::CSV_XS->new ({
     #'quote_char'  => '',
     #'escape_char' => '',
     'sep_char'    => "\t",
     'binary'      => 1
 }) or
     die "Cannot use CSV: ".Text::CSV_XS->error_diag ();
$csv->eol ("\r\n");
     open my $f, ">:encoding(utf8)", "data.csv" or die "data.csv: $!"; 

use Text::CSV_XS;
my @headers = qw/
url
framework
ecommerce
Analytics
/;

$csv->print($f, $_) for \@headers;
while(my $json = <$fh>)
{
	my @rows;
	my $data = decode_json($json);

if($data->{'url'}){

	$data->{'url'} =~ s/.*\/([\w\-]*).*/$1/s;

	push(@rows,$data->{'url'});

}	
if($data->{'site_tools'}{'Frameworks'}){
	push(@rows,join(',',keys $data->{'site_tools'}{'Frameworks'}));

}
else{
	push(@rows,"");
}
if($data->{'site_tools'}{'Ecommerce'}){
	push(@rows,join(',',keys $data->{'site_tools'}{'Ecommerce'}));
}
else{
	push(@rows,"");
}

if($data->{'site_tools'}{'Analytics and Tracking'}){
	push(@rows,join(',',keys $data->{'site_tools'}{'Analytics and Tracking'}));
}
else{
	push(@rows,"");
}

#print STDERR Dumper @rows;
#exit;
$csv->print ($f, $_) for \@rows;

}
close $fh or die "data.csv: $!";
close $fh;