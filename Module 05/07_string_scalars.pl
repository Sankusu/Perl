#!/usr/bin/perl

$var = "This is string scalar!";
$quote = 'I m inside single quote: $var';
$double = "This is inside double quotes: $var";

$escape = "This example of escape: \tHello, World!";

$string = 'This is
a multiline
string';

print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";
print "string = $string\n"


# Output:
# var = This is string scalar!
# quote = I m inside single quote: $var
# double = This is inside double quotes: This is string scalar!
# escape = This example of escape: 	Hello, World!
# string = This is
# a multiline
# string