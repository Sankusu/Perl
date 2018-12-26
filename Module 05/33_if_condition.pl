#!/usr/local/bin/perl


# If the boolean expression evaluates to true then the block of code inside the if statement will be executed.
# If boolean expression evaluates to false then the first set of code after the end of the if statement (after the closing curly brace) will be executed.

# The number 0, the strings '0' and "" , the empty list (), and undef are all false in a boolean context and all other values are true.
# Negation of a true value by ! or not returns a special false value.

$a = 10;

# "if" statement

# check the boolean condition using if statement
if($a < 20) {
   # if condition is true then print the following
   printf "a is less than 20.\n";
}

# checking for 0
if($a) {
   # if condition is true then print the following
   printf "a is not 0.\n";
}


# "if...else" statement

# check the boolean condition using if statement
if($a<20) {
	# if condition is true then print the following
	printf "a is less than 20.\n";
} else {
	# if condition is false then print the following
	printf "a is greater than 20.\n";
}


# "if...elsif...else" statement

# check the boolean condition using if statement
if( $a  ==  20 ) {
	# if condition is true then print the following
	printf "a has a value which is 20.\n";
} elsif( $a < 20 ) {
	# if condition is true then print the following
	printf "a is less than 20.\n";
} else {
	# if none of the above conditions is true
	printf "a is greater than 20.\n";
}


# Output:
# a is less than 20.
# a is not 0.
# a is less than 20.
# a is less than 20.