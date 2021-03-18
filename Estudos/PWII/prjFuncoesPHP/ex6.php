<?php 
    echo("<title>PW II | Exercíco 6</title>");
    echo("<h1>Exercício 6</h1>");
    echo("Desenvolva uma página para ler um número e indicar quais números de 1 até este número são múltiplos deste número lido.<br><br>");

    $numero = 35;

    echo("<br>Os multiplos de " . $numero." são:<br>");

    for($i = 1; $i <= $numero; $i++){
        if($numero % $i == 0){
            echo($i."<br>");
        };

    };


    echo("<br><br><a href='index.php'> <button type='button'>Voltar</button></a>");
?>