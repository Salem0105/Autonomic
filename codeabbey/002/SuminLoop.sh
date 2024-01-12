#!/bin/bash
# Redo - Konomi Suzuki - 鈴木このみ
read input_string

# Dividir la cadena en un array
IFS=" " read -ra numeros <<< "$input_string"

# Inicializar la suma
suma=0

# Iterar sobre los números y sumarlos
for num in "${numeros[@]}"; do
  suma=$((suma + num))
done

# Mostrar el resultado
echo "La suma de los números es: $suma"
