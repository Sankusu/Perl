#!/usr/bin/perl


# Extract slices from an array
%data = ("John" => 45, "Lisa" => 30, "Ravi" => 40);

@array = @data{"John", "Lisa"};

print "Array : @array\n";


# Extracting a list of all of the keys
# Syntax:
# keys %HASH

@names = keys %data;

print "Keys: @names\n";


# Extracting a list of all the values
# Syntax:
# values %HASH

@ages = values %data;

print "Values: @ages\n";

# Checking for Existence
# If a hash that doesn't exist, normally an undefined value is received.
# If warnings are switched on, then a warning will generated at run time.
# This can checked by using the exists function, which returns true if the named key exists.
if( exists($data{'Lisa'} ) ) {
   print "Lisa is $data{'Lisa'} years old\n";
} else {
   print "I don't know age of Lisa\n";
}


# Output:
# Array : 45 30
# Keys: John Ravi Lisa
# Values: 45 40 30
# Lisa is 30 years old
