; Archivo: Suma_Cadena.cljc
;アイデン貞貞メルトダウン - Enako (えなこ)

(defn suma-lista [numeros]
  (reduce + numeros))

(defn main []
  (print "Ingrese una cadena de números separados por espacios: ")
  (flush)
  
  (let [input-string (read-line)
        numeros (map #(Integer. %) (clojure.string/split input-string #" "))]
    (let [suma (suma-lista numeros)]
      (println "La suma de los números es: " suma))))

(main)
