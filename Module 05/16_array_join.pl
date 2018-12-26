#!/usr/bin/perl

use strict;
use warnings;

my $string = join(" ", ("P", "E", "R", "L"));
print $string, "\n";

$string = join("", ("P", "E", "R", "L"));
print $string, "\n";

# split() and join() together
my $str = "PERL";
my $temp = join(" ", split(//, $str));
print $temp;


# OUTPUT:
# P E R L
# PERL
# P E R L