fun main() {
    // Plain Jane - KEAN DYSSO
    print("Ingrese la cuenta total de pares: ")
    val totalPares = readLine()!!.toInt()

    // Inicializar la lista de resultados
    val resultados = mutableListOf<Int>()

    // Leer cada par y calcular la suma
    repeat(totalPares) {
        print("Ingrese el primer número del par: ")
        val num1 = readLine()!!.toInt()

        print("Ingrese el segundo número del par: ")
        val num2 = readLine()!!.toInt()

        // Calcular la suma y agregar al resultado
        resultados.add(num1 + num2)
    }

    // Imprimir los resultados separados por espacios
    println("Resultados: ${resultados.joinToString(" ")}")
}
