<?php 
    echo("<title>PW II | Exercíco 3</title>");
    echo("<h1>Exercício 3</h1>");
    echo("Desenvolva um programa para calcular a potência de um número por uma base qualquer. O programa deverá realizar a leitura da base e do expoente.<br>");

    //Variáveis
    $base = 5;
    $expoente = 3;

    /* 
    
    Primeira forma:  $resultado = pow( $base, $expoente);

    Tentei fazer com o laço FOR, mas não sei o que tava acontecendo. A resposta vinha certa, mas pareceia que o cod tava errado
    
    for($i = 1; $i <= $expoente; $i ++){
        $resultado = $base ** $expoente;
    };
    */

    // OU 

    $resultado = $base ** $expoente;

    echo("<br>Base: ". $base."<br>Expoente: ". $expoente. "<br>Resultado: ". $resultado);

    echo("<br><br><a href='index.php'> <button type='button'>Voltar</button></a>");
?>  