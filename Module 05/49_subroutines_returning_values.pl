#!/usr/bin/perl

# return statement can be used to return a value from subroutine.
# If return statement is absent then whatever calculation is last performed is automatically also the return value.

# Function definition
sub Average {
	# get total number of arguments passed
	$n = @_;
	$sum = 0;

	foreach $item (@_) {
		$sum += $item;
	}
	
	$average = $sum / $n;
#	By default this will be returned since it is the last calculated value

	return $average;
}

# Function call
$num = Average(10, 20, 30, 40, 50);
print "Average for the given numbers : $num\n";



#Definition of a subroutine with two arguments.
sub add {
	my $a = $_[0];  # 1st arg.
	my $b = $_[1];  # 2nd arg.
	# in order to take the 2 arguments, we can also write:
	# my ($a,$b) = @_; #the list of arguments
	my $c = $a + $b;
	return $c;
}

$res = add(5,10); #subroutine call with 2 arguments
print ("Result: ", $res);


# Output:
# Average for the given numbers : 30
# Result: 15