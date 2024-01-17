import java.util.Scanner;

public class BullsandCows {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        String[] input = scanner.nextLine().split(" ");
        String secret = input[0];
        

        String[] guesses = scanner.nextLine().split(" ");

        for (String guess : guesses) {
            String hint = calculateHint(secret, guess);
            System.out.print(hint + " ");
        }

        scanner.close();
    }

    public static String calculateHint(String secret, String guess) {
        int correctPositionCount = 0;
        int correctDigitCount = 0;

        for (int i = 0; i < secret.length(); i++) {
            if (secret.charAt(i) == guess.charAt(i)) {
                correctPositionCount++;
            } else if (secret.contains(String.valueOf(guess.charAt(i)))) {
                correctDigitCount++;
            }
        }

        return correctPositionCount + "-" + correctDigitCount;
    }
}
