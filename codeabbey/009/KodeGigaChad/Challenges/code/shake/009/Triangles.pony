actor Main
  new create(env: Env) =>
    let numTriplets = env.stdin.read[USize]?

    for i in 1..numTriplets do
      let triplet = env.stdin.readline()?.split().map[USize]
      let result = isTriangle(triplet(0), triplet(1), triplet(2))
      env.out.print(result.string())

  fun isTriangle(a: USize, b: USize, c: USize): Bool =>
    a + b > c and a + c > b and b + c > a
