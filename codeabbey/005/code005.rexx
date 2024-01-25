/* Rexx solution --salem0105 */
main:
  less()

less:
  pull amount
  call each_par (amount)
  say result
  exit

each_par: procedure
  arg receive
  if receive == 0 then return ''
  pull numbers
  n1 = word(numbers, 1)
  n2 = word(numbers, 2)
  n3 = word(numbers, 3)
  smaller = parameters(n1, n2, n3)
  call each_par receive - 1
  return  smaller || ' ' || result

parameters: 
  arg n1, n2, n3
  if n3 > n1 & n1 < n2 then return n1
  else if n1 > n2 & n2 < n3 then return n2
  else if n2 > n3 & n3 < n1 then return n3
  else NOP  