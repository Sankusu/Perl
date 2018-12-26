#!/usr/bin/perl

use DBI;
use strict;
use warnings;

my $dsn = "DBI:mysql:sys";		# Use "sys" database of MySQL
my $userid = "root";
my $password = "root";

# For a successfull connection, a handle is returned
my $dbh = DBI->connect($dsn, $userid, $password) or die DBI::errstr;

my $query = "DELETE FROM employee WHERE emp_age > ?;";

my $sth = $dbh->prepare($query);

# Execute the query
$sth->execute(40) or die DBI::errstr;

$sth->finish();


# Using do statement
$dbh->do("DELETE FROM employee WHERE emp_age > 30;");

# Disconnect from the MySQL database
$dbh->disconnect();


# Output:
# employee table:
# emp_id	emp_name	emp_age	emp_exp	emp_salary
# 1			Ravi		30		5		25000
# 5			Bill		22		2		20000
# 6			Jack		27		4		32000