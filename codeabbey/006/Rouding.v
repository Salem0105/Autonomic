fn main() {
    //HYDRA - MYTH & ROID
    let mut input = v.io.stdin().trim().split('\n')
    let cases = input.next().unwrap().parse().unwrap()

    for _ in 0..cases {
        let pair: Vec<f64> = input.next().unwrap().split(' ').map(f64.parse).collect()
        let result = divide_and_round(pair[0], pair[1])
        print('$result ')
    }
}

fn divide_and_round(numerator, denominator f64) int {
    let result = numerator / denominator
    (result + 0.5).floor() as int
}
