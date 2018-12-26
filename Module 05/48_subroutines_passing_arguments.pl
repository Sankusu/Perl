#!/usr/bin/perl

# Arguments can be passed to a subroutine and they can be acessed inside the function using the special array @_.
# The first argument to the function is in $_[0], the second is in $_[1], and so on.


# Function definition
sub Average {
	# get total number of arguments passed.
	$n = @_;
	$sum = 0;

	foreach $item (@_) {
		$sum += $item;
	}

	$average = $sum / $n;
	print "Average for the given numbers : $average\n";
}

# Function call
Average(10, 20, 30, 40, 50);


# Different data types as arguments
# Function definition
sub PrintList {
	print "\nGiven list is @_\n\n";
}

$a = 0;
@b = (1, 2, 3, 4);

# Function call with list parameter
PrintList($a, @b);


# Passing Hash as an argument
# Function definition
sub PrintHash {
	%hash = @_;

	foreach my $key (keys %hash) {
		$value = $hash{$key};
		print "$key : $value\n";
	}
}

%data = ('Tom' => '45', 'Ravi' => 30, 'Harry' => 40);

# Function call with hash parameter
PrintHash(%data);


# Output:
# Average for the given numbers : 30

# Given list is 0 1 2 3 4

# Ravi : 30
# Tom : 45
# Harry : 40
