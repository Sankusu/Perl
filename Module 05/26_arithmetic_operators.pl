#!/usr/local/bin/perl
 
$a = 2;
$b = 4;

print "Value of \$a = $a and value of \$b = $b\n";

$c = $a + $b;
print 'Value of $a + $b = ' . $c . "\n";

$c = $a - $b;
print 'Value of $a - $b = ' . $c . "\n";

$c = $a * $b;
print 'Value of $a * $b = ' . $c . "\n";

$c = $a / $b;
print 'Value of $a / $b = ' . $c . "\n";

$c = $a % $b;
print 'Value of $a % $b = ' . $c. "\n";

$c = $a ** $b;
print 'Value of $a ** $b = ' . $c . "\n";



$a = 4;
$c = 2;

print "Value of \$a = $a and \$c = $c\n";

$c += $a;
print "Value of \$c = $c after statement \$c += \$a\n";

$c -= $a;
print "Value of \$c = $c after statement \$c -= \$a\n";

$c *= $a;
print "Value of \$c = $c after statement \$c *= \$a\n";

$c /= $a;
print "Value of \$c = $c after statement \$c /= \$a\n";

$c %= $a;
print "Value of \$c = $c after statement \$c %= \$a\n";

$c **= $a;
print "Value of \$c = $c after statement \$c **= \$a\n";

# Output:
# Value of $a = 2 and value of $b = 4
# Value of $a + $b = 6
# Value of $a - $b = -2
# Value of $a * $b = 8
# Value of $a / $b = 0.5
# Value of $a % $b = 2
# Value of $a ** $b = 16
# Value of $a = 4 and $c = 2
# Value of $c = 6 after statement $c += $a
# Value of $c = 2 after statement $c -= $a
# Value of $c = 8 after statement $c *= $a
# Value of $c = 2 after statement $c /= $a
# Value of $c = 2 after statement $c %= $a
# Value of $c = 16 after statement $c **= $a