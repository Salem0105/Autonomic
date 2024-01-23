/* Rexx Solution */

main:
  conver_to()

conver_to:
  pull numbers
  amount = word(numbers, 1)
  call fahren 2
  say result
  exit

fahren: procedure expose amount numbers
  arg receive
  if receive > amount + 1 then return ''
  f = word(numbers, receive)
  round = calculate(f)
  call fahren receive + 1
  return  round || ' ' || result

calculate:
  arg f
  conver = (f - 32) * (5 / 9)
  return round(conver)

round: 
  arg n
  decimal = n // 1
  if decimal < 0 then
    do
      if decimal <= (-0.5) then
        return (n % 1) - 1
      else
        return n % 1
    end
  else
    do
      if decimal >= (0.5) then
        return (n % 1) + 1
      else
        return n % 1  
    end  
