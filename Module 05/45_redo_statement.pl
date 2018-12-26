#!/usr/local/bin/perl

# The redo command restarts the loop block without evaluating the condition again.
# A LABEL with redo statement is the label for a loop.
# A redo statement will be applicable to the nearest loop if a LABEL is not specified
# A redo statement jumps to the beginning of the block i.e. the opening brace {

# Syntax:
# redo [LABEL]


$a = 0;
while($a < 10) {
	if( $a == 9 ) {
		$a = $a + 1;
		redo;
	}
	print "Value of a = $a\n";
	$a = $a + 1;
}


# Output:
# Value of a = 0
# Value of a = 1
# Value of a = 2
# Value of a = 3
# Value of a = 4
# Value of a = 5
# Value of a = 6
# Value of a = 7
# Value of a = 8
# Value of a = 10
