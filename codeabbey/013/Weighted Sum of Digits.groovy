def weightedSumOfDigits(value) {
    def sum = 0
    value.eachWithIndex { digit, index ->
        sum += (digit.toInteger() * (index + 1))
    }
    return sum
}

// Read the number of test cases
def numTestCases = Integer.parseInt(System.console().readLine())

// Read the values and calculate the weighted sum of digits for each
def testValues = System.console().readLine().split(' ').collect { it.toInteger() }
def results = testValues.collect { weightedSumOfDigits(it.toString()) }

// Print the results separated by spaces
println results.join(' ')
