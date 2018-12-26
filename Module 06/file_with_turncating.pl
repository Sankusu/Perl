#!/usr/bin/perl

# Reads, Writes, Creates and Truncates
# +>

# To truncate the file first

open DATA, "+>file.txt" or die "Couldn't open file file.txt, $!";

close DATA;