#!/usr/bin/perl

# Reads and Writes
# +<

# To open a file for updating without truncating it −

open(DATA, "+<file.txt"); or die "Couldn't open file file.txt, $!";

close DATA;