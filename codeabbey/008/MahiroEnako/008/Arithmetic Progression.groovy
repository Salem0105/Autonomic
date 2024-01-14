// アイデン貞貞メルトダウン - Enako (えなこ)

print("Ingrese la cuenta total de pares: ")
def totalPares = System.in.withReader { it.readLine().toInteger() }

def resultados = []

totalPares.times {
    print("Ingrese el primer número del par: ")
    def num1 = System.in.withReader { it.readLine().toInteger() }

    print("Ingrese el segundo número del par: ")
    def num2 = System.in.withReader { it.readLine().toInteger() }

    resultados << num1 + num2
}

println("Resultados: ${resultados.join(' ')}")
