#!/usr/local/bin/perl

# The continue keyword can be used after the block of a loop.
# The code in the continue block is executed before the next iteration (before the loop condition is evaluated).
# It does not affect the control-flow.
 # A continue statement can be used with while and foreach loops.

my $a = 1;
while (1) {
	print "Value of a: $a\n";
}
continue {
	if ($a < 5) {
		$a++;
		} else {
	last;
	}
}


# Output:
# Value of a: 1
# Value of a: 2
# Value of a: 3
# Value of a: 4
# Value of a: 5