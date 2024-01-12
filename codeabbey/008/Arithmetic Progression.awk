# Programa AWK para calcular la suma de pares de números

BEGIN {
    # Leer la cuenta total de pares
    printf "Ingrese la cuenta total de pares: "
    getline totalPares < "-"
}

{
    # Leer cada par y calcular la suma
    printf "Ingrese el primer número del par: "
    getline num1 < "-"
    
    printf "Ingrese el segundo número del par: "
    getline num2 < "-"

    # Calcular la suma y mostrar el resultado
    suma = num1 + num2
    printf "%d ", suma
}

END {
    print ""  # Imprimir nueva línea al final
}
