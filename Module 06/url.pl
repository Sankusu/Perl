#!/usr/bin/perl

# https://www.perl.com/pub/2002/08/20/perlandlwp.html/
# http://lwp.interglacial.com/ch02_03.htm/

# LWP::Simple
# LWP (short for “Library for WWW in Perl”) is a popular group of Perl modules for accessing data on the Web.
# If you just want to access what’s at a particular URL, the simplest way to do it is to use LWP::Simple’s functions.
# In a Perl program, you can call its get($url) function.
# It will try getting that URL’s content.
# If it works, then it’ll return the content; but if there’s some error, it’ll return undef.


use LWP::Simple;

my $content = get 'http://www.example.com' or die "Failed to get url";

# Then go do things with $content, like this:
print $content;