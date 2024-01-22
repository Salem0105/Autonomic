def sum_of_digits(n):
    # Calculate the sum of digits using repetitive division by 10
    digit_sum = 0
    while n > 0:
        digit_sum += n % 10
        n //= 10
    return digit_sum

# Read the number of values to process
N = int(input())

# Process each case
for _ in range(N):
    # Read A, B, C for each case
    A, B, C = map(int, input().split())

    # Calculate A * B + C
    result = A * B + C

    # Calculate the sum of digits for the result
    digit_sum = sum_of_digits(result)

    # Print the result for each case
    print(digit_sum, end=' ')

# Output a newline at the end
print()
