// Programa en Groovy para calcular la suma de pares de números

// Leer la cuenta total de pares
print("Ingrese la cuenta total de pares: ")
def totalPares = System.in.withReader { it.readLine().toInteger() }

// Inicializar la lista de resultados
def resultados = []

// Leer cada par y calcular la suma
totalPares.times {
    print("Ingrese el primer número del par: ")
    def num1 = System.in.withReader { it.readLine().toInteger() }

    print("Ingrese el segundo número del par: ")
    def num2 = System.in.withReader { it.readLine().toInteger() }

    // Calcular la suma y agregar al resultado
    resultados << num1 + num2
}

// Imprimir los resultados separados por espacios
println("Resultados: ${resultados.join(' ')}")
