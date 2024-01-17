/*
 regina -c salem0105.rx
*/

main:
  sum()

sum:
  pull x
  nums = words(x)
  call factorial nums
  say result
  exit
  factorial: procedure expose x
    arg n
    if n = 0 then return 0
    element = word(x,n)
    call factorial n - 1
    return result + element

/*
  cat DATA.lst | regina -e salem0105
  27685
*/