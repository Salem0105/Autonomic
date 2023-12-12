Module Module1
    Sub Main()
        Dim inputString As String = Console.ReadLine()

        Dim numeros() As String = inputString.Split(" "c)
        Dim suma As Integer = 0

        For Each numero As String In numeros
            suma += Integer.Parse(numero)
        Next

        Console.WriteLine("La suma de los números es: " & suma)
    End Sub
End Module
