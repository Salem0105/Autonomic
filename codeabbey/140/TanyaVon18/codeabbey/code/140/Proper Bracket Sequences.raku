sub factorial(Int $num) {
    [*] 1..$num;
}

sub count-bracket-sequences(Int $n) {
    my $numerator = factorial(2 * $n);
    my $denominator = factorial($n + 1) * factorial($n);
    return $numerator div $denominator;
}

my $n = 10;
my $result = count-bracket-sequences($n);
say $result;
