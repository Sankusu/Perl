# The execution and the errors always go together.
# If you are opening a file which does not exist.
# Then if you did not handle this situation properly then your program is considered to be of bad quality.
# The program stops if an error occurs.
# So a proper error handling is used to handle various type of errors and take appropriate action.
# Its very easy to trap errors in Perl and then handling them properly.
# Here are few methods which can be used.


# The ternary Operator:
print(exists($hash{value}) ? 'Value Exists' : 'Value Missing',"\n");
# The conditional operator is best used when you want to return one of the two values within an expression or statement.


# The warn Function
# The warn function just raises a warning, a message is printed to STDERR, but no further action is taken.
# So it is more useful if you just want to print a warning for the user and proceed with rest of the operation.
chdir('/etc') || warn "\nCan't change directory";


# The die function works just like warn, except that it also calls exit.
# Within a normal script, this function has the effect of immediately terminating execution.
# It should be used in case it is useless to proceed if there is an error in the program.
if(open(DATA, $file)) {
	print "\nFile opened successfully!!!";
}
else {
	die "\nError: Couldn't open the file - $!";
}
# Here variable $! returns the actual error message.


# Alternatively, we can reduce the statement to one line statement:
open(DATA, $file) || die "\nError: Couldn't open the file $!";