def calculate_hint(secret, guess):
    correct_position_count = sum(s == g for s, g in zip(secret, guess))
    correct_digit_count = sum(min(secret.count(digit), guess.count(digit)) for digit in set(guess))

    return f"{correct_position_count}-{correct_digit_count - correct_position_count}"


def main():
    input_data = input().split()
    secret = input_data[0]
    num_guesses = int(input_data[1])

    guesses = input().split()

    hints = [calculate_hint(secret, guess) for guess in guesses]

    print(" ".join(hints))


if __name__ == "__main__":
    main()
