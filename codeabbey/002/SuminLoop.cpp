//Paradisus-Paradoxum - MYTH & ROID
#include <iostream>
#include <sstream>
#include <vector>

int main() {
    std::cout << "Ingrese una cadena de números separados por espacios: ";
    std::string inputString;
    std::getline(std::cin, inputString);

    std::istringstream iss(inputString);
    std::vector<int> numeros;

    int currentNum;
    while (iss >> currentNum) {
        numeros.push_back(currentNum);
    }

    int suma = 0;
    for (int num : numeros) {
        suma += num;
    }

    std::cout << "La suma de los números es: " << suma << std::endl;

    return 0;
}
