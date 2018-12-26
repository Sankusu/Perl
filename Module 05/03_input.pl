#!/usr/bin/perl

print "Enter your name: ";
$name = <STDIN>;
print "Enter subject: ";
$subject = <>;
chomp $name;
print "Hello $name, welcome to $subject!!!\n";

# The chomp() function will remove (usually) any newline character from the end of a string.

print "Enter some input:\n";
while (my $text = <STDIN>) {
	chomp($text);
	print "You entered '$text'\n";
	last if ($text eq '');
}

$flag = 0;
exit 0 if $flag==0;
print "This line will not be printed";


# OUTPUT:
# Enter your name: Bill
# Enter subject: OSTL
# Hello Bill, welcome to OSTL
# !!!
# Enter some input:
# hi
# You entered 'hi'
# hello
# You entered 'hello'

# You entered ''