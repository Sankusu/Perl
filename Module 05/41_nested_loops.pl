#!/usr/local/bin/perl

# A loop can be nested inside of another loop.
# Perl allows to nest all type of loops to be nested.

# Syntax for a nested for loop statement:
# for ( init; condition; increment ) {
# 	for ( init; condition; increment ) {
# 		statement(s);
# 	}
# 	statement(s);
# }


$a = 0;
$b = 0;

# outer while loop
while($a<3) {
	$b = 0;
	print "\nValue of a = $a\n";
	# inner while loop
	while($b<3) {
		print "value of a = $a, b = $b\n";
		$b = $b + 1;
	}
	$a = $a + 1;
}


# Output:

# Value of a = 0
# value of a = 0, b = 0
# value of a = 0, b = 1
# value of a = 0, b = 2

# Value of a = 1
# value of a = 1, b = 0
# value of a = 1, b = 1
# value of a = 1, b = 2

# Value of a = 2
# value of a = 2, b = 0
# value of a = 2, b = 1
# value of a = 2, b = 2