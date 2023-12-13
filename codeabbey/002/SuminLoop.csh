#!/bin/csh
#Young - Vacations

echo "Ingrese una cadena de números separados por espacios: "
set input_string = "$<"

# Separar la cadena en una lista de números
set numeros = ($input_string:as:q)

# Inicializar la suma
set suma = 0

# Iterar sobre los números y sumarlos
foreach num ($numeros)
    set suma = `expr $suma + $num`
end

# Mostrar el resultado
echo "La suma de los números es: $suma"
