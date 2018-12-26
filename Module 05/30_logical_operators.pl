#!/usr/local/bin/perl
 
$a = 1;
$b = 0;

print "Value of \$a = $a and value of \$b = $b\n";

$c = ($a and $b);
print "Value of \$a and \$b = $c\n";

$c = ($a && $b);
print "Value of \$a && \$b = $c\n";

$c = ($a or $b);
print "Value of \$a or \$b = $c\n";

$c = ($a || $b);
print "Value of \$a || \$b = $c\n";

$c = not($a);
print "Value of not(\$a)= $c\n";


# Output:
# Value of $a = 1 and value of $b = 0
# Value of $a and $b = 0
# Value of $a && $b = 0
# Value of $a or $b = 1
# Value of $a || $b = 1
# Value of not($a)= 1