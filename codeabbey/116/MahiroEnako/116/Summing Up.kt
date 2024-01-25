import com.fasterxml.jackson.module.kotlin.jacksonObjectMapper
import com.fasterxml.jackson.module.kotlin.readValue
import java.io.File

data class Storage(var A: Double = 0.0, var B: Double = 0.0, var Sum: Double = 0.0)

object Program {
    private val storageFile = File("storage.json")
    private val objectMapper = jacksonObjectMapper()
    private lateinit var storage: Storage

    private fun saveToStorage() {
        // Save values to internal storage
        storageFile.writeText(objectMapper.writeValueAsString(storage))
    }

    private fun loadFromStorage() {
        // Load values from internal storage
        if (storageFile.exists()) {
            storage = objectMapper.readValue(storageFile)
        } else {
            storage = Storage()
        }
    }

    @JvmStatic
    fun main(args: Array<String>) {
        loadFromStorage()

        // Get input values
        print("Enter the value of A: ")
        val A = readLine()?.toDouble() ?: 0.0

        print("Enter the value of B: ")
        val B = readLine()?.toDouble() ?: 0.0

        // Calculate sum
        val result = A + B

        // Print the result
        println("The sum of $A and $B is: $result")

        // Update storage values
        storage.A = A
        storage.B = B
        storage.Sum = result

        // Save values to storage
        saveToStorage()
    }
}
