#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

// Function to calculate factorial
unsigned long long factorial(int num) {
    unsigned long long result = 1;
    for (int i = 2; i <= num; ++i) {
        result *= i;
    }
    return result;
}

// Function to calculate Catalan number
unsigned long long countBracketSequences(int n) {
    unsigned long long numerator = factorial(2 * n);
    unsigned long long denominator = factorial(n + 1) * factorial(n);
    return numerator / denominator;
}

int main() {
    int n = 10;
    unsigned long long result = countBracketSequences(n);
    cout << result << endl;
    
    return 0;
}
