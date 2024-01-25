/*regina -c salem0105.rx*/

main:
  sum()

sum:
  pull amount
  call factorial amount
  say result
  exit

factorial: procedure
  arg receive
  if receive == 0 then return ''
  pull numbers
  A = VALUE(word(numbers, 1))
  C = VALUE(word(numbers, 2))
  M = VALUE(word(numbers, 3))
  X = VALUE(word(numbers, 4))
  N = VALUE(word(numbers, 5))
  summation = generate_lcg(A, C, M, X, N)
  call factorial receive - 1
  return  summation || ' ' || result

generate_lcg: procedure
  parse arg A, C, M, seed, num_values
  random_value = 0
  do i = 1 to num_values
    random_value = (a * seed + c) // m
    seed = random_value
  end
  return random_value