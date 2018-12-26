#!/usr/local/bin/perl

# A do...while loop checks its condition at the bottom of the loop.
# A do...while loop is guaranteed to execute at least one time.

# Syntax
# do {
# 	statement(s);
# } while( condition );


$a = 11;

# do...while loop execution
do{
	printf "Value of a: $a\n";
	$a = $a + 1;
} while($a<=20);


# Output:
# Value of a: 11
# Value of a: 12
# Value of a: 13
# Value of a: 14
# Value of a: 15
# Value of a: 16
# Value of a: 17
# Value of a: 18
# Value of a: 19
# Value of a: 20