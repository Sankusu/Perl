#!/usr/bin/perl 

package Person;

# Constructor
# While new is not a reserved word in Perl, most people implement the constructor as the new method.
sub new {
	my $class = shift;
	my $self = {
		_firstName => shift,
		_lastName  => shift,
		_ssn       => shift,
	};

	# Print all the values just for clarification.
	print "First Name is $self->{_firstName}\n";
	print "Last Name is $self->{_lastName}\n";
	print "SSN is $self->{_ssn}\n";
	bless $self, $class;
	return $self;
}

sub setFirstName {
	my ( $self, $firstName ) = @_;
	$self->{_firstName} = $firstName if defined($firstName);
	return $self->{_firstName};
}

sub getFirstName {
	my( $self ) = @_;
	return $self->{_firstName};
}

# The 1; at the end is needed to indicate successful loading of the file.
1;