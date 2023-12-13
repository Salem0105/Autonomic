%% Archivo: Suma_Cadena.erl
%%Space Song - Beach House

-module(suma_cadena).
-export([main/0, suma_lista/1]).

main() ->
    io:format("Ingrese una cadena de números separados por espacios: "),
    {ok, InputString} = io:get_line(""),
    Numeros = lists:map(fun(S) -> list_to_integer(S) end, string:tokens(InputString, " ")),
    Suma = suma_lista(Numeros),
    io:format("La suma de los números es: ~w~n", [Suma]).

suma_lista([]) -> 0;
suma_lista([X | Xs]) -> X + suma_lista(Xs).
