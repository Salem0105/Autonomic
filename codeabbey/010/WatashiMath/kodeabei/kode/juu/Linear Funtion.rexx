/* Function to find linear equation coefficients */
find_linear_equation: procedure expose a b
  parse arg x1 y1 x2 y2
  a = (y2 - y1) / (x2 - x1)
  b = y1 - a * x1
  return a b

/* Main program */
parse upper arg num_test_cases
do i = 1 to num_test_cases
  parse arg x1 y1 x2 y2
  call find_linear_equation x1 y1 x2 y2
  say '(' a ' ' b ')' ,
end
