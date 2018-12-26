#!/usr/bin/perl

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";
print "\n";


# Creating pairs individually
$data{'John Paul'} = 45;
$data{'Lisa'} = 30;
$data{'Kumar'} = 40;

print "$_ $data{$_}\n" for (keys %data);
print "\n";

# Also "=>:" can be used as an alias for ","
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

print "$_ $data{$_}\n" for (keys %data);
print "\n";

# Using hyphen "-"
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
# Important Note: there is a single word, i.e., without spaces keys have been used
# If hashes are build-up this way then keys will be accessed using hyphen only as shown below.

$val = %data{-JohnPaul};
print "\n\$val = $val";
$val = %data{-Lisa};
print "\n\$val = $val";

# Assigning Hash to scalar
$length = %data;
print "\nLength of \%data = $length\n";


# Output:
# $data{'John Paul'} = 45
# $data{'Lisa'} = 30
# $data{'Kumar'} = 40
# Lisa30Kumar40John Paul45
# John Paul45Kumar40Lisa30
# $val = 45
# $val = 30
# Length of %data = 3