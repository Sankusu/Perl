#!/usr/local/bin/perl

# The goto LABEL form jumps to the statement labeled with LABEL and resumes execution from there.


$a = 11;

LOOP: do {
	if($a==15) {
		# skip the iteration
		$a = $a + 1;
		# use goto LABEL form
		goto LOOP;
	}
	print "Value of a = $a\n";
	$a = $a + 1;
} while($a<=20);



# Output:
# Value of a = 11
# Value of a = 12
# Value of a = 13
# Value of a = 14
# Value of a = 16
# Value of a = 17
# Value of a = 18
# Value of a = 19
# Value of a = 20
