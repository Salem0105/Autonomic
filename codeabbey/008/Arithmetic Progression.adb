with Ada.Text_IO;
-- Cupid (Cover Ella Freya) - Fifty Fifty
procedure Calcular_Suma is
   Total_Pares : Integer;
   Num1, Num2, Suma : Integer;
   Resultados : array (1..100) of Integer; -- Ajusta el tamaño según tus necesidades

begin
   Ada.Text_IO.Put("Ingrese la cuenta total de pares: ");
   Ada.Text_IO.Get(Total_Pares);

   for I in 1..Total_Pares loop
      Ada.Text_IO.Put("Ingrese el primer número del par: ");
      Ada.Text_IO.Get(Num1);
      Ada.Text_IO.Put("Ingrese el segundo número del par: ");
      Ada.Text_IO.Get(Num2);

      Suma := Num1 + Num2;
      Resultados(I) := Suma;
   end loop;

   Ada.Text_IO.Put_Line("Resultados:");

   for I in 1..Total_Pares loop
      Ada.Text_IO.Put(Resultados(I), 1);
      Ada.Text_IO.Put(" ");
   end loop;

end Calcular_Suma;
