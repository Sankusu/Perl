#!/usr/bin/perl
use strict;
use warnings;

# Needed when modules are not present in lib folder.
# Path will have format in Windows and Linux Environments.
# In windows, use escape "\" symbol in the path.
# use lib "D:\\SJCEM\\OSTL (2017-2018)\\Module 05\\OOP";

use Cwd;
use lib getcwd;

use MyModule;


my $myObj = MyModule->new;
$myObj->say_hi;
$myObj->say_hello;