#!/usr/bin/perl -w

use strict;
use Socket;

my $server = "localhost";	# Host IP running the server
my $port = 7890;			# Use random port 7890
my $proto = getprotobyname('tcp');	# Gets the TCP protocol numbers

# socket( SOCKET, DOMAIN, TYPE, PROTOCOL );
# Create a "SOCKET",which works just like a file handle.
# PF_INET stands for Protocol Family of addresses (Internet Protocol version 4).
# SOCK_STREAM or Stream Sockets provides reliable stream-oriented service (TCP/IP)

socket(SOCKET, PF_INET, SOCK_STREAM, $proto)
	or die "Can't open socket $!\n";

# # bind to a port, then listen
# bind( SOCKET, ADDRESS );
# SOCKET is the descriptor returned by socket() call
# ADDRESS is a socket address (for TCP/IP)
# inet_aton stands for ASCII to network (IP to binary address)
bind(SOCKET, pack_sockaddr_in($port, inet_aton($server)))
	or die "Can't bind to port $port! \n";

# If a server dies without outstanding connections, the port won't be immediately reusable
# To make it reusable the option SO_REUSEADDR using setsockopt() function
# setsockopt(SOCKET, SOL_SOCKET, SO_REUSEADDR, 1)
# 	or die "Can't set socket option to SO_REUSEADDR $!\n";

# listen(SOCKET, QUEUESIZE);
# listen uses SOCKET descriptor returned by socket() call
# QUEUESIZE is the maximum number of outstanding connection request allowed simultaneously
listen(SOCKET, 5) or die "listen: $!";
print "SERVER started on port $port\n";

# accepting a connection
# accept(NEW_SOCKET, SOCKET);
# The accept call receives SOCKET descriptor returned by socket() function
# Upon successful completion, a new socket descriptor NEW_SOCKET is returned for all the future communications
# If access() call fails, then it returns FLASE which is defined in Socket module
while (my $client_addr = accept(NEW_SOCKET, SOCKET)) {
	# send them a message, close connection
	my $name = gethostbyaddr($client_addr, AF_INET);
	print NEW_SOCKET "Smile from the server";
	print "Connection recieved from $name\n";
	close NEW_SOCKET;
}


# Output:
# SERVER started on port 7890
# Connection recieved from ANantes-650-1-49-162.w2-0.abo.wanadoo.fr
# Terminating on signal SIGINT(2)