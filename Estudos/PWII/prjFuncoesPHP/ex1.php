<?php 
    echo("<title>PW II | Exercíco 1</title>");
    echo("<h1>Exercício 1</h1>
        <p>Desenvolva um programa que leia quatro notas de um aluno, calcule a média aritmética e apresente seu resultado final, conforme abaixo:
        <br>0,0 à 4,9 – Aluno retido
        <br>5,0 à 6,9 – Aluno em exame
        <br>7,0 à 10 – Aluno promovido</p><br>");

    //Atribuição das notas
    $nota1 = 8;
    $nota2 = 6.5;
    $nota3 = 5.9; 
    $nota4 = 6;
    echo("Notas sendo usadas:<br>". $nota1."<br>". $nota2."<br>" . $nota3."<br>". $nota4."<br><br>"  );

    //Calculo
    $media = ($nota1 + $nota2 + $nota3 + $nota4) / 4; 
    echo("A média do aluno é: ". $media."<br>");


    if($media <= 4.9){
        echo("Auluno retido<br>");
    } 
    elseif($media <= 6.9){
        echo("Aluno em exame<br>");
    } 
    else{
        echo("Aluno promovido!!<br>");
        //Acho que eu poderia usar um if né
        switch($media){
            case 7:
                echo("Foi por pouco em... Esude mais!");
                break;
        };
    };

    echo("<br><br><a href='index.php'> <button type='button'>Voltar</button></a>");
?>