fun calculateProfit(N: Int, M: Int, X: Int): Int {
    var totalProfit = 0
    var increment = 0

    repeat(N) { floor ->
        totalProfit += (X + increment) * (N / M - (floor / M))
        increment += if ((floor + 1) % M == 0) 1000 else 0
    }

    return totalProfit
}

fun handleTestcases(testcases: List<Triple<Int, Int, Int>>): List<Int> {
    return testcases.map { (N, M, X) ->
        calculateProfit(N, M, X)
    }
}

fun main() {
    val input = readLine()!!.toInt()
    val results = mutableListOf<Int>()

    repeat(input) {
        val (N, M, X) = readLine()!!.split(" ").map { it.toInt() }
        results.add(calculateProfit(N, M, X))
    }

    println(results.joinToString(" "))
}
