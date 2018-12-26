#!/usr/local/bin/perl

use integer;		# Needed for NOT operation in 64 bit machine
 
$a = 60;
$b = 13;

print "Value of \$a = $a and value of \$b = $b\n";

# Binary AND Operator
$c = $a & $b;
print "Value of \$a & \$b = $c\n";

# Binary OR Operator
$c = $a | $b;
print "Value of \$a | \$b = $c\n";

# Binary XOR Operator
$c = $a ^ $b;
print "Value of \$a ^ \$b = $c\n";

# Binary NOT Operator
$c = ~$a;
print "Value of ~\$a = $c\n";
# Answer displayed in twos complement form

# Binary Left Shift Operator
$c = $a << 2;
print "Value of \$a << 2 = $c\n";

# Binary Right Shift Operator
$c = $a >> 2;
print "Value of \$a >> 2 = $c\n";


# Output:
# Value of $a = 60 and value of $b = 13
# Value of $a & $b = 12
# Value of $a | $b = 61
# Value of $a ^ $b = 49
# Value of ~$a = -61
# Value of $a << 2 = 240
# Value of $a >> 2 = 15