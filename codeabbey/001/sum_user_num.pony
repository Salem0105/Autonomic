use "ponytest"

actor Main
  new create(env: Env) =>
    let input = env.in.readUntil("\n").trim()

    let resultado = sumCadenaNumeros(input)

    env.out.print("La suma de los números es: {}", resultado)

  fun sumaCadenaNumeros(cadena: String): I64 =>
    let numeros = cadena.split(" ").map[USize](|s| USize.from_str(s).unwrap())
    let resultado = numeros.fold[USize](0, |acc, num| acc + num)
    I64.from(numeros.fold[USize](0, |acc, num| acc + num)).unwrap()
