#!/usr/bin/perl

# Adding and Removing Elements in Array:


# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins  = @coins\n";

# remove one element from the last of the array.
pop(@coins);
print "4. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins  = @coins\n";


# Output:
# 1. @coins  = Quarter Dime Nickel
# 2. @coins  = Quarter Dime Nickel Penny
# 3. @coins  = Dollar Quarter Dime Nickel Penny
# 4. @coins  = Dollar Quarter Dime Nickel
# 5. @coins  = Quarter Dime Nickel
