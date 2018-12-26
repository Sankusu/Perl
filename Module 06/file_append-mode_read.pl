#!/usr/bin/perl

# Reads, Writes, Appends, and Creates
# +>>

# A double >> opens the file for appending, placing the file pointer at the end, so that you can immediately start appending information.
# However, you can't read from it unless you also place a plus sign in front of it.

open(DATA,"+>>file.txt") || die "Couldn't open file file.txt, $!";


close DATA;