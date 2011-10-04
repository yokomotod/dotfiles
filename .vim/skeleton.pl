use warnings FATAL => 'all';
use strict;
use open IN => qw/ :encoding(utf8) /;
use open OUT => qw/ :utf8 :std /;
use autodie;

die "usage: perl $0 <>" if @ARGV < 1;

my $input_file = shift;

open my $fh, '<', $input_file;
while (<$fh>) {
    chomp;
    my () = split /\t/;
}
close $fh;



