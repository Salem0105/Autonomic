with Ada.Text_IO;
-- 一次又一次(第五季片头歌) 群星
procedure Suma_Cadena is
   Input_String : String(1..100); 
   Suma         : Integer := 0;
   Current_Num  : Integer := 0;

begin
   Ada.Text_IO.Get_Line(Input_String, Last => Current_Num);

   while Current_Num > 0 loop
      Suma := Suma + Current_Num;
      Ada.Text_IO.Get_Line(Input_String, Last => Current_Num);
   end loop;

   Ada.Text_IO.Put_Line("La suma de los números es: " & Integer'Image(Suma));
end Suma_Cadena;
