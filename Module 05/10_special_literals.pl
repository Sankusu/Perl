#!/usr/bin/perl

use strict;
use warnings;

print "File name: ". __FILE__ . "\n";
print "Line Number: " . __LINE__ ."\n";
print "Package: " . __PACKAGE__ ."\n";

# they can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n";


# Output:
# File name: 10_special_literals.pl
# Line Number: 7
# Package: main
# __FILE__ __LINE__ __PACKAGE__
