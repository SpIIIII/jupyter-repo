use strict;
use warnings;
use diagnostics;
use feature 'say';
use Data::Dumper;
# use utf8;

use v5.30.0;

#########           Stepic 2.1.9            #########

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
