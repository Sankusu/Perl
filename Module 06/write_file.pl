#!/usr/bin/perl -w

use strict;
use warnings;

#We capture the first argument from the command line.... 
my $FILE_TO_WRITE = shift;

sub main {

    #We use the same open() function to open a filehandle for writing.
    #The only difference is we preface the filename to write with '>'.
    open(OUTFILE,">$FILE_TO_WRITE") or die("Can't open: $FILE_TO_WRITE\n\n");

    #we now have an open filehandle.  To write to this filehandle, we use a special
    #print commmand
    print OUTFILE  "This text is going to be written to the file\n";

    my $more_text = "Some other important text...\n\n";
    
    #this will write the contents of this variable to the file
    print OUTFILE $more_text;

    print OUTFILE "\n\nThis is the last line I'll write\n";

    #use close() to close any filehandles you have opened
    close(OUTFILE);

}

main();