#!/usr/bin/perl

use strict;
use warnings;

my @numbers = (5, 0, 1, 100, 10, 50);
print "Original Order: ", join(" ", @numbers);

@numbers = sort {$a <=> $b} @numbers;
print "\nAscending Order: ", join(" ", @numbers);

@numbers = sort {$b <=> $a} @numbers;
print "\nDescending Order: ", join(" ", @numbers);

# OUTPUT:
# Original Order: 5 0 1 100 10 50
# Ascending Order: 0 1 5 10 50 100
# Descending Order: 100 50 10 5 1 0