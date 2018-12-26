#!/usr/bin/perl

$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

# Note: For Octal Numbers, user "0" are prefix
# 377 octal, same as 255 decimal
$octal = 0377;

# Note: For Hexadecimal Numbers, use "0x" are prefix
# FF hex, also 255 decimal
$hexa = 0xff;

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

# Output:
# integer = 200
# negative = -300
# floating = 200.34
# bigfloat = -1.2e-23
# octal = 255
# hexa = 255