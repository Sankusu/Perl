# Classes
# A Perl class is defined in a Perl module file (*.pm) with a package declaration.
# At a minimum the class must contain a constructor method and optionally can contain additional class methods and attributes.
# As with all Perl packages, it must return a true value (normally 1, this is placed at the end of the file).

# This is the package declaration
package Shape_1;

# This is the constructor method
sub new {
    return bless {}, shift;
}

1;

# The example Shape class must be saved in a file called ‘Shape_1.pm’.