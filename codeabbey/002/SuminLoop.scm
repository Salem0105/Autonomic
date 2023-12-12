;; Archivo: Suma_Cadena.scm

(define (suma-lista numeros)
  (if (null? numeros)
      0
      (+ (car numeros) (suma-lista (cdr numeros)))))

(define (main)
  (flush-output-port)

  (define input-string (read-line))
  (define numeros (map string->number (string-split input-string " ")))
  (define suma (suma-lista numeros))

  (display "La suma de los números es: ")
  (display suma)
  (newline))

(main)
