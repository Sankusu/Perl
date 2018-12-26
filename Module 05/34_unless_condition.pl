#!/usr/local/bin/perl

# If the boolean expression evaluates to false, then the block of code inside the unless statement will be executed.
# If boolean expression evaluates to true then the first set of code after the end of the unless statement will be executed.

$a = 30;

# "unless" statement

# check the boolean condition using unless statement
unless($a<20) {
   # if condition is false then print the following
   printf "a is not less than 20\n";
}


# "unless...else" statement

# check the boolean condition using unless statement
unless($a<20 ) {
   # if condition is false then print the following
   printf "a is not less than 20\n";
} else { 
   # if condition is true then print the following
   printf "a is not greater than 20\n";
}


# "unless...elsif...else" statement

# check the boolean condition using if statement
unless($a==20) {
   # if condition is false then print the following
   printf "a has a value which is not 20\n";
} elsif( $a <  20 ) {
   # if condition is true then print the following
   printf "a is less than 20\n";
} else {
   # if none of the above conditions is met
   printf "a is greater than 20\n";
}


# Output:
# a is not less than 20
# a is not less than 20
# a has a value which is not 20