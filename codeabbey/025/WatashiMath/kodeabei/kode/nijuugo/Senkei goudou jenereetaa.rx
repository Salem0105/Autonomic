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
  get = randuim(A, C, M, X, N)
  call factorial receive - 1
  return  get '' result

randuim:
  parse arg A, C, M, X, N
  get = ''
  call generate_lcg A, C, M, X, N
  return get
  exit
  generate_lcg: procedure expose get
    parse arg A, C, M, X, N
    if N > 0 then do
      random_value = (A * X + C) // M
      get = random_value
      call generate_lcg A, C, M, random_value, N - 1
    end