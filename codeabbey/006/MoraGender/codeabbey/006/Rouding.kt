import kotlin.math.round
/* 【1時間】『Le Cirque du Diable』【作業用BGM】*/

fun main() {
    val cases = readLine()!!.toInt()

    repeat(cases) {
        val (numerator, denominator) = readLine()!!.split(" ").map { it.toDouble() }
        val result = divideAndRound(numerator, denominator)
        print("$result ")
    }
}

fun divideAndRound(numerator: Double, denominator: Double): Int {
    val result = numerator / denominator
    return round(result).toInt()
}
