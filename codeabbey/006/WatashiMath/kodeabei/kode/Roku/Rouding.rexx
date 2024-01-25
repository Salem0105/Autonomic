/* アイデン貞貞メルトダウン - Enako (えなこ) */
main: procedure
  parse pull numCases

  do i = 1 to numCases
    parse pull pair
    parse var pair numerator denominator
    result = divideAndRound(numerator, denominator)
    say result,
  end

  exit

/* Función para dividir y redondear */
divideAndRound: procedure expose round

  parse arg numerator denominator
  result = round(numerator / denominator)
  return result

/* Función de redondeo */
round: procedure
  parse arg num
  return num + 0.5

call main
