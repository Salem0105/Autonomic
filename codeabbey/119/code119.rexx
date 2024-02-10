/*regina -c salem0105.rx*/

main:
  fibonacci()

fibonacci:
  pull nums
  N = word(nums, 1)
  f0 = word(nums, 2)
  f1 = word(nums, 3)
  call repeat N, f0, f1
  say result
  exit

repeat:procedure
  arg N, f0, f1
  if N == -1 then return f0
  else if N == 1 then return f0 + f1
  else 
    do
    new = f0 + f1
    f0 = f1
    f1 = new
    end
  call repeat N - 1, f0, f1, new
  return f1'' result 

/*
cat DATA.lst | regina -e salem0105.rx
8 14 22 36 58 94 152 246 398
*/