<?php
    echo("<title>PW II | Exercíco 2</title>");
    echo("<h1>Exercício 2</h1>");
    echo("<p>Criar uma página que leia o salário de um funcionário e o departamento que ele trabalha. Para o departamento Operacional, o aumento será de 15%. Para o departamento de desenvolvimento deverão ser aplicadas as seguintes regras:
    <br>
    <ul><li>Para 1.500,00 menor ou igual a salarioAtual e menor que 1.750,00: aumento igual a 12%;</li></ul>
    <ul><li>Para 1.750,00 menor ou igual a salarioAtual e menor que 2.000,00: aumento igual a 10%;</li></ul>
    <ul><li>Para 2.000,00 menor ou igual a salarioAtual e menor que 3.000,00: aumento igual a 7%;</li></ul>
    <ul><li>Para acima de 3.000,00: aumento igual a 5%.</li></ul> </p>");

    //Variávies 
    $salario = 1755;
    $departamento = "DS";

    echo("Salário sem aumento R$ ". $salario . "<br>Departamento: " . $departamento . "<br><br>");

    //Cálculo
    if($departamento == "Operacional"){
        $aumento = $salario * 1.15;
        echo("Seu salário com aumento de 15% ficará R$ ". $aumento);
    }
    else{
        if($salario < 1750){
            $aumento = $salario * 1.12;
            echo("Seu salário com aumento de 12% ficará R$ ". $aumento);
        }
        else if($salario < 2000){
            $aumento = $salario * 1.10;
            echo("Seu salário com aumento de 10% ficará R$ ". $aumento);
        }
        else if($salario < 3000){
            $aumento = $salario * 1.07;
            echo("Seu salário com aumento de 7% ficará R$ ". $aumento);
        }
        else{
            $aumento = $salario * 1.05;
            echo("Seu salário com aumento de 5% ficará R$ ". $aumento);
        };
    };
    
    
    
    echo("<br><br><a href='index.php'> <button type='button'>Voltar</button></a>");
?>