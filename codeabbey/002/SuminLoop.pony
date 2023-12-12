actor Main
  new create(env: Env) =>
    let inputString = try readLine() end
    let numeros = inputString.split(' ').map[USize]((string: String) => string.to[USize]())

    let suma = numeros.reduce[USize]((a: USize, b: USize) => a + b, 0)

    env.out.print("La suma de los números es: " + suma.string())
