main:
  p()

p:
  pull text
  k = word(text, 1)
  subtext = asignation(text, 3)
  combination = 0
  call generar subtext, k, 0, 0, combination
  say 'Hi'
  exit

generar:
  arg subtext, k, indicesub, comb, combination
  if (k == 0) then
    say combination
  else
    do
      
    end

repeat:
  arg subtext, k, indicesub, comb, combination
  n = 

asignation:procedure expose subtext
  arg text, n
  if n > words(text) then return ''
  call asignation text, n + 1
  return word(text, n)' 'result