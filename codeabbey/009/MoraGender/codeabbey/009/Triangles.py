def is_triangle(a, b, c):
    x = 1
    if a + b > c and a + c > b and b + c > a:
        x = 1
    else:
        x = 0
    return x

def main():
    num_triplets = int(input())
    results = []

    for _ in range(num_triplets):
        sides = list(map(int, input().split()))
        results.append(is_triangle(*sides))

    print(" ".join(map(str, results)))
    asfga = input()

if __name__ == "__main__":
    main()
