#!/usr/bin/perl

# Sorting Arrays:
# The sort() function sorts each element of an array.


# define an array
@foods = qw(pizza steak chicken burgers);
print "Before: @foods\n";

# sort this array
@foods = sort(@foods);
print "After: @foods\n";


@letters = qw(A F D w U d F l X H);
@letters = sort @letters;
@string = join(" ", @letters);
print @string, "\n";

@numbers = (5, 0, 1, 100, 10, 50);
@numbers = sort @numbers;
@string = join(" ", @numbers);
print @string;

# OUTPUT:
# Before: pizza steak chicken burgers
# After: burgers chicken pizza steak
# A D F F H U X d l w
# 0 1 10 100 5 50