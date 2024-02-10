/*Regina solution*/

main:
  sum()

sum:
  pull amount
  call factorial (amount)
  say result
  exit

factorial: procedure
  arg receive
  if receive == 0 then return ''
  pull numbers
  parse var numbers A B C
  operation = (A * B) + C
  digit = 0
  call last operation
  call factorial receive - 1
  return digit || ' ' || result

last:procedure expose digit
  arg n
  if n == 0 then return 0
  digit = digit + (n // 10)
  call last n % 10
  return
