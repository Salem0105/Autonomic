cadena_numeros = input()

numeros = cadena_numeros.split()

suma = 0

for numero_str in numeros:
        numero = float(numero_str)
        suma += numero
    
print(suma)
