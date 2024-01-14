REPORT ZCALCULAR_SUMA.

DATA: total_pares TYPE i,
      i TYPE i,
      num1 TYPE i,
      num2 TYPE i,
      suma TYPE i,
      resultados TYPE TABLE OF i.

WRITE: 'Ingrese la cuenta total de pares: '.
READ total_pares.

LOOP AT resultados INTO i.
  CLEAR i.
  WRITE: 'Ingrese el primer número del par: '.
  READ num1.
  WRITE: 'Ingrese el segundo número del par: '.
  READ num2.

  suma = num1 + num2.
  APPEND suma TO resultados.
ENDLOOP.

WRITE: / 'Resultados:', /.

LOOP AT resultados INTO i.
  WRITE i.
ENDLOOP.
