to_compare:procedure expose each cont1 cont2
  arg c1, c2, n
  if n == 0 then return 0
  if c1 == word(each, n) | c1 == word(each, n - 1) then
    cont1 = cont1 + 1
  if c2 == word(each, n) | c2 == word(each, n - 1) then
    cont2 = cont2 + 1
  call anything c1, c2, n - 2