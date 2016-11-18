use Switch;
print "Enter text here : ";
my $text = <STDIN>;
print $text;
print "Enter first char  :  ";
my $f_char = <STDIN>;
chomp $f_char;
print "\n";
print "Enter second char   :  ";
my $s_char = <STDIN>;
chomp $s_char;
print "\n";
#$text = "the QUICK brown fox jumps OVER the lazy dog";

$loc1 = index($text,$f_char);
print $loc1;
print"\n";
$loc2 = index($text,$s_char);
print $loc2;
print "\n";
print"\n";
if($loc1<$loc2)
{
    print "Options : \n";
    print "1 -> Convert the characters into UpperCase.\n";
    print "2 -> Convert the characters into LowerCase.\n";
    print "3 -> Delete Characters.\n";
    print "Enter ur choice : ";
    print "\n";
    my $var = <STDIN>;
    chomp $var;
    switch($var)
    {
            case 1 {convert_upper();}
            case 2 {convert_lower();}
            case 3 {del_sub();}
            else {print "Invalid Choice\n";}
    } 
}
else
{
	print "Invalid Locations";
}
sub convert_upper{
if($loc1<$loc2)
{
	$substr = substr $text,$loc1+1,$loc2-$loc1-1;
	$string = uc ($substr);
	$text =~ s/$substr/$string/ig;
	print $text;
}
}

sub convert_lower{
if($loc1<$loc2)
{
	$substr = substr $text,$loc1+1,$loc2-$loc1-1;
	$string = lc ($substr);
	$text =~ s/$substr/$string/ig;
	print $text;
}
}

sub del_sub{
if($loc1<$loc2)
{
	$substr = substr $text,$loc1+1,$loc2-$loc1-1;
        $text =~ s/$substr/ /ig;
	print $text;
}
}
