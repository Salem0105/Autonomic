main:
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxz'
  num1 = 1967079
  palabra = letters(num1)
  say palabra
  exit

letters: procedure expose vowels consonants
  parse arg num
  if num // 2 == 0 then return substr(vowels, (num // 5) + 1, 1)
  else if num // 2 == 1 then return substr(consonants, (num // 19) + 1, 1)
  return ''