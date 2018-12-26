#!/usr/bin/perl

# Slicing Array Elements
# To extract a "slice" from an array to produce another array.

@days = qw/Sun Mon Tue Wed Thu Fri Sat/;

@weekdays = @days[1, 2, 3, 4, 5];

print "@weekdays\n";

@weekdays = @days[1..5];

print "@weekdays\n";


# Replacing Array Elements
# splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]
# Remove the elements of @ARRAY designated by OFFSET and LENGTH, and replaces them with LIST, if specified.
# Finally, it returns the elements removed from the array.

@nums = (1..15);
print "Before: @nums\n";

splice(@nums, 5, 5, 21..25);
print "After: @nums\n"


# Output:
# Mon Tue Wed Thu Fri
# Mon Tue Wed Thu Fri
# Before: 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
# After: 1 2 3 4 5 21 22 23 24 25 11 12 13 14 15