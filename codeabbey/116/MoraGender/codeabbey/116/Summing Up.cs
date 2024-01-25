using System;
using System.IO;
using Newtonsoft.Json;

class Program
{
    // Internal storage class
    public class Storage
    {
        public double A { get; set; }
        public double B { get; set; }
        public double Sum { get; set; }
    }

    static Storage storage;

    static void SaveToStorage()
    {
        // Save values to internal storage
        File.WriteAllText("storage.json", JsonConvert.SerializeObject(storage));
    }

    static void LoadFromStorage()
    {
        // Load values from internal storage
        try
        {
            string json = File.ReadAllText("storage.json");
            storage = JsonConvert.DeserializeObject<Storage>(json);
        }
        catch (FileNotFoundException)
        {
            storage = new Storage();
        }
    }

    static void Main()
    {
        LoadFromStorage();

        // Get input values
        Console.Write("Enter the value of A: ");
        double A = Convert.ToDouble(Console.ReadLine());

        Console.Write("Enter the value of B: ");
        double B = Convert.ToDouble(Console.ReadLine());

        // Calculate sum
        double result = A + B;

        // Print the result
        Console.WriteLine($"The sum of {A} and {B} is: {result}");

        // Update storage values
        storage.A = A;
        storage.B = B;
        storage.Sum = result;

        // Save values to storage
        SaveToStorage();
    }
}
