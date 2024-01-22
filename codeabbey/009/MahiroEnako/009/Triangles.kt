fun main() {
    val numTriplets = readLine()?.toIntOrNull() ?: 0

    repeat(numTriplets) {
        val sides = readLine()?.split(" ")?.map { it.toInt() } ?: emptyList()
        val result = isTriangle(sides[0], sides[1], sides[2])
        println(if (result) 1 else 0)
    }
}

fun isTriangle(a: Int, b: Int, c: Int): Boolean {
    return a + b > c && a + c > b && b + c > a
}
