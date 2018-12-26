@array = split(/ /, "this is a perl script");
print @array[0], "\n";
print @array[1], "\n";
print @array[2], "\n";
print @array[3], "\n";
print @array[4], "\n";
print "\n";


@array = split(//, "PERL");
print @array[0], "\n";
print @array[1], "\n";
print @array[2], "\n";
print @array[3], "\n";


# OUTPUT:
# this
# is
# a
# perl
# script

# P
# E
# R
# L