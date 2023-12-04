import java.util.Scanner;

public class vect_num_java {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String date = scan.nextLine();
        String[] v = date.split(" ");
        System.out.println(Integer.parseInt(v[0]) + Integer.parseInt(v[1]));
    }
}