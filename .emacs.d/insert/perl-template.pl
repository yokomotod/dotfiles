use strict;
use warnings FATAL => 'all';
use autodie qw/ :all /;

die <<"USAGE" if @ARGV < 1 || $ARGV[0] eq '-h';
usage :
  perl $0

example :
  perl $0

output :

param :

USAGE

my $ = shift;

