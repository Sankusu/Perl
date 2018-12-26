#!/usr/bin/perl

# File Name: ParentModule.pm

package ParentModule;

use strict;
use warnings;


sub new {
	my $class = shift;
	my $self = {
		_var1 => shift || 0,
		_var2 => shift || 0,
		_sum => 0
	};
	bless $self, $class;
	return $self;
}


sub set_value {
	my $self = shift;
	$self->{_var1} = shift || 0;
	$self->{_var2} = shift || 0;
}


sub get_value {
	my $self = shift;
	# my $self = @_;
	print "Var1 = $self->{_var1}, Var2 = $self->{_var2}\n";
}


sub sum {
	my $self = shift;
	# my $self = @_;
	$self->{_sum} = $self->{_var1} + $self->{_var2};
}


sub display {
	my $self = shift;
	# my $self = @_;
	print "Sum = $self->{_sum}\n";
}

# The new destructor method, called automatically by Perl
sub DESTROY {
	my $self = shift;
	# my $self = @_;
    print "All the garbage have been collected!\n";
}


1;

# To check the correctness of ParentModule:
# > perl -c ParentModule.pm


# Output:
# ParentModule.pm syntax OK