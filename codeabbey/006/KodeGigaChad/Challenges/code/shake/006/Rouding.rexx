/* 
  アイデン貞貞メルトダウン - Enako (えなこ) 
  Rexx solution
*/
main:
  rounding()

rounding:
  pull amount
  call divv (amount)
  say result
  exit

divv: procedure
  arg receive
  if receive == 0 then return ''
  pull numbers
  n1 = word(numbers, 1)
  n2 = word(numbers, 2)
  round = parameters(n1, n2)
  call divv receive - 1
  return  round || ' ' || result

parameters: 
  arg n1, n2
  new_n = n1 / n2
  decimal = new_n // 1
  if decimal < 0 then
    do
      if decimal <= (-0.5) then
        return (new_n % 1) - 1
      else
        return new_n % 1
    end
  else
    do
      if decimal >= (0.5) then
        return (new_n % 1) + 1
      else
        return new_n % 1  
    end