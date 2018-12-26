#!/usr/bin/perl

# Database convention for Perl:
# $dsn    Database source name
# $dbh    Database handle object
# $sth    Statement handle object


use DBI;
use strict;
use warnings;

# Data source name begins with "DBI:" and the name of the driver, in this case, it is "mysql" , followed by another colon  ":".
# It should be followed by the name of the Database being used.
my $dsn = "DBI:mysql:sys";		# Use "sys" database of MySQL
my $userid = "root";
my $password = "root";

# For a successfull connection, a handle is returned
# Otherwise $dbh is set to undef value and $DBI::errstr returns an error string
my $dbh = DBI->connect($dsn, $userid, $password) or die DBI::errstr;
print "Connection Sucessful!!!\n";

# Disconnect from the MySQL database
$dbh->disconnect();


# Output:
# Connection Sucessful!!!