nanda = main()
say nanda

main:
  cont1 = 0
  cont2 = 0
  call conditions '1 8 6 5', '1 4 9 2', 4
  return cont1 '-' cont2
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