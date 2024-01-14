(* Filament  妖精帝國 - Yousei Teikoku *)
fun main() =
    let
        val numCases = readLn()
    in
        processCases(numCases)
    end

(* Función para procesar cada caso *)
and processCases 0 = ()
  | processCases n =
    let
        val pair = String.tokens Char.isSpace (readLn())
        val numerator = Real.fromString (List.nth (pair, 0))
        val denominator = Real.fromString (List.nth (pair, 1))
        val result = Option.valOf (divideAndRound (numerator, denominator))
    in
        print (Int.toString result ^ " ");
        processCases (n - 1)
    end

(* Función para dividir y redondear *)
and divideAndRound (numerator, denominator) =
    let
        val result = Real.round (numerator / denominator)
    in
        if Real.isNan result then NONE
        else SOME (Int.round (result))
    end

(* Ejecutar la función principal *)
val _ = main()
