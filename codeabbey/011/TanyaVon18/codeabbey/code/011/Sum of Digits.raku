# Function to calculate the sum of digits
sub sum-of-digits($n) {
    my $digit-sum = 0;
    while $n > 0 {
        $digit-sum += $n % 10;
        $n div= 10;
    }
    return $digit-sum;
}

# Read the number of values to process
my $N = prompt;

# Process each case
for ^$N {
    # Read A, B, C for each case
    my ($A, $B, $C) = prompt.split(" ").map(*.Int);

    # Calculate A * B + C
    my $result = $A * $B + $C;

    # Calculate the sum of digits for the result
    my $digit_sum = sum-of-digits($result);

    # Print the result for each case
    print "$digit_sum ";
}

# Output a newline at the end
say "";
