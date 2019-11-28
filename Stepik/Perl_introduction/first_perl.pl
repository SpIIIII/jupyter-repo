use strict;
use warnings;
use diagnostics;
use feature 'say';
use Data::Dumper;
# use utf8;


# use Hash::Diff qw( diff );

use v5.30.0;

my $number = 5;
my $text = 'My text';
my $ref = \$text;
my %fin = ();
my @array = (1,2,3,4,5,6);


my %first_hash = (one => 1, 'two'=>'2',3=>[3],4=>{one=>'1'});
my $second_hash_ref = {'two'=>'2+',3=>[3+1],4=>'4',5=>5};
my $first_hash_ref = \%first_hash;

my @fruits = qw(apple red orange orange grape purple);


sub my_hash {
    print $number;
}

my_hash;