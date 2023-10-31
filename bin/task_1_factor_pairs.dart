// Task 1: Finding Factor Pairs
void main() {
  // Define the target sum to find factor pairs for
  int targetSum = 900900;
  
  // Generate and print factor pairs
  generateFactorPairs(targetSum);
}

// Function to generate factor pairs for a given target sum
void generateFactorPairs(int targetSum) {
  // Initialize a list to store factor pairs
  List<List<int>> factorPairs = [];
  
  // Iterate through potential first factors
  for (int factor1 = 1; factor1 <= (targetSum / 2).floor(); factor1++) {
    // Ensure that factor1 is a divisor of the target sum
    if (targetSum % factor1 == 0) {
      // Calculate the corresponding factor2
      int factor2 = targetSum ~/ factor1;
      
      // Ensure factor1 is less than or equal to factor2
      if (factor1 <= factor2) {
        // Add the factor pair to the list
        factorPairs.add([factor1, factor2]);
      }
    }
  }
  
  // Print the factor pairs
  for (int i = 0; i < factorPairs.length; i++) {
    int factor1 = factorPairs[i][0];
    int factor2 = factorPairs[i][1];
    print("$factor1 * $factor2 = $targetSum");
  }
}
