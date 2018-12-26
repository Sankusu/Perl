#!/usr/bin/perl -w

use strict;
use Socket;

my $server = "localhost";	# Host IP running the server
my $port = 7890;			# Use random port 7890
my $proto = getprotobyname('tcp');	# Gets the TCP protocol numbers

# Create the socket, connect to the port
socket(SOCKET, PF_INET, SOCK_STREAM, $proto)
	or die "Can't create a socket $!\n";

connect(SOCKET, pack_sockaddr_in($port, inet_aton($server)))
	or die "Can't connect to port $port! \n";

while (my $line = <SOCKET>) {
	print "$line\n";
}

close SOCKET or die "close: $!";


# Output:
# Smile from the server