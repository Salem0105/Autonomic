# Function to find linear equation coefficients
sub find-linear-equation($x1, $y1, $x2, $y2) {
    my $a = ($y2 - $y1) / ($x2 - $x1);
    my $b = $y1 - $a * $x1;
    return $a, $b;
}

# Main program
my $num-test-cases = prompt("Enter the number of test cases: ").Int;

for 1..$num-test-cases -> $i {
    my ($x1, $y1, $x2, $y2) = prompt("Enter test case $i: ").words.map(*.Int);

    my ($a, $b) = find-linear-equation($x1, $y1, $x2, $y2);
    say "($a $b)";
}
