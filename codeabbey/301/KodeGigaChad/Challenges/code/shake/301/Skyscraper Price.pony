class SkyscraperProfit
  fun ref calculate_profit(N: U64, M: U64, X: U64): U64 =>
    var total_profit: U64 = 0
    var increment: U64 = 0

    for floor in Range[U64](0, N - 1) do
      total_profit = total_profit + (X + increment) * (N div M - (floor div M))
      increment = if (floor + 1) mod M == 0 then increment + 1000 else increment end

    total_profit

  fun ref main(env: Env) =>
    let input = env.in.read_line()?
    let T: U64 = input.to[U64]()
    var results: Array[U64] iso = Array[U64](T)

    for i in Range[U64](0, T - 1) do
      input = env.in.read_line()?
      let parts = input.split(" ")
      let N = parts(0).to[U64]()
      let M = parts(1).to[U64]()
      let X = parts(2).to[U64]()
      results(i) = calculate_profit(N, M, X)

    env.out.print(results.string())
