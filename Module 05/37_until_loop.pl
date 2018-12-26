#!/usr/local/bin/perl

# An until loop statement repeatedly executes as long as a given condition is false.

# Syntax
# until(condition) {
#    statement(s);
# }

$a = 11;

# until loop execution
until($a>20) {
   printf "Value of a: $a\n";
   $a = $a + 1;
}

# Output:
# Value of a: 11
# Value of a: 12
# Value of a: 13
# Value of a: 14
# Value of a: 15
# Value of a: 16
# Value of a: 17
# Value of a: 18
# Value of a: 19
# Value of a: 20