#!/usr/bin/perl

use strict;
use warnings;


my $a=5;

print("Initial value of a: ", $a, "\n");

sub add {			#subroutine definition
	# $a = $a + 1;
	my $a = $a + 1;
	print("Value of \$a inside the subroutine: ", $a, "\n");
}

add; 				#subroutine call

print("Final value of a: ", $a, "\n");


# Output:
# Initial value of a: 5
# Value of $a inside the subroutine: 6
# Final value of a: 5
