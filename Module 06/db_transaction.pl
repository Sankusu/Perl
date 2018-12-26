#!/usr/bin/perl

use DBI;
use strict;
use warnings;

my $dsn = "DBI:mysql:sys";    # Use "sys" database of MySQL
my $userid = "root";
my $password = "root";

# RaiseError=>1	# error handling enabled
# AutoCommit=>0	# transaction enabled
my $dbh = DBI->connect($dsn, $userid, $password, {AutoCommit=>0, RaiseError=>1}) or die DBI::errstr;


eval {
	$dbh->do("INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
		VALUES(1, 'Ravi', 30, 5, 25000);");
	$dbh->do("INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
		VALUES(2, 'Paul', 32, 7, 30000);");
	$dbh->do("INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
		VALUES(3, 'Rick', 45, 9, 50000);");
	$dbh->do("INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
		VALUES(4, 'Mark', 45, 5, 45000);");
	$dbh->do("INSERT INTO employee(emp_id, emp_name, emp_age, emp_exp, emp_salary)
		VALUES(5, 'Jack', 27, 4, 32000);");
};

if($@) {
	# If there is a problem, rollback
	print "Error while inserting values\nRolling Back!!!\n";
	$dbh->rollback();
}
else {
	# If everything is OK, commit to the database
	$dbh->commit();
	print "Values Inserted Successfully!!!\n";
}

# Disconnect from the MySQL database
$dbh->disconnect();


# Input:
# employee table:
# emp_id	emp_name	emp_age	emp_exp	emp_salary
# 5			Bill		22		2		20000


# Output:
# DBD::mysql::db do failed: Duplicate entry '5' for key 'PRIMARY' at db_transaction.pl line 25.
# Error while inserting values
# Rolling Back!!!