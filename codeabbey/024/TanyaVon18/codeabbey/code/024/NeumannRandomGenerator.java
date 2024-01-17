import java.util.ArrayList;
import java.util.List;

public class NeumannRandomGenerator {

    public static void main(String[] args) {
        int semilla = 1234;
        List<Integer> numerosGenerados = generarNeumann(semilla, 10);

        System.out.println("Números generados: " + numerosGenerados);
    }

    public static List<Integer> generarNeumann(int semilla, int cantidad) {
        List<Integer> numerosGenerados = new ArrayList<>();

        for (int i = 0; i < cantidad; i++) {
            semilla = generarSiguiente(semilla);
            numerosGenerados.add(semilla);
        }

        return numerosGenerados;
    }

    public static int generarSiguiente(int semilla) {
        int cuadrado = semilla * semilla;
        String cuadradoStr = String.valueOf(cuadrado);

        // Asegurarse de que la longitud del cuadrado sea par
        if (cuadradoStr.length() % 2 != 0) {
            cuadradoStr = "0" + cuadradoStr;
        }

        // Tomar el número en el centro del cuadrado
        int inicio = (cuadradoStr.length() / 2) - 2;
        int fin = (cuadradoStr.length() / 2) + 2;
        String nuevoStr = cuadradoStr.substring(inicio, fin);

        return Integer.parseInt(nuevoStr);
    }
}
