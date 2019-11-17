use strict;
use warnings;
use diagnostics;
use Math::Prime::Util 'primes';
use feature 'say';
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


#******           Stepic 2.3            ******
#    to applay 
#    ^(?!.*п.*п)(?!.*я.*я)(?!.*т.*т)(?!.*а.*а)(?!.*к.*к)[пятак]{5}



# my $words = ["пятак","ЛиСток","пятка","стул","ПяТаК","слиток","тяпка","столик","слиток","sOlo"];
# my $expr = qr/[пятак]{5}/;

# for (@$words){
#     print lc $_,' ';
#     if (lc $_ =~ $expr){
#         print $_,"\n";
#     }
    
# }

 
# my @extensions = qw(avi flv mp3 mp4 wmv);  # parsed from file
# my $pattern    = '\.(' . join(',', @extensions) . "){@$len}";
# my $regex      = qr/$pattern/;

# say $pattern





# my $n=<STDIN>; 
# chomp( $n); 
# print "The prime numbers between 2 and my $n are:\n";
# for(my $i=3;$i<=$n ;$i++) 
# { 
#     my $is_prime = 1;
#     for(my $j=2; $j<=sqrt($i); $j++){
#         if($i % $j == 0){
#             $is_prime = 0;
#             last;
#         }
#     }
#     if($is_prime == 1) {
#         print $i."\n";
#     }
# }

####
# sub fac {
#     my ($n) = @_;
#     my $g=1;
#     if ($n==0){
#         say 1;
#         }
#     elsif($n<0){
#         $n = 0-$n;
#         my $f = 1;
#         for (my $i = 1;  $i<=$n; $i++){
#             $f *=$i;
#             } 
#         $f = 0-$f;
#         say "$f";
#         }
#     else{
#         my $f = 1;
#         for (my $i = 1;  $i<=$n; $i++){
#             $f *=$i;
#             } 
#         say "$f";
#         }
#     }

# fac(-5)





#******           Stepic 2.1.9            ******

sub solve_equation {
    my ($a_value, $b_value, $c_value) = @_;
    
    if ($a_value == 0){
        print  "No solution!\n";
        }
    elsif($b_value==0 && $c_value==0){
        my $x1 = 0;
        print "$x1\n";        
        }
    elsif($b_value==0){
        my $c = -($c_value/$a_value);
        my $sqrt_c = sqrt($c);
        my $sqrt_1 = $sqrt_c;
        my $sqrt_2 = -$sqrt_c;
        my @inner = sort($sqrt_1,$sqrt_2);
        if($c >0){
            print"$inner[0], $inner[1]\n";
            }
        else{print  "No solution!\n";
            }
        }
    elsif($c_value==0){
        my $x1 = 0;
        my $x2 = -($b_value/$a_value);
        my @inner = sort($x1,$x2);
        print"$inner[0], $inner[1]\n";
        }
        
    else{
        my $D = $a_value**2-4*$b_value*$c_value;
        if ($D>0){
            my $x1 = (0-$b_value - sqrt($D))/(2*$a_value);
            my $x2 = (0-$b_value - sqrt($D))/(2*$a_value);
            my @inter = sort($x1,$x2);
            print "$inter[0], $inter[1]\n";
            }
        elsif ($D==0){
            my $y1 = -$b_value/2*$a_value;
            print "$y1\n";
            }
        else{print "No solution!\n";}
        }

    
    }

solve_equation(2,8,2)