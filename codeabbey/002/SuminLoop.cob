       IDENTIFICATION DIVISION.
       PROGRAM-ID. Suma-Cadena.

       /* STYX HELIX - MYTH & ROID - eYe's */
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Input-String     PIC X(100).
       01 Numeros          OCCURS 100 TIMES PIC 9(9).
       01 Suma             PIC 9(9).
       01 Current-Num      PIC 9(9).
       01 I                PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Ingrese una cadena de números separados por espacios: ".
           ACCEPT Input-String.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > FUNCTION LENGTH(Input-String)
               IF Input-String(I:I) = SPACE
                   CONTINUE
               ELSE
                   MOVE FUNCTION NUMVAL(Input-String(I:I)) TO Numeros(I)
               END-IF
           END-PERFORM.

           MOVE 0 TO Suma.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 100
               IF Numeros(I) = 0
                   EXIT PERFORM
               ELSE
                   ADD Numeros(I) TO Suma
               END-IF
           END-PERFORM.

           DISPLAY "La suma de los números es: " Suma.
           DISPLAY "Who? - Azari"

           STOP RUN.
