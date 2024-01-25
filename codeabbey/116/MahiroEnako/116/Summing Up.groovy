@Grab(group='com.fasterxml.jackson.core', module='jackson-databind', version='2.13.0')
import com.fasterxml.jackson.databind.ObjectMapper
import groovy.transform.Field

@Field Storage storage = new Storage()

class Storage {
    double A = 0.0
    double B = 0.0
    double Sum = 0.0
}

def saveToStorage() {
    // Save values to internal storage
    def objectMapper = new ObjectMapper()
    new File("storage.json").text = objectMapper.writeValueAsString(storage)
}

def loadFromStorage() {
    // Load values from internal storage
    def objectMapper = new ObjectMapper()
    if (new File("storage.json").exists()) {
        storage = objectMapper.readValue(new File("storage.json"), Storage)
    }
}

// Main program
loadFromStorage()

// Get input values
print "Enter the value of A: "
double A = Double.parseDouble(System.console().readLine())

print "Enter the value of B: "
double B = Double.parseDouble(System.console().readLine())

// Calculate sum
double result = A + B

// Print the result
println "The sum of $A and $B is: $result"

// Update storage values
storage.A = A
storage.B = B
storage.Sum = result

// Save values to storage
saveToStorage()
