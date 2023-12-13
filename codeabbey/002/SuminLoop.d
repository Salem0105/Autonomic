// Archivo: Suma_Cadena.d
//Shy - BoyWithUke

import std.stdio;
import std.conv;

int main()
{
    write("Ingrese una cadena de números separados por espacios: ");
    string inputString;
    readf("%s", &inputString);

    int[] numeros;
    foreach (token; inputString.split(' '))
    {
        numeros ~= to!int(token);
    }

    // Calcular la suma
    int suma = 0;
    foreach (num; numeros)
    {
        suma += num;
    }

    // Mostrar el resultado
    writeln("La suma de los números es: ", suma);

    return 0;
}
