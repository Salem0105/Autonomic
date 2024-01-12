actor Main
  new create(env: Env) =>
    let totalPares = env.stdin.readIsize()
    let resultados: Array[Isize] = recover Array[Isize](totalPares)
    for i in Range(0, totalPares) do
      let num1 = env.stdin.readIsize()
      let num2 = env.stdin.readIsize()
      resultados(i) = num1 + num2
    end
    env.out.write(resultados.string()) 
