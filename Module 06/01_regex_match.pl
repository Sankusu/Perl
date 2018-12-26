#!/usr/bin/perl

# A regular expression or regex is a string of characters that defines the pattern or patterns you are viewing.
# The patterns typed into a search engine to find web pages and the patterns used to list files in a directory, e.g., "ls *.txt" or "dir *.*". 
# The basic method for applying a regular expression is to use the pattern binding operators "=~" and "!~".
# The first operator is a test and assignment operator.

# There are three regular expression operators within Perl:
# 1. Match Regular Expression - m//
# 2. Substitute Regular Expression - s///
# 3. Transliterate Regular Expression - tr///

# The forward slashes in each case act as delimiters for the regex that you are specifying.


# The Match Operator
# The match operator, m//, is used to match a string or statement to a regular expression.
# "Hello World" =~ m/World/;  # matches
# Any combination of naturally matching characters can be used to act as delimiters for the expression.
# For example, m{}, m(), m><, m"", m!! are all valid.

# if ($dir =~ /\/usr\/local\/lib/)
# By using a different delimiter, you can use a much clearer regular expression:
# if ($dir =~ m(/usr/local/lib))


use strict;
use warnings;

print "Enter a String: ";
chomp (my $in = <STDIN>);

# That is saying "If 'world' is inside $in, then True." 
# The regular expression itself is between / / slashes, and the =~ operator assigns the target for the search.
# m can be omitted from m// if the delimiters are forward slashes.
if ($in =~ /world/) {
	print "Match Found!!!\n";
}
else {
	print "No Match Found!!!\n";
}


# !~ operator
if ($in !~ /world/) {
	print "No Match Found!!!\n";
}
else {
	print "Match Found!!!\n";
}


# The literal string in the regexp can be replaced by a variable:
my $str = "world";
if ($in =~ /$str/) {
	print "Match Found!!!\n";
}
else {
	print "No Match Found!!!\n";
}


# If you're matching against the special default variable $_, the "$_ =~" part can be omitted:
$_ = $in;
if (/world/) {
	print "Match Found!!!\n";
}
else {
	print "No Match Found!!!\n";
}


# m[] operator
if ($in =~ m[world]) {
	print "Match Found!!!\n";
}
else {
	print "No Match Found!!!\n";
}


# m{} operator
if ($in =~ m{world}) {
	print "Match Found!!!\n";
}
else {
	print "No Match Found!!!\n";
}


# With respect to character matching, there are a few more points you need to know about.
# First of all, not all characters can be used "as is" in a match.
# Some characters, called metacharacters, are reserved for use in regexp notation.
# The metacharacters are {}[]()^$.|*+?-\
# A metacharacter can be matched as-is by putting a backslash before it.
# The forward slash '/' is also backslashed, because it is used to delimit the regexp.


# Instead of
# "#!/usr/bin/perl" =~ /#!\/usr\/bin\/perl/;
# easier to read
if("#!/usr/bin/perl" =~ m(#!/usr/bin/perl)) {
	print "True";
}