REPORT ZSUMA_NUMEROS.

DATA: input_string TYPE string,
      numbers TYPE TABLE OF i,
      current_num TYPE i,
      suma TYPE i VALUE 0.

WRITE: / 'Ingrese una cadena de números separados por espacios: '.

LOOP AT numbers INTO current_num.
  suma = suma + current_num.
ENDLOOP.

WRITE: / 'La suma de los números es: ', suma.