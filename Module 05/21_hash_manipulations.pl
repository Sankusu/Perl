#!/usr/bin/perl

%data = ('John' => 45, 'Lisa' => 30, 'Ravi' => 40);
print "$_ $data{$_}\n" for (keys %data);
print "\n";


# adding an element to the hash;
$data{'Ali'} = 55;
print "$_ $data{$_}\n" for (keys %data);
print "\n";


# overwrite an element of the hash;
$data{'John'} = 50;
print "$_ $data{$_}\n" for (keys %data);
print "\n";


# delete the same element from the hash;
delete $data{'Ali'};
print "$_ $data{$_}\n" for (keys %data);


# Output:
# John 45
# Lisa 30
# Ravi 40

# Ali 55
# Ravi 40
# Lisa 30
# John 45

# Ali 55
# Ravi 40
# Lisa 30
# John 50

# Ravi 40
# Lisa 30
# John 50