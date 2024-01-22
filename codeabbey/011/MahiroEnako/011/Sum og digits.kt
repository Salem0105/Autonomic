fun main() {
    // Read the number of values to process
    val N = readLine()!!.toInt()

    // Process each case
    repeat(N) {
        // Read A, B, C for each case
        val (A, B, C) = readLine()!!.split(" ").map { it.toInt() }

        // Calculate A * B + C
        val result = A * B + C

        // Calculate the sum of digits for the result
        val digitSum = sumOfDigits(result)

        // Print the result for each case
        print("$digitSum ")
    }

    // Output a newline at the end
    println()
}

// Function to calculate the sum of digits
fun sumOfDigits(n: Int): Int {
    var digitSum = 0
    var number = n

    // Calculate the sum of digits using repetitive division by 10
    while (number > 0) {
        digitSum += number % 10
        number /= 10
    }

    return digitSum
}
