sub calcular-suma {
    #Paradisus-Paradoxum - MYTH & ROID
    my $totalPares = prompt("Ingrese la cuenta total de pares: ").Int;
    my @resultados;

    for ^$totalPares {
        my $par = prompt("Ingrese el par de números (separados por espacio): ");
        my ($num1, $num2) = $par.split(" ").map(*.Int);
        push @resultados, $num1 + $num2;
    }

    say "Resultados: ", @resultados.join(" ");
}

calcular-suma;
