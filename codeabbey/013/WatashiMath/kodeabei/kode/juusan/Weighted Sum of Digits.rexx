weightedSumOfDigits: procedure expose i
  parse arg value
  sum = 0
  do i = 1 to length(value)
    sum = sum + (i * value[i])
  end
  return sum
weightedSumOfDigits

/*Read the number of test cases*/
parse pull numTestCases

/*Read the values and calculate the weighted sum of digits for each*/
parse pull testValues
results = ""
do value over testValues
  results = results || weightedSumOfDigits(value) || ' '
end

/* Print the results separated by spaces*/
say results
