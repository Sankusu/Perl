#!/usr/bin/perl

print "Line 1\n";

BEGIN { 
   print "BEGIN Block 1 executed\n" 
}

print "Line 2\n";

END { 
   print "END Block 1 executed\n" 
}

print "Line 3\n";

BEGIN { 
   print "BEGIN Block 2 executed\n" 
}

print "Line 4\n";

END { 
   print "END Block 2 executed\n" 
}

print "Line 5\n";

BEGIN { 
   print "BEGIN Block 3 executed\n" 
}

print "Line 6\n";

END { 
   print "END Block 3 executed\n" 
}

print "Line 7\n";


# OUTPUT:
# BEGIN Block 1 executed
# BEGIN Block 2 executed
# BEGIN Block 3 executed
# Begin and Block Blocks
# Line 1
# Line 2
# Line 3
# Line 4
# Line 5
# Line 6
# Line 7
# END Block 3 executed
# END Block 2 executed
# END Block 1 executed