import std.stdio;
import std.conv;
// Who - Azari
void main()
{
    int numCases;
    readf("%d", &numCases);

    for (int i = 0; i < numCases; i++)
    {
        string input;
        readf("%s", &input);

        auto pair = input.split(" ");
        double numerator = to!double(pair[0]);
        double denominator = to!double(pair[1]);

        int result = divideAndRound(numerator, denominator);
        write(result, " ");
    }
}

int divideAndRound(double numerator, double denominator)
{
    double result = round(numerator / denominator);
    return cast(int) result;
}
