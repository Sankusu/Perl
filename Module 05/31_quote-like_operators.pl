#!/usr/local/bin/perl

$a = 10;

# Encloses a string with-in single quotes (' ')
$b = q{a = $a};
print "Value of q{a = \$a} = $b\n";


# Encloses a string with-in double quotes (" ")
$b = qq{a = $a};
print "Value of qq{a = \$a} = $b\n";


# Encloses a string with-in invert quotes (` `)
# Used for unix command execution
$t = qx{date};
print "Value of qx{date} = $t\n";


# Output:
# Value of q{a = $a} = a = $a
# Value of qq{a = $a} = a = 10
# Value of qx{date} = The current date is: 25-12-2017