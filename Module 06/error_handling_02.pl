#!/usr/bin/perl

use strict;

my $USER_IN = shift;

sub main {

    # using IF/ELSE blocks, you can construct simple error handling checks of any variables.

    if (length($USER_IN) > 10) {
	# Die will print the message you give it, and the script will stop executing.
	die("\n\t[Error ]:  The argument you enteed has > 10 characters!\n\n");
    } elsif (length($USER_IN) < 5) {
	# warn will print the warning, but the script will continue to run.
	warn("\n\t[Warning]: The argument has < 5 characters\n\n");
    } else {
	# no problem the value is between 5 and 10!
	print "\nYour input is OK, it has  between 5 and 10 chars!\n\n";
    }
print "The script is done executing the code in this method\n";
}

main();
print "End of Script\n";