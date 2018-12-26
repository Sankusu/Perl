#!/usr/bin/perl

# Merging Arrays


@numbers = (1, 2, 3, (4, 5, 6));
print "\@numbers = @numbers\n";


@odd = (1, 3, 5);
@even = (2, 4, 6);

@numbers = (@odd, @even);
print "\@numbers = @numbers\n";

# Output:
# @numbers = 1 2 3 4 5 6
# @numbers = 1 3 5 2 4 6