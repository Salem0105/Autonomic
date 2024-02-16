use "math"

actor Main
  new create(env: Env) =>
    env.input(
      object iso is InputNotify
        let n: USize = 10
        let result: USize = count_bracket_sequences(n)
        env.out.print(result.string())

      fun count_bracket_sequences(n: USize): USize =>
        (factorial(2 * n) div (factorial(n + 1) * factorial(n)))

      fun factorial(num: USize): USize =>
        if num == 0 then
          1
        else
          num * factorial(num - 1)

      end,
      512)
