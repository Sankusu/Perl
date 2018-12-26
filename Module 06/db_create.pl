#!/usr/bin/perl

use DBI;
use strict;
use warnings;

my $dsn = "DBI:mysql:sys";		# Use "sys" database of MySQL
my $userid = "root";
my $password = "root";

# For a successfull connection, a handle is returned
my $dbh = DBI->connect($dsn, $userid, $password) or die DBI::errstr;

# The do() method of the database handle object to executes the sql queries.
# The do() method is used for executing a non-select statement that does not return a result set.

# Drop the table if already present
my $query = "DROP TABLE employee;";
$dbh->do($query);

$query = "CREATE TABLE employee (
	emp_id INT NOT NULL,
	emp_name VARCHAR(45) NULL,
	emp_age INT NULL,
	emp_exp INT NULL,
	emp_salary INT NULL,
	PRIMARY KEY (emp_id));";

# Execute the query to create the Table
$dbh->do($query);

# Disconnect from the MySQL database
$dbh->disconnect();


# Output:
# employee table:
# emp_id	emp_name	emp_age	emp_exp	emp_salary