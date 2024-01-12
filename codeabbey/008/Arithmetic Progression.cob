       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calcular-Suma.
       /* Kiss Me More (feat. SZA) - Doja Cat*/
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Total-Pares        PIC 9(3).
       01 Num1               PIC 9(5).
       01 Num2               PIC 9(5).
       01 Suma               PIC 9(6).
       01 Resultados         PIC 9(6) OCCURS 100 TIMES.
       01 I                  PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Ingrese la cuenta total de pares: ".
           ACCEPT Total-Pares.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > Total-Pares
               DISPLAY "Ingrese el primer número del par: ".
               ACCEPT Num1
               DISPLAY "Ingrese el segundo número del par: ".
               ACCEPT Num2

               COMPUTE Suma = Num1 + Num2
               MOVE Suma TO Resultados(I)
           END-PERFORM.

           DISPLAY "Resultados:".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > Total-Pares
               DISPLAY Resultados(I)
           END-PERFORM.

           STOP RUN.
