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