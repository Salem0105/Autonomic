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
  count = 0
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

couple:procedure expose count fate
  arg each, n
  total = words(each) / 2
  if n == 0 then return 0
  c1 = word(each, n)
  c2 = word(each, n - 1)
  call to_compare c1, c2, each, words(each)
  call couple each, n - 2
  say 'count['count'] n['n']'
  if count > total then 
    fate = 1
  return

to_compare:procedure expose count
  arg c1, c2, each, n
  if n == 0 then return 0
  if (c1 == word(each, n) | c1 == word(each, n - 1)) &,
   (c2 == word(each, n) | c2 == word(each, n - 1)) then
      count = count + 1
  call to_compare c1, c2, each, n - 2
