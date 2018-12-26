#!/usr/bin/perl

# File Name: ChildModule.pm

package ChildModule;

use strict;
use warnings;
use Cwd;
use lib getcwd;
use parent "ParentModule";


sub sq_sum {
	my $self = shift;
	# my $self = @_;
	$self->{_sum} = $self->{_var1}**2 + $self->{_var2}**2;
}


sub display {
	my $self = shift;
	# my $self = @_;
	print "Squared Sum = $self->{_sum}\n";
}


1;


# To check the correctness of ChildModule:
# > perl -c ChildModule.pm


# Output:
# ChildModule.pm syntax OK