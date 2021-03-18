<?php 
    echo("<title>PW II | Exercíco 4</title>");
    echo("<h1>Exercício 4</h1>");
    echo("Desenvolva uma página que ao ler um número diga se ele é primo ou não.<br><br>");

    $numero = 521; 

    echo("Resposta: ");

    for ($i = 2; $i < $numero; $i++){
        if($numero % $i == 0){
            echo("O número ". $numero." NÃO é primo");
            break;
        }
        //KKKKKKKKKKKKKKKKKK Eu não tô acreditando que pegou KKKKKKKKKKKKKK
        //Coloquei o break como última esperença KKKKKKKK
        //Tiva tentando de tudo, sério
        else{
            echo("O número ". $numero." é primo");
            break;
        };
    }

    echo("<br><br><a href='index.php'> <button type='button'>Voltar</button></a>");
?>