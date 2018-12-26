#!/usr/bin/perl

use strict;
use warnings;

#This is how we get arguments from the command line...
my $FIRST_ARG = shift;
my $SECOND_ARG = shift;

main();


sub main {

    #We print the arguments which were captured above on newlines
    print "\nThe First Argument is: $FIRST_ARG\n";
    print "The Second Argument is: $SECOND_ARG\n";


    #get the number of characters in the arguments
    my $first_arg_len = length($FIRST_ARG);
    my $second_arg_len = length($SECOND_ARG);

    #check if their length is < 10, exit with an error if true
    if ($first_arg_len < 10) {
	die("---Error:  the first argument has < 10 characters!\n\n");
    }

    if ($second_arg_len < 10) {
	die("---Error:  the second argument has < 10 characters!\\n\n");
    }


    #get the 5th-10th characters
    my $substr_1st_arg = substr($FIRST_ARG,4,5);
    my $substr_2nd_arg = substr($SECOND_ARG,4,5);

    #print these characters
    print "Characters 5-10 of arg1: $substr_1st_arg\n";
    print "Characters 5-10 of arg2: $substr_2nd_arg\n";
    
    #reveser the argument strings & print
    my $rev_1 = reverse($FIRST_ARG);
    my $rev_2 = reverse($SECOND_ARG);

    print "Rev1: $rev_1\n";
    print "Rev2: $rev_2\n";

    #check if first 5 characters contains hello
    my $first_five_chars = substr($FIRST_ARG,0,5);
    if ($first_five_chars eq "hello") {
	print "THe first arg starts with hello!\n";
    } else {
		print "THe first arg does NOT start with hello!  $first_five_chars\n";

    }

    #note, this is simplified using regular expressions.... 
    ##we don't have to do the substring step at all...
    if ($FIRST_ARG =~ /^hello/) {
	print "THe first arg starts with hello!\n";
    } else {
	print "THe first arg does NOT start with hello!  $FIRST_ARG\n";
	
    }
}
