(* Archivo: Suma_Cadena.sml *)
(* Seishun Kyousoukyoku - Sambomaster *)

fun sumaLista [] = 0
  | sumaLista (x::xs) = x + sumaLista xs;

fun main () =
  let
    val inputString = TextIO.inputLine TextIO.stdIn
    val numeros = map (fn s => Int.fromString(String.trim s)) (String.tokens (fn c => c = #" ") (case inputString of NONE => "" | SOME str => str))
    val suma = sumaLista (map (fn x => case x of NONE => 0 | SOME n => n) numeros)
  in
    TextIO.print ("La suma de los números es: " ^ Int.toString suma ^ "\n")
  end;

val _ = main ();
