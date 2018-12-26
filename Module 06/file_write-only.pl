#!/usr/bin/perl

# Creates, Writes and Truncates
# > (Redirection operator)

# To open file.txt in writing mode.
# Here less than > sign indicates that file has to be opend in the writing mode.

open(DATA, ">ouput.txt") or die "Couldn't open file output.txt, $!";
# This example actually truncates (empties/rewrites) the file before opening it for writing.

$data1 = "Scalar Data\n";
@data2 = ("Array Data1\n", "Array Data2\n", "Array Data3\n");

# print to file
print "Writing to a file\n";
print DATA "String Data\n";
print DATA $data1;
print DATA @data2;
close DATA;


# Output:
# String Data
# Scalar Data
# Array Data1
# Array Data2
# Array Data3