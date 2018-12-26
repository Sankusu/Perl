#ExporterModule.pm

package ExporterModule;

use strict;
use warnings;

use Exporter;

use vars qw(@ISA @EXPORT);

@ISA = qw(Exporter);

@EXPORT = ("Hello");

sub Hello{
  print "Hello from the Exporter function!!!\n";
}