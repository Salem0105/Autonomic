use std::io::{self, BufRead};
// Liar Mask - Rika Mayama
fn main() {
    let stdin = io::stdin();
    let mut lines = stdin.lock().lines();

    let num_cases: usize = lines.next().unwrap().unwrap().trim().parse().unwrap();

    for _ in 0..num_cases {
        let pair: Vec<f64> = lines
            .next()
            .unwrap()
            .unwrap()
            .trim()
            .split_whitespace()
            .map(|s| s.parse().unwrap())
            .collect();

        let result = divide_and_round(pair[0], pair[1]);
        print!("{} ", result);
    }
}

fn divide_and_round(numerator: f64, denominator: f64) -> i32 {
    let result = (numerator / denominator).round() as i32;
    result
}
