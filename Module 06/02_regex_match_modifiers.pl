#!/usr/bin/perl

# The match operator supports its own set of modifiers.
# i		Makes the match case insensitive.
# m		Specifies that if the string has newline or carriage return characters, the ^ and $ operators will now match against a newline boundary, instead of a string boundary.
# o		Evaluates the expression only once.
# s		Allows use of . to match a newline character.
# x		Allows you to use white space in the expression for clarity.
# g		Globally finds all matches.
# cg	Allows the search to continue even after a global match fails.

use strict;
use warnings;


# print "Enter a String: ";
# chomp (my $in = <STDIN>);
my $in = "Hello World";

# "/i" to make the regex case insensitive.
if ($in =~ /world/i) {
	print "Match Found!!!\n";
}
else {
	print "No Match Found!!!\n";
}


# Matching Only Once
# There is also a simpler version of the match operator - the ?PATTERN? operator.
# This is basically identical to the m// operator except that it only matches once within the string you are searching between each call to reset.

my @list = qw/food foosball subbuteo monopoly footnote tenderfoot catatonic footbrdige/;
my $first;
my $last;

foreach (@list) {
	$first = $1 if /(foo.*?)/;
	$last = $1 if /(foo.*)/;
}

print "First: $first, Last: $last\n";


# Regular Expression Variables
# Regular expression variables include $, which contains whatever the last grouping match matched.
# $&, which contains the entire matched string; $`, which contains everything before the matched string.
# $', which contains everything after the matched string.

my $string = "The food is in the salad bar";
$string =~ m/foo/;
print "Before: $`\n";
print "Matched: $&\n";
print "After: $'\n";