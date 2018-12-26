#!/usr/bin/perl

# Array Creation
# Array variables are prefixed with the @ sign and are populated using either parentheses or the qw operator.

@array = (1, 2.5, 2, 'Hello');

print "\@array[1] = @array[1]\n";

@split = qw/This is an array/;		#returns a list of strings, separating the delimited string by white space.

@days = qw/Sunday
Monday
Tuesday
Wednesday
Thursday
Friday
Saturday/;

# Individually creating array elements.
$months[0] = 'January';
$months[1] = 'February';
$months[2] = 'March';

print "\@array = @array\n";
print "\@split = @split\n";
print "\@days = @days\n";
print "\@months = @months\n";

print "\$days[0] = $days[0]\n";
print "\$days[1] = $days[1]\n";
print "\$days[2] = $days[2]\n";
print "\$days[6] = $days[6]\n";
print "\$days[-1] = $days[-1]\n";
print "\$days[-7] = $days[-7]\n";

# Sequential Number Arrays:
@var_10 = (1..10);				# numbers from 1 to 10
@var_20 = (10..20);				# numbers from 10 to 20
@var_abc = (a..z);				# letters from a to z

print "\@var_10 = @var_10\n";
print "\@var_20 = @var_20\n";
print "\@var_abc = @var_abc\n";

# Using split function (Scalar to Array):
$var_string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

# transform above strings into arrays.
@string = split('-', $var_string);
@names  = split(',', $var_names);

print "\@string: @string\n";
print "\@names: @names\n";

# transform an array to string.
$string = join(" ", @string);
print "\$string: $string\n";


# Output:
# @array[1] = 2.5
# @array = 1 2.5 2 Hello
# @split = This is an array
# @days = Sunday Monday Tuesday Wednesday Thursday Friday Saturday
# @months = January February March
# $days[0] = Sunday
# $days[1] = Monday
# $days[2] = Tuesday
# $days[6] = Saturday
# $days[-1] = Saturday
# $days[-7] = Sunday
# @var_10 = 1 2 3 4 5 6 7 8 9 10
# @var_20 = 10 11 12 13 14 15 16 17 18 19 20
# @var_abc = a b c d e f g h i j k l m n o p q r s t u v w x y z
# @string: Rain Drops On Roses And Whiskers On Kittens
# @names: Larry David Roger Ken Michael Tom
# $string: Rain Drops On Roses And Whiskers On Kittens