<?php 
    echo("<title>PW II | Exercíco 5</title>");
    echo("<h1>Exercício 5</h1>");
    echo("Desenvolva uma página para apresentar a série de Fibonacci até o N-ésimo quinto termo. A série de Fibonacci é formada pela sequência: 1,1,2,3,5,8,13,21,34,... etc. Esta série se caracteriza pela soma de um termo posterior com o seu anterior subsequente.<br>");

    $numero = 10;
    $anterior1 = 1;
    $anterior2 = 1;

    echo("<br>Número usado: " . $numero."<br>");

    if($numero == 0 || $numero == 1 || $numero == 2 || $numero == 3){
        echo("Devido o sistema ser muito avançado, usamos o número 4 para iniciar o sistema <3 ");
    };

    for($i= 3; $i < $numero; $i++){
        $proximo = $anterior1 + $anterior2;
        echo("<br>".$proximo);
        $anterior2 = $anterior1;
        $anterior1 = $proximo;
    };

    echo("<br><br><a href='index.php'> <button type='button'>Voltar</button></a>");
?>