use "collections"
use "files"
use "json"

actor Main
  new create(env: Env) =>
    let storage = recover StorageRead("storage.json") else Storage(0.0, 0.0, 0.0 end)
    try
      // Get input values
      let A: F32 = env.root.read("Enter the value of A:").string().f32()?
      let B: F32 = env.root.read("Enter the value of B:").string().f32()?

      // Calculate sum
      let result: F32 = A + B

      // Print the result
      env.out.print("The sum of " + A.string() + " and " + B.string() + " is: " + result.string())

      // Update storage values
      storage.A = A
      storage.B = B
      storage.Sum = result

      // Save values to storage
      saveToStorage(storage)
    end

primitive StorageRead
  fun ref apply(fileName: String): (Storage | None) =>
    try
      let json: String = File.read(fileName)?
      let storage: Storage = recover JSON.parse[Storage](json) else return None end
      (Some(storage): (Storage | None))
    else
      None
    end

actor class Storage
  var A: F32
  var B: F32
  var Sum: F32

  new create(a: F32, b: F32, sum: F32) =>
    A = a
    B = b
    Sum = sum
end

fun saveToStorage(storage: Storage) =>
  let json: String = JSON.stringify(storage) else error end
  File.write("storage.json", json) else error end
