/* アイデン貞貞メルトダウン - Enako (えなこ) */

parse pull totalPares

resultados = ""

do i = 1 to totalPares
    parse pull par
    
    parse var par num1 num2
    
    suma = num1 + num2
    resultados = resultados || suma || " "
end

say "Resultados:" resultados
