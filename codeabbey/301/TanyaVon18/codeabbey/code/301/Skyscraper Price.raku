sub calculate-profit($N, $M, $X) {
    my $total-profit = 0;
    my $increment = 0;

    for ^$N -> $floor {
        $total-profit += ($X + $increment) * ($N div $M - ($floor div $M));
        $increment += ($floor + 1) % $M == 0 ?? 1000 !! 0;
    }

    return $total-profit;
}

sub handle-testcases(@testcases) {
    return @testcases.map: -> ($N, $M, $X) {
        calculate-profit($N, $M, $X);
    }
}

sub MAIN() {
    my $T = prompt("Enter the number of testcases: ").Int;
    my @results;

    for ^$T {
        my ($N, $M, $X) = prompt("Enter N, M, and X for testcase $_: ").words.map(*.Int);
        push @results, calculate-profit($N, $M, $X);
    }

    say @results.join(' ');
}
