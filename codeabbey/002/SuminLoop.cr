# Archivo: Suma_Cadena.cr
#This game - Konomi Suzuki

def main
  print "Ingrese una cadena de números separados por espacios: "
  input_string = gets.chomp

  # Convertir la cadena en una lista de números
  numeros = input_string.split(' ').map { |str| str.to_i }

  # Calcular la suma
  suma = numeros.reduce(0) { |acc, num| acc + num }

  # Mostrar el resultado
  puts "La suma de los números es: #{suma}"
end

main
