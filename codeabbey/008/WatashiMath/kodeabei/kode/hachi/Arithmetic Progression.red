; STYX HELIX - STYX HELIX

total-pares: to-integer ask "Ingrese la cuenta total de pares: "

resultados: make block! total-pares

repeat n total-pares [
    num1: to-integer ask "Ingrese el primer número del par: "
    num2: to-integer ask "Ingrese el segundo número del par: "
    
    append resultados num1 + num2
]

print ["Resultados:" resultados]
