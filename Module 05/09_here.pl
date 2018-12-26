#!/usr/bin/perl

# Demonstration of "Here" Documents

$a = 10;

# Here with double quotes:
$var = <<"EOF";
This is the syntax for here document and it will continue
until it encounters a "EOF" in the first line.
This is case of double quote so variable value will be
interpolated. For example, value of a = $a\n
EOF
print($var);

# Here with single quotes:
$var = <<'EOF';
This is case of single quote so variable value will be not
interpolated. For example, value of a = $a
EOF
print($var);

print <<EOF;
\nThis is
another way
to represent
multiline
string
EOF

# Output:
# This is the syntax for here document and it will continue
# until it encounters a "EOF" in the first line.
# This is case of double quote so variable value will be
# interpolated. For example, value of a = 10

# This is case of single quote so variable value will be not
# interpolated. For example, value of a = $a

# This is
# another way
# to represent
# multiline
# string