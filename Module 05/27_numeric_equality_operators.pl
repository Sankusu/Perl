#!/usr/local/bin/perl
 
$a = 21;
$b = 10;

print "Value of \$a = $a and value of \$b = $b\n";

if( $a == $b ) {
   print "$a == \$b is true\n";
}
else {
   print "\$a == \$b is not true\n";
}

if( $a != $b ) {
   print "\$a != \$b is true\n";
}
else {
   print "\$a != \$b is not true\n";
}


# Comparison Operator checks if the value of two operands are equal or not
# Returns -1, 0, or 1 depending on whether the left argument is numerically less than, equal to, or greater than the right argument.
$c = $a <=> $b;
print "\$a <=> \$b returns $c\n";


if( $a > $b ) {
   print "\$a > \$b is true\n";
}
else {
   print "\$a > \$b is not true\n";
}

if( $a >= $b ) {
   print "\$a >= \$b is true\n";
}
else {
   print "\$a >= \$b is not true\n";
}

if( $a < $b ) {
   print "\$a < \$b is true\n";
}
else {
   print "\$a < \$b is not true\n";
}

if( $a <= $b ) {
   print "\$a <= \$b is true\n";
} else {
   print "\$a <= \$b is not true\n";
}


# Output:
# Value of $a = 21 and value of $b = 10
# $a == $b is not true
# $a != $b is true
# $a <=> $b returns 1
# $a > $b is true
# $a >= $b is true
# $a < $b is not true
# $a <= $b is not true