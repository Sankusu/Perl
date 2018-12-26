#/user/bin/perl

# The Translation Operator
# Translation is similar, to the principles of substitution, but unlike substitution, translation (or transliteration) does not use regular expressions for its search on replacement values. The translation operators are −

# Syntax:
# tr/SEARCHLIST/REPLACEMENTLIST/cds
# y/SEARCHLIST/REPLACEMENTLIST/cds

# The translation replaces all occurrences of the characters in SEARCHLIST with the corresponding characters in REPLACEMENTLIST.


use strict;
use warnings;


my $string = "The cat sat on the mat. The cat was happy.";
print "$string\n";

$string =~ tr/cat/dog/;
print "$string\n";

$string =~ tr/a-z/A-Z/;
print "$string\n";

$string =~ tr/A-Z/a-z/;
print "$string\n";


# Translation Operator Modifiers
# c		Complements SEARCHLIST.
# d		Deletes found but unreplaced characters.
# s		Squashes duplicate replaced characters.


# The /d modifier deletes the characters matching SEARCHLIST that do not have a corresponding entry in REPLACEMENTLIST.
$string = "The cat sat on the mat. The cat was happy.";
$string =~ tr/a-z/b/d;
print "$string\n";


# The last modifier, /s, removes the duplicate sequences of characters that were replaced.
$string = 'soup is delicioouuussss.';
$string =~ tr/a-z/a-z/s;

print "$string\n";