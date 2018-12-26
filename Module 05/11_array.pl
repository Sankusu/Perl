#!/usr/bin/perl

@ages = (25, 30, 40);             
@names = ("John Paul", "Lisa", "Kumar");
@random = (000, 1, 1.5, 2.0, 5.0005, "00", "String", @ages, @names);

print "\@ages = @ages\n";
print "\@names = @names\n";
print "\@random = @random\n";

# Assigning an array to scalar will return length of the array
$length = @ages;

print "Length of \@ages = $length\n";

# Last Index
print "Last index of \@ages = $#ages\n";

# Output:
# @ages = 25 30 40
# @names = John Paul Lisa Kumar
# @random = 0 1 1.5 2 5.0005 00 String 25 30 40 John Paul Lisa Kumar
# Length of @ages = 3
# Last index of @ages = 2
