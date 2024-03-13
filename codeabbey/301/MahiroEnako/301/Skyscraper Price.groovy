def calculateProfit(N, M, X) {
    def totalProfit = 0
    def increment = 0

    (0..<N).each { floor ->
        totalProfit += (X + increment) * (N / M - (floor / M))
        increment += (floor + 1) % M == 0 ? 1000 : 0
    }

    return totalProfit
}

def handleTestcases(testcases) {
    testcases.collect { testcase ->
        def N = testcase[0]
        def M = testcase[1]
        def X = testcase[2]
        calculateProfit(N, M, X)
    }
}

def main() {
    def input = System.in.newReader()
    def T = input.readLine().toInteger()
    def results = []

    (0..<T).each {
        def testcase = input.readLine().split(' ').collect { it.toInteger() }
        results << handleTestcases([testcase])
    }

    println results.flatten().join(' ')
}

main()
