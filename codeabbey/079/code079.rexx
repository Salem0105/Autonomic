main:
  path()

path:
  pull number
  call route number
  say result
  exit

route: procedure
  arg n
  if n == 0 then return ''
  pull codes
  each = ''
  fate = 0  
  vertice = cities(2, codes)
  call couple each, words(each)
  call route n - 1
  return fate' 'result

cities: procedure expose each
  arg n_road, vertices
  roads = value(word(vertices, 1)) + 2
  if n_road == roads then return ''
  vert = word(vertices, n_road)
  each = each || substr(vert, 1, 1)' 'substr(vert, 3, 1)' '
  call cities n_road + 1, vertices
  return each

couple:procedure expose cont1 cont2 fate
  arg each, n
  total = words(each) / 2
  if n == 0 then return 0
  c1 = word(each, n)
  c2 = word(each, n - 1)
  cont1 = 0
  cont2 = 0
  vary = 0
  call to_compare c1, c2, each, words(each)
  fate = vary
  call couple each, n - 2
  return

to_compare:procedure expose cont1 cont2 vary
  arg c1, c2, each, n
  if n == 0 then return 0
  x1 = word(each, n)
  x2 = word(each, n - 1)
  
  if c1 == x1 | c1 == x2 then
    cont1 = cont1 + 1
  say c1'?'x1 '-' c1'?'x2 '['c1'-'cont1']'
  
  if c2 == x1 | c2 == x2 then
    cont2 = cont2 + 1
  say c2'?'x1 '-' c2'?'x2 '['c2'-'cont2']'
  if cont1 > 1 & cont2 > 1 then
    vary = 1 
  
  call to_compare c1, c2, each, n - 2
  return