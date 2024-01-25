unit sub MAIN;

# Internal storage
my @storage = (0.0, 0.0, 0.0);

# Function to save values to internal storage
sub save-to-storage($a, $b, $sum) {
    @storage = ($a, $b, $sum);
}

# Function to load values from internal storage
sub load-from-storage() {
    return @storage;
}

# Main program
sub MAIN {
    # Load values from internal storage
    load-from-storage();

    # Get input values
    my $a = prompt("Enter the value of A: ").Numeric;
    my $b = prompt("Enter the value of B: ").Numeric;

    # Calculate sum
    my $result = $a + $b;

    # Print the result
    say "The sum of $a and $b is: $result";

    # Update storage values
    save-to-storage($a, $b, $result);
    
    # Save values to storage
    save-to-storage(@storage);

    say "Values saved to storage: @storage[]";
}
