sub find-minimum ($number1, $number2, $number3) {
    my $min = 0;
    if ($number1 < $number3 && $number1 < $number2) {
        $min = $number1;
    } elsif ($number2 < $number1 && $number2 < $number3) {
        $min = $number2;
    } else {
        $min = $number3
    }
    return $min;
}

sub initialize-row-matrix-values (@comparison-matrix, $limit, $initial-value) {
    if $initial-value >= $limit {
        return 0;
    } else {
        @comparison-matrix[$initial-value; 0] = $initial-value;
        initialize-row-matrix-values(@comparison-matrix, $limit, $initial-value + 1);
    }
}

sub initialize-column-matrix-values (@comparison-matrix, $limit, $initial-value) {
    if $initial-value >= $limit {
        return 0;
    } else {
        @comparison-matrix[0; $initial-value] = $initial-value;
        initialize-column-matrix-values(@comparison-matrix, $limit, $initial-value + 1);
    }
}

sub second-cycle-distance (@comparison-matrix, @word-one, @word-two, $index-i, $index-j) {
    if $index-j < @word-two.elems {
        if @word-one[$index-i] eq @word-two[$index-j] {
            @comparison-matrix[$index-i; $index-j] = @comparison-matrix[$index-i - 1; $index-j - 1];
        } else {
            my $insertion = @comparison-matrix[$index-i; $index-j - 1];
            my $deletion = @comparison-matrix[$index-i - 1; $index-j];
            my $replacement = @comparison-matrix[$index-i - 1; $index-j - 1];

            @comparison-matrix[$index-i; $index-j] = 1 + find-minimum($insertion, $deletion, $replacement);
        }
        second-cycle-distance(@comparison-matrix, @word-one, @word-two, $index-i, $index-j + 1);
    }
}

sub first-cycle-distance (@comparison-matrix, @word-one, @word-two, $index-i) {
    if $index-i < @word-one.elems {
        second-cycle-distance(@comparison-matrix, @word-one, @word-two, $index-i, 1);
        first-cycle-distance(@comparison-matrix, @word-one, @word-two, $index-i + 1);
    }
}

sub levenshtein-distance (@word-one, @word-two, @results) {
    my $word-one-size = @word-one.elems;
    my $word-two-size = @word-two.elems;

    my @comparison-matrix[$word-one-size + 1; $word-two-size + 1] = [0 xx $word-two-size + 1] xx $word-one-size + 1;
    initialize-row-matrix-values(@comparison-matrix, $word-one-size, 0);
    initialize-column-matrix-values(@comparison-matrix, $word-two-size, 0);

    first-cycle-distance(@comparison-matrix, @word-one, @word-two, 1);

    @results.push(@comparison-matrix[$word-one-size - 1; $word-two-size - 1]);
}

sub iterate-over-test-cases ($test-cases, @results) {
    if $test-cases == 0 {
        return 0;
    } else {
        my $input = prompt;
        my @sequence = $input.split(" ");
        levenshtein-distance(@sequence[0].split(""), @sequence[1].split(""), @results);
        iterate-over-test-cases($test-cases - 1, @results);
    }
}

sub MAIN () {
    my $test-cases = prompt;
    my @results = [];
    iterate-over-test-cases($test-cases, @results);

    @results.map( {
        print $_, " ";
    });
}

main()
