public int LevenshteinDistance(string source, string target, out double percentage)
{
    percentage = 0;

    // d is a table with m+1 rows and n+1 columns
    int cost = 0;
    int m = source.Length;
    int n = target.Length;
    int[,] d = new int[m + 1, n + 1];

    // Check if there's anything to compare
    if (n == 0) return m;
    if (m == 0) return n;

    // Initialize the first column and the first row
    for (int i = 0; i <= m; d[i, 0] = i++) ;
    for (int j = 0; j <= n; d[0, j] = j++) ;

    // Iterate through the matrix filling in each of the weights
    for (int i = 1; i <= m; i++)
    {
        for (int j = 1; j <= n; j++)
        {
            // If the characters at corresponding positions are equal, the cost is 0; otherwise, it's 1
            cost = (source[i - 1] == target[j - 1]) ? 0 : 1;
            d[i, j] = System.Math.Min(System.Math.Min(d[i - 1, j] + 1,  // Deletion
                                                      d[i, j - 1] + 1),  // Insertion
                                       d[i - 1, j - 1] + cost);         // Substitution
        }
    }

    // Calculate the percentage of changes in the word
    if (m > n)
        percentage = ((double)d[m, n] / (double)m);
    else
        percentage = ((double)d[m, n] / (double)n);
    
    return d[m, n];
}
