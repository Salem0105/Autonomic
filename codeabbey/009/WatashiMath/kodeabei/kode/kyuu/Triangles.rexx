/* Rexx solution */

main:
  bin()

bin:
  pull n
  call verify n
  say result
  exit

verify: procedure
  arg n
  if n == 0 then return ''
  pull trio
  a = word(trio, 1)
  b = word(trio, 2)
  c = word(trio, 3)
  is_true = compare(a, b, c)
  call verify n - 1
  return is_true '' result
  
compare:
  arg a, b, c
  if (a + b) > c & (a + c) > b & (b + c) > a then
    return '1'
  else 
    return '0'