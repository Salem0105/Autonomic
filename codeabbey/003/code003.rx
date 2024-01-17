/*regina -c salem0105.rx*/

main:
  pull first_number
  sum(first_number)

sum:
  arg amount
  call factorial (amount)
  say result
  exit

  factorial: procedure
    arg receive
    if receive == 0 then return ''
    pull numbers
    element1 = word(numbers, 1)
    element2 = word(numbers, 2)
    two_elements = VALUE(element1) + VALUE(element2)
    call factorial receive - 1
    return two_elements || ' ' || result
/*
cat DATA.lst | regina -e salem0105.rx
788535 935194 1651414 1178664 500960 1043419 
987795 158078 1921927 963211 1760186
*/