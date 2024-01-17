main:
  pull number1
  pull number2
  solutions(number1, number2)

solutions:
  arg amount, numbers
  call repeat amount
  say result
  exit

repeat: procedure expose numbers
  arg count
  if count == 0 then return ''
  howOften = bucle(numbers, count)
  call repeat count - 1
  return result || ' ' || howOften

bucle:
  arg numbers, count
  xValue = value(word(numbers, count))
  cont = 0
  xnewValue = xValue
  call dopa xnewValue, cont, xValue
  return cont
  exit
  
dopa: procedure
  arg xnewValue, cont, xValue
  say xValue '' xnewValue
  squared = xnewValue ** 2
  truncated = (squared % 100) // 10000
  if xValue = truncated then return cont
  return dopa(truncated, cont + 1, xValue)
