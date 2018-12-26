#!/usr/bin/perl -w

use strict;

#We capture the first argument from the command line.... 
my $FILE_TO_WRITE = shift;

sub main {

    #We use the same open() function to open a filehandle for appending
    #text to the end....
    #The onle difference is we preface the filename to write with '>>'.
    open(OUTFILE,">>$FILE_TO_WRITE") or die("Can't open: $FILE_TO_WRITE\n\n");

    #we now have an open filehandle.  To write to this filehandle, we use a special
    #print commmand
    print OUTFILE  "We are appending this text to the end of a file...\n";


    #use close() to close any filehandles you have opened
    close(OUTFILE);

}

main();
