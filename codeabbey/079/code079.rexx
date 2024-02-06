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
  vertice = cities(2, codes)
  repeat = word(vertices, 1)
  c = couple(repeat)
  call route n - 1
  return c' 'result

cities: procedure expose each
  arg n_road, vertices
  roads = value(word(vertices, 1)) + 2
  if n_road == roads then return ''
  vert = word(vertices, n_road)
  each = each || substr(vert, 1, 1)' 'substr(vert, 3, 1)' '
  call cities n_road + 1, vertices
  return each

couple:procedure expose each
  arg n
  if n == 0 then return ''
  count = 0
  couple1 = word(each, n)
  couple2 = word(each, n + 1)
  cycle = words(each)
  call to_compare couple1, couple2, cycle
  if count > 1 then
    return 1
  else
    return 0
  call couple n - 1

to_compare:procedure expose each count
  arg c1, c2, n
  if n == 0 then return ''
  if c1 == word(each, n) | c1 == word(each, n - 1) &,
  c2 == word(each, n) | c2 == word(each, n - 1) then
    count = count + 1
  call to_compare c1, c2, n - 2
