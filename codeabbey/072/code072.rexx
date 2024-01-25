/*regina -c salem0105.rx*/

main:
  funnyWords()

funnyWords:
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
  parse arg A, C, M, X, num_N
  get = ''
  call generate_lcg A, C, M, X, 1
  return get
  exit
  generate_lcg: procedure expose get seed N
    parse arg A, C, M, X, num_N
    if num_N <= N then do
      random_value = (A * X + C) // M
      seed = random_value
      get = get''letters(num_N, seed)''
      call generate_lcg A, C, M, random_value, num_N + 1
    end

letters:
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnprstvwxz'
  parse arg num, newLetter
  select
    when num // 2 == 0 then
      return substr(vowels, (newLetter // 5) + 1, 1)
    when num // 2 == 1 then
      return substr(consonants, (newLetter // 19) + 1, 1)
    otherwise
      return ''
  end
  return ''

/*
  cat DATA.lst | regina -e salem0105.rx
  rohame daze zemeb topumo gutihu six gozocawa mogumowa polavu codox 
  fukan niki dovicox gacor ciniveb jip vof gewoja sabuced xewog tamewawu
*/