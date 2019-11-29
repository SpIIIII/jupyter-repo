use strict;
use warnings;
use diagnostics;
use feature 'say';
use Data::Dumper;
# use utf8;

use v5.30.0;

sub parse_query_string {
    my ($query_string) = @_;
    my $look = 0;
    $look +=1;
    # $query_string =~ s/&+/&/g;
    my @arr =  split /[=,&]+/,$query_string;
    my %hash = @arr;
    return \%hash
}
my $sample = 'key1=value1&&&&key2=value2';
field1=value1&field2=value2&&field3=value3
field1=value1&field2=value2&&field3=value3
field1=value1&field2=value2&&field3=value3
say Dumper parse_query_string $sample;