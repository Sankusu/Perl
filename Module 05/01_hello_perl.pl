#!/usr/bin/perl

# The above line is called shebang. It specifies the location of perl interpreter

# Note: Use "$chmod 755 file_name.pl" to allow direct execution of perl script in the terminal
# $ ./file_name.pl

# $ perl -v
# To check the version of Perl

# Single line can be executed by typing 'perl -e perl_statement"' in the terminal

# In Linux:
# $ perl -e 'print "Hello World!!!\n"'

# In Windows:
# > perl -e "print \"Hello World!!!\n\""


# 'use' is an import statement for pragmas and modules.
# in this case, we are using the strict pragma which is 
# a set of restrictions that prevent us from writing obtuse code. 
# using strict will save you a lot of headaches.
use strict;
use warnings;


# Printing "Hello World" in two ways:

print "Hello World\n";			# Without parentheses
print("Hello World Again\n");	# With parentheses

# Output:
# $ perl 01_hello_perl.pl 
# Hello World
# Hello World Again