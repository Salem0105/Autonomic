fun main() {
    val multiplier = 106
    val increment = 1283
    val modulus = 6075

    // Initial seed
    var seed = 42

    // Number of values to generate
    val numValues = 10

    generateLCG(seed, multiplier, increment, modulus, numValues)
}

fun generateLCG(seed: Int, a: Int, c: Int, m: Int, numValues: Int) {
    var currentSeed = seed

    repeat(numValues) {
        val randomValue = (a * currentSeed + c) % m
        println("Random value: $randomValue")
        currentSeed = randomValue
    }
}
