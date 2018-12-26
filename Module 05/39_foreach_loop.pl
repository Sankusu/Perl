#!/usr/local/bin/perl

# The foreach loop iterates over a list value.
# Also sets the control variable (var) to be each element of the list in turn.

# Syntax:
# foreach var (list) {
# ...
# }


@list = (2, 3, 5, 7, 11, 13, 17, 19);

# foreach loop execution
foreach $a (@list) {
	print "Value of a: $a\n";
}

# Output:
# Value of a: 2
# Value of a: 3
# Value of a: 5
# Value of a: 7
# Value of a: 11
# Value of a: 13
# Value of a: 17
# Value of a: 19