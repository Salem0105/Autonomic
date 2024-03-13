def calculate_profit(N, M, X):
    total_profit = 0
    current_price = X
    increment = 0

    for floor in range(N):
        total_profit += (current_price + increment) * (N // M - (floor // M))

        increment += 1000 if (floor + 1) % M == 0 else 0

    return total_profit

# Reading input
T = int(input())
outputs = []

for _ in range(T):
    N, M, X = map(int, input().split())
    outputs.append(str(calculate_profit(N, M, X)))

# Printing output
print(" ".join(outputs))
