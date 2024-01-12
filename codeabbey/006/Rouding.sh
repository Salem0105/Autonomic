#!/bin/bash
# JINGO JUNGLE - MYTH & ROID

divide_and_round() {
    local numerator=$1
    local denominator=$2
    result=$(echo "($numerator / $denominator) + 0.5" | bc)
    echo $result | awk '{print int($1)}'
}

# Leer el número de casos
read num_cases

# Procesar cada caso
for ((i=0; i<num_cases; i++)); do
    read pair
    numerator=$(echo $pair | cut -d' ' -f1)
    denominator=$(echo $pair | cut -d' ' -f2)
    result=$(divide_and_round $numerator $denominator)
    echo -n "$result "
done

# Salto de línea al final
echo
