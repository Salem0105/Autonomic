z = 7
call factorial z
say z'! =' result
exit

factorial: procedure     
  arg n                  
  if n=0 then return 1
  call factorial n-1
  return  result * n