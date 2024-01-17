import java.util.ArrayList;
import java.util.List;

public class FunnyWordsGenerator {

    public static void main(String[] args) {
        // Example usage
        long seed = 0L;
        int wordLength = 6;
        List<Long> randomNumbers = generateRandomNumbers(seed, wordLength);

        String randomWord = generateRandomWord(randomNumbers);
        System.out.println("Random Word: " + randomWord);
    }

    public static List<Long> generateRandomNumbers(long seed, int count) {
        final int A = 445;
        final int C = 700001;
        final int M = 2097152;
        long Xn = seed;
        List<Long> randomNumbers = new ArrayList<>();

        for (int i = 0; i < count; i++) {
            Xn = (A * Xn + C) % M;
            randomNumbers.add(Xn);
        }

        return randomNumbers;
    }

    public static String generateRandomWord(List<Long> randomNumbers) {
        String consonants = "bcdfghjklmnprstvwxz";
        String vowels = "aeiou";
        StringBuilder word = new StringBuilder();

        for (long number : randomNumbers) {
            int index = (int) (word.length() % 2 == 0 ? (number % consonants.length()) : (number % vowels.length()));

            char letter = (char) (word.length() % 2 == 0 ? consonants.charAt(index) : vowels.charAt(index));
            word.append(letter);
        }

        return word.toString();
    }
}
