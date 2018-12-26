#!/usr/bin/perl

# Scalar Variables
# A scalar is a single unit of data.
# That data might be an integer number, floating point, a character, a string, a paragraph, or an entire web page.
# Simply saying it could be anything, but only a single thing.

$age = 25;             # An integer assignment
$name = "John Paul";   # A string 
$salary = 1445.50;     # A floating point

print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

($name, $age) = ("Rick", 25);
print "\$name: $name, \$age: $age";

# Output:
# Age = 25
# Name = John Paul
# Salary = 1445.5
# $name: Rick, $age: 25