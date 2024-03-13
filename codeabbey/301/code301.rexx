main: 
  profit()

profit:
  pull num
  call receive num
  say result
  exit

receive:procedure
  arg num
  if num == 0 then return ''
  pull data
  N = VALUE(word(data, 1))
  M = VALUE(word(data, 2))
  X = VALUE(word(data, 3))
  SKP = 0
  call calculate N, M, X, 0
  call receive num - 1
  return SKP || ' ' || result

calculate:procedure expose SKP
  arg N, M, X, floor
  if floor > N then return 0
  current = X + (floor / M) * 1000
  group = min(M, N - floor)
  SKP = SKP + (current * group)
  call calculate N, M, X, floor + M
  return '' 