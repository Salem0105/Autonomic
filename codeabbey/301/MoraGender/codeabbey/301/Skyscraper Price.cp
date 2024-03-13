#include <iostream>
#include <vector>

using namespace std;

int calculateProfit(int N, int M, int X) {
    int totalProfit = 0;
    int increment = 0;

    for (int floor = 0; floor < N; ++floor) {
        totalProfit += (X + increment) * (N / M - (floor / M));
        increment += (floor + 1) % M == 0 ? 1000 : 0;
    }

    return totalProfit;
}

vector<int> handleTestcases(const vector<vector<int>>& testcases) {
    vector<int> results;

    for (const auto& testcase : testcases) {
        int N = testcase[0];
        int M = testcase[1];
        int X = testcase[2];
        results.push_back(calculateProfit(N, M, X));
    }

    return results;
}

int main() {
    int T;
    cin >> T;

    vector<vector<int>> testcases(T, vector<int>(3));

    for (int i = 0; i < T; ++i) {
        cin >> testcases[i][0] >> testcases[i][1] >> testcases[i][2];
    }

    vector<int> results = handleTestcases(testcases);

    for (int i = 0; i < T; ++i) {
        cout << results[i] << " ";
    }
    
    return 0;
}
