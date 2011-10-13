use strict;
use warnings FATAL => 'all';
use autodie qw/ :all /;

die "usage: perl $0 <>" if @ARGV < 1;

my $arg = shift;

