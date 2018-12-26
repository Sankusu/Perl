#!/usr/bin/perl

use strict;
use warnings;

print "__PACKAGE__ = ", __PACKAGE__, "\n";


#------------------------------------------------------------------------------
# class Person
package Person;

print "__PACKAGE__ = ", __PACKAGE__, "\n";

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
	my ($self, $firstName ) = @_;
	$self->{_firstName} = $firstName if defined($firstName);
	return $self->{_firstName};
}

sub getFirstName {
	my ($self) = @_;
	return $self->{_firstName};
}


#------------------------------------------------------------------------------
# Going back to the "main" package
package main;

print "__PACKAGE__ = ", __PACKAGE__, "\n";

my $object1 = Person->new ("Mark", "Z.", 123465789);
my $object2 = new Person("Bill", "Gates", 987654321);
my $object3 = new Person("Steve", "Jobs", 654321987);

$object2->setFirstName("Melinda");
print "\$object2->getFirstName() = ", $object2->getFirstName();


#------------------------------------------------------------------------------
# OUTPUT:
# __PACKAGE__ = main
# __PACKAGE__ = Person
# __PACKAGE__ = main
# First Name is Mark
# Last Name is Z.
# SSN is 123465789
# First Name is Bill
# Last Name is Gates
# SSN is 987654321
# First Name is Steve
# Last Name is Jobs
# SSN is 654321987
# $object2->getFirstName() = Melinda