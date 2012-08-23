#!/usr/bin/env perl

use strict;
use warnings;
use autodie qw(open close);
use Carp qw(croak);
use 5.012;

my $in_fn="first_9.pdb";


open my $fh, '<', $in_fn;

my $write_flag;
my $ofh; 


while(my $line = <$fh>){
	
	
	if( $line =~ m{ \A MODEL \s* (\d+) }x ) {
    		my $model_number = $1;
    		open $ofh, '>', "$model_number.pdb";
		$write_flag = 1;
		}
	if ( $line =~ /^ENDMDL/ ){
		print $ofh $line;
		close $ofh;
		$write_flag = 0;
		}
	
	if($write_flag){
		print $ofh $line;
	}
	
}
