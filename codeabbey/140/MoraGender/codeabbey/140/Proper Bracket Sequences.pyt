import math

def count_bracket_sequences(n):
    return math.factorial(2 * n) // (math.factorial(n + 1) * math.factorial(n))

# Example usage
n = 10
result = count_bracket_sequences(n)
print(result)
