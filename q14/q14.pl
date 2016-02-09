use strict;
use warnings;
use Crypt::Passwd::XS;

open(IN, "< memo.txt") or die("open error :$!");

while (my $line = <IN>)
{
  chomp($line);

  my @ary = split(/:/, $line);
  my $name = $ary[0];
  my $saltAndHash = $ary[1];

  if ($saltAndHash =~ /^(\$6\$[^\$]+)\$/)
  {
    my $salt = $1;

    open(IN2, "< dictionary.txt") or die("open error :$!");

    while (my $word = <IN2>)
    {
      chomp($word);

      my $tmp = +Crypt::Passwd::XS::crypt( $word, $salt );

      if ($tmp eq $saltAndHash)
      {
        print "$name : $word\n";
        last;
      }
    }

    close(IN2);
  }

}

close(IN);

