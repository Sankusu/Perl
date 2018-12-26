#!/usr/local/bin/perl

# The Perl next statement starts the next iteration of the loop.
# You can provide a LABEL with next statement where LABEL is the label for a loop.

# Syntax:
# next [ LABEL ];
# A LABEL field is optional.
# If a LABEL is not specified, then control will jump to the next iteration of the nearest loop.
# A next statement jumps to the end of the block i.e. the closing brace }


$a = 10;
while( $a < 20 ) {
	if( $a == 15) {
		# skip the iteration.
		$a = $a + 1;
		next;
	}
    print "Value of a: $a\n";
    $a = $a + 1;
}


$a = 0;
LOOP: while( $a < 4 ) {
	$b = 0;
    print "\nValue of a: $a\n";
    while ( $b < 4) {
    	if( $a == 2) {
        	$a = $a + 1;
        	# jump to the label LOOP
        	next LOOP;
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
# Value of a: 16
# Value of a: 17
# Value of a: 18
# Value of a: 19

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

# Value of a: 3
# Value of b : 1
# Value of b : 2
# Value of b : 3
# Value of b : 4