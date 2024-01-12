/* Programa REXX para calcular la suma de pares de números */

/* Lee la cuenta total de pares */
parse pull totalPares

/* Inicializa el array de resultados */
resultados = ""

/* Procesa cada par */
do i = 1 to totalPares
    /* Lee el par de números */
    parse pull par
    
    /* Divide el par en dos números */
    parse var par num1 num2
    
    /* Calcula la suma y agrega al array de resultados */
    suma = num1 + num2
    resultados = resultados || suma || " "
end

/* Muestra los resultados */
say "Resultados:" resultados
