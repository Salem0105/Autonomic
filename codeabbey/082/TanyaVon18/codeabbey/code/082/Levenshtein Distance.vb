Public Function Levenshtein(ByVal s1 As String, ByVal s2 As String) As Integer
    Dim cost As Integer = 0
    Dim n1 As Integer = s1.Length
    Dim n2 As Integer = s2.Length
    Dim m As Integer(,) = New Integer(n1, n2) {}
    For i As Integer = 0 To n1
        m(i, 0) = i
    Next
    For i As Integer = 0 To n2
        m(0, i) = i
    Next
    For i1 As Integer = 1 To n1
        For i2 As Integer = 1 To n2
            cost = If((s1(i1 - 1) = s2(i2 - 1)), 0, 1)
            m(i1, i2) = Math.Min(Math.Min(m(i1 - 1, i2) + 1, m(i1, i2 - 1) + 1), m(i1 - 1, i2 - 1) + coste)
        Next
    Next
    Return m(n1, n2)
End Function