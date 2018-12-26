#!/usr/local/bin/perl
 
$a = "ABC";
$b = "abc";

print "Value of \$a = $a and value of \$b = $b\n";

if( $a lt $b ) {
   print "\$a lt \$b is true\n";
}
else {
   print "\$a lt \$b is not true\n";
}

if( $a gt $b ) {
   print "\$a gt \$b is true\n";
}
else {
   print "\$a gt \$b is not true\n";
}

if( $a le $b ) {
   print "\$a le \$b is true\n";
}
else {
   print "\$a le \$b is not true\n";
}

if( $a ge $b ) {
   print "\$a ge \$b is true\n";
}
else {
   print "\$a ge \$b is not true\n";
}

if( $a ne $b ) {
   print "\$a ne \$b is true\n";
}
else {
   print "\$a ne \$b is not true\n";
}

# Comparison Operator
# Returns -1, 0, or 1 depending on whether the left argument is less than, equal to, or greater than the right argument.
$c = $a cmp $b;
print "\$a cmp \$b returns $c\n";


# Output:
# Value of $a = ABC and value of $b = abc
# $a lt $b is true
# $a gt $b is not true
# $a le $b is true
# $a ge $b is not true
# $a ne $b is true
# $a cmp $b returns -1