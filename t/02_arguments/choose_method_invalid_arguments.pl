#!/usr/bin/env perl
use 5.010000;
use warnings;
use strict;
use utf8;

use lib '../../lib';
use Term::Choose;

use lib 't/';
use Term_Choose_Testdata;


my $new = Term::Choose->new();

eval { $new->choose(           ); 1 } and die '$new->choose();';

eval { $new->choose( undef     ); 1 } and die '$new->choose( undef );';

eval { $new->choose( {}        ); 1 } and die '$new->choose( {} );';

eval { $new->choose( undef, {} ); 1 } and die '$new->choose( undef, {} );';

eval { $new->choose( 'a'       ); 1 } and die '$new->choose( "a" );';

eval { $new->choose( 1, {}     ); 1 } and die '$new->choose( 1, {} );';

eval { $new->choose( [], []    ); 1 } and die '$new->choose( [], [] );';

eval { $new->choose( [], 'b'   ); 1 } and die '$new->choose( [], "b" );';


my $valid_values = Term_Choose_Testdata::invalid_values();
for my $opt ( sort keys %$valid_values ) {
    for my $val ( @{$valid_values->{$opt}} ) {
        eval { $new->choose( [], { $opt => $val } ); 1 } and die "\$new->choose( { $opt => $val } );";
    }
}

my $mixed_options_1 = Term_Choose_Testdata::mixed_invalid_1();
eval { $new->choose( [], $mixed_options_1 ); 1 } and die '$new->choose( >>> );';

my $mixed_options_2 = Term_Choose_Testdata::mixed_invalid_2();
eval { $new->choose( [], $mixed_options_1 ); 1 } and die '$new->choose( <<< );';


say "<End_meth_chse_invalid_arg_test>";