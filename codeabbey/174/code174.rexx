main:
  pi()

pi:
  pull nums
  parse var nums K N 
  R = 10 ** K
  D = R 
  sides = 6 * 2 ** N 
  pipi = calculate(N)
  say pipi
  exit

calculate:procedure expose R D sides
  arg N
  if N == 0 then return 0
  f = D // 2
  h = ((R ** 2 - f ** 2) ** 0.5)
  x = ((f ** 2 + (R - h) ** 2) ** 0.5)
  D = x * 2
  call calculate N - 1
  return sides * D // 2