use std::io;

// Function to calculate factorial
fn factorial(num: u128) -> u128 {
    (1..=num).product()
}

// Function to calculate Catalan number
fn count_bracket_sequences(n: u128) -> u128 {
    let numerator = factorial(2 * n);
    let denominator = factorial(n + 1) * factorial(n);
    numerator / denominator
}

fn main() {
    // Read input from the user
    println!("Enter the value of N:");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Failed to read line");
    let n: u128 = input.trim().parse().expect("Invalid input");

    // Calculate and print the result
    let result = count_bracket_sequences(n);
    println!("{}", result);
}
