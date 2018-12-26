#!/usr/bin/perl

use strict;
use warnings;

# Needed when modules are not present in "lib" directory.
# Path will have format in Windows and Linux Environments.
# In windows, use escape "\" symbol in the path.
# use lib "D:\\SJCEM\\OSTL (2017-2018)\\Module 05\\Module";
use Cwd;
use lib getcwd;

use MyModule;


MyModule::my_method("World");
MyModule::my_method("Perl");