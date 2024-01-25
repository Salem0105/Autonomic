use std::fs;
use std::io;

#[derive(Debug, serde::Serialize, serde::Deserialize)]
struct Storage {
    A: f64,
    B: f64,
    Sum: f64,
}

impl Default for Storage {
    fn default() -> Self {
        Storage { A: 0.0, B: 0.0, Sum: 0.0 }
    }
}

fn save_to_storage(storage: &Storage) -> Result<(), serde_json::Error> {
    let json = serde_json::to_string(storage)?;
    fs::write("storage.json", json)?;
    Ok(())
}

fn load_from_storage() -> Result<Storage, serde_json::Error> {
    if let Ok(json) = fs::read_to_string("storage.json") {
        let storage: Storage = serde_json::from_str(&json)?;
        Ok(storage)
    } else {
        Ok(Storage::default())
    }
}

fn main() {
    // Load values from internal storage
    let mut storage = load_from_storage().unwrap();

    // Get input values
    let mut input = String::new();
    println!("Enter the value of A:");
    io::stdin().read_line(&mut input).expect("Failed to read input");
    let a: f64 = input.trim().parse().expect("Invalid input");

    input.clear();

    println!("Enter the value of B:");
    io::stdin().read_line(&mut input).expect("Failed to read input");
    let b: f64 = input.trim().parse().expect("Invalid input");

    // Calculate sum
    let result = a + b;

    // Print the result
    println!("The sum of {} and {} is: {}", a, b, result);

    // Update storage values
    storage.A = a;
    storage.B = b;
    storage.Sum = result;

    // Save values to storage
    if let Err(err) = save_to_storage(&storage) {
        eprintln!("Error saving to storage: {}", err);
    }
}
