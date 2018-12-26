#!/usr/bin/perl

# The substitution operator, s///, allows you to replace the text matched with some new text.

# Syntax:
# s/PATTERN/REPLACEMENT/;

# The PATTERN is the regular expression for the text that we are looking for.
# The REPLACEMENT is a specification for the text or regular expression that we want to use to replace the found text with.


use strict;
use warnings;


# Replaces the first occurrence of cat with dog
my $string = "The cat sat on the mat. The cat was happy.";
print "$string\n";

$string =~ s/cat/dog/;
print "$string\n";