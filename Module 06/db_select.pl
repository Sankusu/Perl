#!/usr/bin/perl

use DBI;
use strict;
use warnings;

my $dsn = "DBI:mysql:sys";		# Use "sys" database of MySQL
my $userid = "root";
my $password = "root";

# For a successfull connection, a handle is returned
my $dbh = DBI->connect($dsn, $userid, $password) or die DBI::errstr;

my $query = "SELECT emp_name, emp_age, emp_salary FROM employee WHERE emp_age > ?;";

my $sth = $dbh->prepare($query);

# Execute the query
$sth->execute(25) or die DBI::errstr;

while(my @row = $sth->fetchrow_array()) {
	printf("$row[0]($row[1]) has salary = $row[2]\$\n");
}

$sth->finish();

# Disconnect from the MySQL database
$dbh->disconnect();


# Output:
# Ravi(30) has salary = 25000$
# Paul(32) has salary = 30000$
# Rick(45) has salary = 50000$
# Mark(45) has salary = 45000$
# Jack(27) has salary = 32000$