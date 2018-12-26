#!/usr/bin/perl

# Opens and reads the file "sentences" (input file) line by line.
# For the i-th sentence of input file, finds the i-th word and prints it to the screen


open (IN, "sentences.txt") || die ("can not open the input file!\n"); #open the input file
$s_counter=0; # sentence counter 

# while the end of input file is not reached
while($rdln = <IN>) {
	@list = split(/\s+/, $rdln);
	print($list[$s_counter], "\n");
	$s_counter++;
}

close (IN); #close the input file


# Input (sentences.txt):
# first sentence
# a second sentence
# another simple third sentence


# Output:
# first
# second
# third