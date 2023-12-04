class Main
  new create(env: Env) =>
   
    let numero1: USize = 15777
    let numero2: USize = 11908

    let resultado = suma(numero1, numero2)

    env.out.print("La suma de {} y {} es: {}", numero1, numero2, resultado)
