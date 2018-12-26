#!/usr/local/bin/perl

# A last statement immediately terminates the loop.
# The program control resumes at the next statement following the loop.
# A LABEL with last statement where LABEL is the label for a loop.
# A last statement is applicable to the nearest loop if a LABEL is not specified.

# Syntax:
# last [LABEL];


$a = 10;
while( $a < 20 ) {
	if( $a == 15) {
		# terminate the loop.
		$a = $a + 1;
		last;
	}
	print "Value of a: $a\n";
	$a = $a + 1;
}


$a = 0;
OUTER: while( $a < 4 ) {
	$b = 0;
	print "\nValue of a: $a\n";
	INNER: while ( $b < 4) {
		if( $a == 2) {
			# terminate outer loop
			last OUTER;
		}
	$b = $b + 1;
	print "Value of b : $b\n";
	}
	print "\n";
	$a = $a + 1;
}


# Output:
# Value of a: 10
# Value of a: 11
# Value of a: 12
# Value of a: 13
# Value of a: 14

# Value of a: 0
# Value of b : 1
# Value of b : 2
# Value of b : 3
# Value of b : 4


# Value of a: 1
# Value of b : 1
# Value of b : 2
# Value of b : 3
# Value of b : 4


# Value of a: 2