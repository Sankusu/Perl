#!/usr/bin/perl


# Perl - File I/O 
# For handling files associate a filehandle with a file.
# Then a variety of operators and functions can be used to read and update the data stored within the filehandle.

# A filehandle is a named internal Perl structure that associates a physical file with a name.
# All filehandles are capable of read/write access, so you can read from and update any file or device associated with a filehandle.
# However, while associating a filehandle, the mode in which the filehandle is opened is to be specified.

# Three basic file handles are - STDIN, STDOUT, and STDERR.
# These represent standard input, standard output and standard error devices respectively.

# open FILEHANDLE, EXPR
# Here FILEHANDLE is the file handle returned by the open function and EXPR is the expression having file name and mode of opening the file.





# Read Only Access:
# <

# To open file.txt in read-only mode.
# Here less than < sign indicates that file has to be opend in read-only mode.
# Here DATA is the file handle, which will be used to read the file.
open(DATA, "<input.txt") or die "Can't open, $!";

# Here is the example, which will open a file and will print its content over the screen.
while(<DATA>) {
   print "$_";
}
print @list;

# Close Function:
# To close a filehandle, and therefore disassociate the filehandle from the corresponding file.
# This flushes the filehandle's buffers and closes the system's file descriptor.

# Syntax:
# close FILEHANDLE

# If no FILEHANDLE is specified, then it closes the currently selected filehandle.
# It returns true only if it could successfully flush the buffers and close the file.
if(close(DATA)) {
	print "\nFILEHANDLE closed successfully";
}
else {
	die "\nCouldn't close FILEHANDLE";
}