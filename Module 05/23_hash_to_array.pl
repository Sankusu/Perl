#!/usr/bin/perl

%data = ("A", "B", "C", "D");
print "$_=>$data{$_}\n" for (keys %data);
print "\n";
@array = %data;
print "@array\n";

%data = @array;
print "$_=>$data{$_}\n" for (keys %data);
print "\n";

# OUTPUT:
# C=>D
# A=>B

# C D A B
# A=>B
# C=>D