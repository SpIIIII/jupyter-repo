use strict;
use warnings;
use diagnostics;
use feature 'say';
use Data::Dumper;
# use utf8;

use v5.30.0;

#######     Stepik 3.3      #######

sub parse_url {
    my ($url) = @_;
    my $pattern = qr/((?<schema>[a-z,+,-]+):\/\/)((?<domain>\w+.\w+)(:(?<port>\d+))?(?<path>(\/?\w?)+)?)?(\?(?<query_string>[\w=&]+))?(#(?<anchor>\w+))?/;
    $url=~$pattern;
    say Dumper \%+;
    return %+;
}


my $sempl = 'first-run-pen-experience://mail.ru:8080/r/p?s=10&z=11#text';
my $sec = "http://mail.ru/r/p?s=10";
my $big_test = << 'END';
http://mail.ru:8080/r/p?s=10&z=11#text
http://mail.ru:8080/r/p?s=10&z=11
http://mail.ru:8080/r/p
http://mail.ru:8080
http://mail.ru
http://
http://mail.ru/r/p?s=10&z=11#text
http://mail.ru:8080?s=10&z=11#text
http://mail.ru:8080/r/p#text
http://mail.ru?s=10&z=11#text
http://mail.ru/r/p1#text
http://mail.ru/r/p?s=10&z=11
http://mail.ru/rfd/fdfdf/dfd1212/f12/p?s=10&z=11#text
END

parse_url $_ for (split '\n',$big_test);