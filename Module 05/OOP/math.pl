#!/usr/bin/perl

use strict;
use warnings;
use Cwd;
use lib getcwd;
use ParentModule;
use ChildModule;


my $obj1 = ParentModule->new(3, 5);
$obj1->get_value();
$obj1->sum();
$obj1->display();


my $obj2 = ParentModule->new();
$obj2->set_value(2, 7);
$obj2->get_value();
$obj2->sum();
$obj2->display();


my $obj3 = ChildModule->new();
$obj3->set_value(3, 4);
$obj3->get_value();
$obj3->sq_sum();
$obj3->display();