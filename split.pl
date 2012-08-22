#!/usr/bin/env perl

use strict;
use warnings;
use autodie qw(open close);
use Carp qw(croak);
use 5.012;

my $in_fn="first_9.pdb";


open my $fh, '<', $in_fn;

while(<$fh>){
	if(/MODEL/../ENDMDL/){
		print $_;
	}
}
