#!/usr/bin/perl

use strict;
use warnings;


my $in = "perl for Win64";							# sets the string to be searched

if ($in =~ /perl/)		{ print "Found perl\n" };       # is 'perl' inside $in ?  $in is "perl for Win64".
if ($in =~ /PeRl/)		{ print "Found PeRl\n" };       # this will fail because of case sensitivity
if ($in =~ /er/)		{ print "Found er\n" };         # this will work, because there is an 'er' in 'perl'
if ($in =~ /n6/)		{ print "Found n3\n" };         # this will work, because there is an 'n6' in 'Win64'
if ($in =~ /win64/)		{ print "Found win64\n" };      # this will fail because of case sensitivity
if ($in =~ /win64/i)	{ print "Found win64 (i)\n" };  # this will *work* because of case insensitivity (note the /i)

print "Found!\n"  if $in =~ / /;						# another way of doing it, this time looking for a space

print "Found!!\n" unless $_!~/ /;					# both these are the same, but reversing the logic with unless and !
print "Found!!\n" unless    !/ /;				# don't do this, it will always never not confuse nobody :-)
												# the ~ stays the same, but = is changed to ! (negation)

my $find=64;                                    # Create some variables to search for
my $find2=" for ";                              # some spaces in the variable too

if (/$find/)  { print "Found '$find'\n" };      # you can search for variables like numbers
if (/$find2/) { print "Found '$find2'\n" };     # and of course strings !

print "Found $find2\n" if /$find2/;           	# different way to do the above