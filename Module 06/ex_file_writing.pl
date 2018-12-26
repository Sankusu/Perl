#!/usr/bin/perl

# Open and reads the file "sentences" (input file) line by line.
# Writes to the output file, "num_words" the following information:
# "The i-th line of input file consists of X words."

open (IN,"sentences.txt") || die ("can not open the input file!\n"); #open the input file
open (OUT,">num_words.txt") || die ("can not open the output file!\n"); #open the output file

$s_counter = 1; #sentence counter

#while the end of input file is not reached
while($rdln = <IN>) {
	@list=split(/\s+/, $rdln);
	$num = @list;
	print OUT ("The ", $s_counter, " line of input file consists of ", $num, " words.\n");
	$s_counter++;
}

close (IN); #close the input file
close (OUT); #close the output file


# Input (sentences.txt):
# first sentence
# a second sentence
# another simple third sentence


# Output (num_words.txt):
# The 1 line of input file consists of 2 words.
# The 2 line of input file consists of 3 words.
# The 3 line of input file consists of 4 words.