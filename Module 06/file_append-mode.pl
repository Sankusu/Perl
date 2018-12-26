#!/usr/bin/perl


# Writes, Appends and Creates
# >>

# To pen a file in the append mode.
# In this mode, writing point will be set to the end of the file.

open(DATA,">>file.txt") || die "Couldn't open file file.txt, $!";

close DATA;