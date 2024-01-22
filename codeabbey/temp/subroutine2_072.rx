/*regina -c salem0105.rx*/

main:
  principal()

principal:
  pull amountSeed
  pull wordsN
  parse var amountSeed amount seed
  A = 445
  C = 700001
  M = 2097152
  call recursion 1
  say result
  exit

recursion: procedure expose A C M seed wordsN amount
  arg receive
  if receive > amount then return ''
  N = VALUE(word(wordsN, receive))
  set = randuim(A, C, M, seed, N)
  call recursion receive + 1
  return  set' 'result

randuim:
  parse arg A, C, M, X, N
  get = ''
  call generate_lcg A, C, M, X, N
  return get
  exit
  generate_lcg: procedure expose get seed
    parse arg A, C, M, X, N
    if N > 0 then do
      random_value = (A * X + C) // M
      seed = random_value
      get = get''seed' '
      call generate_lcg A, C, M, random_value, N - 1
    end