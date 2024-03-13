Module SkyscraperProfit
    Function CalculateProfit(ByVal N As Integer, ByVal M As Integer, ByVal X As Integer) As Integer
        Dim totalProfit As Integer = 0
        Dim increment As Integer = 0

        For floor As Integer = 0 To N - 1
            totalProfit += (X + increment) * (N \ M - (floor \ M))
            increment += If((floor + 1) Mod M = 0, 1000, 0)
        Next

        Return totalProfit
    End Function

    Function HandleTestcases(ByVal testcases As List(Of Tuple(Of Integer, Integer, Integer))) As List(Of Integer)
        Dim results As New List(Of Integer)

        For Each testcase In testcases
            Dim N As Integer = testcase.Item1
            Dim M As Integer = testcase.Item2
            Dim X As Integer = testcase.Item3
            results.Add(CalculateProfit(N, M, X))
        Next

        Return results
    End Function

    Sub Main()
        Dim T As Integer = Console.ReadLine()
        Dim testcases As New List(Of Tuple(Of Integer, Integer, Integer))

        For i As Integer = 1 To T
            Dim inputs As String() = Console.ReadLine().Split(" "c)
            Dim N As Integer = Convert.ToInt32(inputs(0))
            Dim M As Integer = Convert.ToInt32(inputs(1))
            Dim X As Integer = Convert.ToInt32(inputs(2))
            testcases.Add(New Tuple(Of Integer, Integer, Integer)(N, M, X))
        Next

        Dim results As List(Of Integer) = HandleTestcases(testcases)

        For Each result As Integer In results
            Console.Write(result & " ")
        Next
    End Sub
End Module
