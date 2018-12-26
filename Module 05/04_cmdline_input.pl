#!/usr/bin/perl

use strict;
use warnings;

my $arg1 = shift;	# takes the first argument
my $arg2 = shift;	# takes the second argument

print "The first argument is: $arg1\n";
print "The second argument is: $arg2\n";


# OUTPUT:
# perl 04_cmdline_input.pl Hello Perl
# The first argument is: Hello
# The second argument is: Perl