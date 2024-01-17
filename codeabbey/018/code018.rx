/*regina -c salem0105.rx*/

main:
  pull first_number
  sum(first_number)

sum:
  arg amount
  call factorial (amount)
  say result
  exit

factorial: procedure
  arg receive
  if receive == 0 then return ''
  pull numbers
  element1 = VALUE(word(numbers, 1))
  element2 = VALUE(word(numbers, 2))
  root = parameters(element1, element2)
  call factorial receive - 1
  return  root || ' ' || result

parameters: 
  arg x, n
  r = 1
  call repeat r n x
  return result

repeat: 
  arg r n x
  rNew = (r + x / r) / 2
  if n > 1 then 
    return repeat(rNew n - 1 x)
  else if n == 1 then
    return Value(rNew)
  else do
    return 1
  end

/*
  cat DATA.lst | regina -e salem0105.rx
  9.1104336 8.06225775 39.5236812 14.0029495 9.21954445
  9.32737905 25.99 143.986111 70.88731 23.0217289
*/