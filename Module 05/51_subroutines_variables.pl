#!/usr/bin/perl

# Private Variables:
# By default, all variables in Perl are global variables, which means they can be accessed from anywhere in the program.
# Private variables also called as lexical variables can be created using the my operator.
# The my operator confines a variable to a particular region of code in which it can be used and accessed.
# Outside that region, this variable cannot be used or accessed.
# This region is called its scope.
# A lexical scope is usually a block of code with a set of braces around it.
# Blocks such as body of the subroutine or those marking the code blocks of if, while, for, foreach, and eval statements.


# Global variable
$string = "Hello, World!";

# Function definition
sub subroutine {
	# Private variable for subroutine function
	my $string = "Hello, Perl!";
	print "Inside the function $string\n";
}

# Function call
subroutine();
print "Outside the function $string\n\n";


# Temporary Values via local()
# The local is mostly used when the current value of a variable must be visible to called subroutines.
# A local just gives temporary values to global (meaning package) variables.
# This is known as dynamic scoping.
# If more than one variable or expression is given to local, they must be placed in parentheses.
# This operator works by saving the current values of those variables in its argument list on a hidden stack.
# Restores them upon exiting the block, subroutine, or eval.

# Important Note: 'my' creates a new variable, 'local' temporarily amends the value of a variable


# Global variable
$string = "Hello, World!";

sub PrintHello {
	# Private variable for PrintHello function
	local $string;
	$string = "Hello, Perl!";
	PrintMe();
	print "Inside the function PrintHello $string\n";
}

sub PrintMe {
	print "Inside the function PrintMe $string\n";
}

# Function call
PrintHello();
print "Outside the function $string\n\n";


# State Variables via state()
# There are another type of lexical variables, which are similar to private variables.
# They maintain their state and they do not get reinitialized upon multiple calls of the subroutines.

use feature 'state';

sub PrintCount {
	state $count = 0; # initial value

	print "Value of counter is $count\n";
	$count++;
}

for $i (1..5) {
   PrintCount();
}


# Output:
# Inside the function Hello, Perl!
# Outside the function Hello, World!

# Inside the function PrintMe Hello, Perl!
# Inside the function PrintHello Hello, Perl!
# Outside the function Hello, World!

# Value of counter is 0
# Value of counter is 1
# Value of counter is 2
# Value of counter is 3
# Value of counter is 4