import json

# Initialize storage with default values
storage = {'A': 0, 'B': 0, 'Sum': 0}

def save_to_storage():
    # Save values to internal storage
    with open('storage.json', 'w') as file:
        json.dump(storage, file)

def load_from_storage():
    # Load values from internal storage
    try:
        with open('storage.json', 'r') as file:
            stored_data = json.load(file)
            storage.update(stored_data)
    except FileNotFoundError:
        pass

def main():
    load_from_storage()

    # Get input values
    A = float(input("Enter the value of A: "))
    B = float(input("Enter the value of B: "))

    # Calculate sum
    result = A + B

    # Print the result
    print(f"The sum of {A} and {B} is: {result}")

    # Update storage values
    storage['A'] = A
    storage['B'] = B
    storage['Sum'] = result

    # Save values to storage
    save_to_storage()

if __name__ == "__main__":
    main()
