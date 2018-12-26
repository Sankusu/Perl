#!/usr/local/bin/perl

$a = "abc";
$b = "def";

print "Value of \$a  = $a and value of \$b = $b\n";

# Binary operator dot (.) concatenates two strings
$c = $a . $b;
print "Value of \$a . \$b = $c\n";


# The repetition operator x
# Returns a string consisting of the left operand repeated the number of times specified by the right operand
$c = "-" x 3;
print "Value of \"-\" x 3 = $c\n";

# The range operator ..
# Returns a list of values counting (up by ones) from the left value to the right value
@c = (2..5);
print "Value of (2..5) = @c\n";

$a = 10;
$b = 15;
print "Value of \$a  = $a and value of \$b = $b\n";


# Auto Increment operator increases integer value by one
$a++;
$c = $a ;
print "Value of \$a after \$a++ = $c\n";


# Auto Decrement operator decreases integer value by one
$b--;
$c = $b ;
print "Value of \$b after \$b-- = $c\n";


# Auto Increment operator increases integer value by one
++$a;
$c = $a ;
print "Value of \$a after ++\$a = $c\n";


# Auto Decrement operator decreases integer value by one
--$b;
$c = $b ;
print "Value of \$b after --\$b = $c\n";

# ->
# The arrow operator is mostly used in dereferencing a method or variable from an object or a class name
# Example − $obj->$a is an example to access variable $a from object $obj.


# Output:
# Value of $a  = abc and value of $b = def
# Value of $a . $b = abcdef
# Value of "-" x 3 = ---
# Value of (2..5) = 2 3 4 5
# Value of $a  = 10 and value of $b = 15
# Value of $a after $a++ = 11
# Value of $b after $b-- = 14
# Value of $a after ++$a = 12
# Value of $b after --$b = 13