#!/usr/bin/perl

use DBI;
use strict;
use warnings;

my $dsn = "DBI:mysql:sys";    # Use "sys" database of MySQL
my $userid = "root";
my $password = "root";

# For a successfull connection, a handle is returned
my $dbh = DBI->connect($dsn, $userid, $password) or die DBI::errstr;
print "Connection Sucessful!!!\n";

# The question marks "?" are the placeholders that will be substituted later.
my $sql = "INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
	VALUES(?, ?, ?, ?, ?);";

# We pass the INSERT statement to the prepare() method for preparing execution.
my $sth = $dbh->prepare($sql);

# Execute the query
$sth->execute(1, 'Ravi', 30, 5, 25000) or die DBI::errstr;
$sth->execute(2, 'Paul', 32, 7, 30000) or die DBI::errstr;
$sth->execute(3, 'Rick', 45, 9, 50000) or die DBI::errstr;
$sth->execute(4, 'Mark', 45, 5, 45000) or die DBI::errstr;
$sth->execute(5, 'Bill', 22, 2, 20000) or die DBI::errstr;


# Using do statement
$dbh->do("INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
	VALUES(6, 'Jack', 27, 4, 32000);");

print "Values Inserted Successfully\n";

# Releasing statement handle.
$sth->finish();

# Disconnect from the MySQL database
$dbh->disconnect();


# Output:
# Connection Sucessful!!!
# Values Inserted Successfully


# employee table:
# emp_id	emp_name	emp_age	emp_exp	emp_salary
# 1		Ravi		30		5		25000
# 2		Paul		32		7		30000
# 3		Rick		45		9		50000
# 4		Mark		45		5		45000
# 5		Bill		22		2		20000
# 6		Jack		27		4		32000