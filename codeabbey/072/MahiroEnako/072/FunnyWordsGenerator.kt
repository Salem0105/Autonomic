fun main() {
    // Example usage
    val seed = 0L
    val wordLength = 6
    val randomNumbers = generateRandomNumbers(seed, wordLength)

    val randomWord = generateRandomWord(randomNumbers)
    println("Random Word: $randomWord")
}

fun generateRandomNumbers(seed: Long, count: Int): List<Long> {
    val A = 445
    val C = 700001
    val M = 2097152
    var Xn = seed
    val randomNumbers = mutableListOf<Long>()

    repeat(count) {
        Xn = (A * Xn + C) % M
        randomNumbers.add(Xn)
    }

    return randomNumbers
}

fun generateRandomWord(randomNumbers: List<Long>): String {
    val consonants = "bcdfghjklmnprstvwxz"
    val vowels = "aeiou"
    val word = StringBuilder()

    for (number in randomNumbers) {
        val index = if (word.length % 2 == 0) {
            (number % consonants.length).toInt()
        } else {
            (number % vowels.length).toInt()
        }

        val letter = if (word.length % 2 == 0) {
            consonants[index]
        } else {
            vowels[index]
        }

        word.append(letter)
    }

    return word.toString()
}
