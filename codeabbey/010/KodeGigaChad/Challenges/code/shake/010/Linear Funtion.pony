use "collections"

class LinearEquation
  fun apply(x: Int): Int =>
    a * x + b

  fun recover(x1: Int, y1: Int, x2: Int, y2: Int): (Int, Int) =>
    let a = (y2 - y1) / (x2 - x1)
    let b = y1 - a * x1
    (a, b)

primitive ReadLine
  fun apply(): String iso^ =>
    try
      let line = try ReadLineEnv.stdin.read(1)?
      else
        return recover iso "EOF"
      end
      ReadLineEnv.stdin.readUntil(line, "\n")? else return recover iso "EOF"
    end

primitive Main
  new create(env: Env) =>
    try
      let test_cases_str = ReadLineEnv.stdin.readUntil("\n")? else return
      let test_cases = String.toInt(test_cases_str) else return
      for i in Range(0, test_cases) do
        let input = ReadLineEnv.stdin.readUntil("\n")? else return
        let values = input.trim().split(' ').map((s: String): Int => String.toInt(s) else return)
        let (a, b) = LinearEquation.recover(values(0), values(1), values(2), values(3))
        env.out.print("(", a.string(), " ", b.string(), ") ")
      end
    else
      env.out.print("Error reading input")
    end
