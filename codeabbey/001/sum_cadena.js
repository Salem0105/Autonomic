var cadenaNumeros = prompt();

var numeros = cadenaNumeros.split(" ");

var suma = 0;

for (var i = 0; i < numeros.length; i++) {
    var numero = parseFloat(numeros[i]);
        suma += numero;
    
}

console.log(suma);
