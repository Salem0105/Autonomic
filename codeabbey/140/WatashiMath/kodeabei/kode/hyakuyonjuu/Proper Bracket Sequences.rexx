main:
  parenthesis()

parenthesis:
  pull n
  catalan = factorial(n * 2) % (factorial(n) * factorial(n + 1)) + 1
  say catalan 
  exit

factorial: procedure
  arg n
  if n == 0 then 
    return 1
  else 
    return n * factorial(n - 1)