public class DiamondPattern {
    public static void main(String[] args) {
        

        // Ask user for the number of rows for the upper half of the diamond
        System.out.print("Enter the number of rows: ");
        int n = 8;

        // Upper half of the diamond
        for (int i = 1; i <= n; i++) {
            // Print spaces
            for (int j = i; j < n; j++) {
                System.out.print(" ");
            }
            // Print stars
            for (int j = 1; j <= (2 * i - 1); j++) {
                System.out.print("*");
            }
            System.out.println(); // Move to the next line after each row
        }

        // Lower half of the diamond
        for (int i = n - 1; i >= 1; i--) {
            // Print spaces
            for (int j = n; j > i; j--) {
                System.out.print(" ");
            }
            // Print stars
            for (int j = 1; j <= (2 * i - 1); j++) {
                System.out.print("*");
            }
            System.out.println(); // Move to the next line after each row
        }

        
    }
}

