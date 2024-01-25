main:
  pull codes
  pull retrys
  solutions(codes, retrys)

solutions:
  arg codes, retrys
  parse var codes secret attempts
  call repeat 1
  say result
  exit

repeat: procedure expose retrys secret attempts
  arg count
  if count == attempts + 1 then return ''
  nearby = compare(retrys, secret, count)
  call repeat count + 1
  return nearby || ' ' || result

compare:
  arg retrys, secret, count
  num = Value(word(retrys, count))
  nums = toFragment(num)
  numsS = toFragment(secret)
  cont1 = 0
  cont2 = 0
  call conditions nums, numsS, 4
  return cont1 || '-' || cont2
  exit
  
  conditions: procedure expose cont1 cont2
    arg nums, numsS, count
    if count == 0 then return
    xR = value(word(nums, count))
    if word(numsS, count) == word(nums, count) then  cont1 = cont1 + 1
    else if word(numsS, 1) == xR then  cont2 = cont2 + 1   
    else if word(numsS, 2) == xR then  cont2 = cont2 + 1    
    else if word(numsS, 3) == xR then  cont2 = cont2 + 1
    else if word(numsS, 4) == xR then  cont2 = cont2 + 1
    call conditions nums, numsS, count - 1
    return
  

toFragment:
  arg number
  n_1 = number % 1000
  n_2 = (number % 100) // 10
  n_3 = (number % 10) // 100 // 10
  n_4 = number // 10
  return n_1 ' ' n_2 ' ' n_3 ' ' n_4
