#!/usr/local/bin/perl

# The ? : Operator:
# the conditional operator ? : which can be used to replace if...else statements.
# Syntax:
# Exp1 ? Exp2 : Exp3;

# Exp1 is evaluated. If it is true, then Exp2 is evaluated and becomes the value of the entire ? expression.
# If Exp1 is false, then Exp3 is evaluated and its value becomes the value of the expression.

$name = "Ali";
$age = 20;

$status = ($age > 60 ) ? "a senior citizen" : "not a senior citizen";

print "$name is $status.\n";

# Output:
# Ali is not a senior citizen.