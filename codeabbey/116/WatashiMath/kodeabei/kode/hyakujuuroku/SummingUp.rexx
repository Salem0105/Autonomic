/* Internal storage */
storage.0 = 0.0
storage.1 = 0.0
storage.2 = 0.0

/* Function to save values to internal storage */
saveToStorage: procedure
  parse arg a, b, sum
  storage.0 = a
  storage.1 = b
  storage.2 = sum
  return

/* Function to load values from internal storage */
loadFromStorage: procedure
  return storage

/* Main program */
call loadFromStorage
a = inputValue("Enter the value of A: ")
b = inputValue("Enter the value of B: ")

/* Calculate sum */
result = a + b

/* Print the result */
say "The sum of" a "and" b "is:" result

/* Update storage values */
call saveToStorage a b result

/* Display storage values */
say "Values saved to storage:" storage.0 storage.1 storage.2

/* Function to get input from user */
inputValue: procedure
  parse arg prompt
  pull input
  return input
