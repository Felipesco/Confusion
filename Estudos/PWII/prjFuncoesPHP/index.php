<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <style>
        body{
            font-family: Arial, Helvetica, sans-serif;
        }      
        .lindokk{
            color: red;
	        animation: teste 10s infinite;
            
        }
        @keyframes teste{
            14%{color: red;}
            28%{color: orange;}
            42%{color: yellow;}
            56%{color: green;}
            70%{color: blue;}
            84%{color: indigo;}
            100%{color: violet;}
        }
        .botao{
            transition: 0.5s;
        }
        .botao:hover, .botao:focus{
            box-shadow: 0 0 40px 40px #8fe73c inset;
        }
    </style>
    <title>PW II | Home</title>
</head>
<body>
    <h1>Lista de Exercícios</h1>
    <h4 class="lindokk">Felipe Santos de Almeida - N: 09</h4> <!--Foi mal, mas achei muito legal kkkkkkk-->
    <div class=>
        <ol>
            <li>
                <p>
                    Desenvolva um programa que leia quatro notas de um aluno, calcule a média aritmética e apresente seu resultado final, conforme abaixo:
                    <br>0,0 à 4,9 – Aluno retido
                    <br>5,0 à 6,9 – Aluno em exame
                    <br>7,0 à 10 – Aluno promovido
                </p>
            </li>
            <a href="ex1.php"> <button type="button" class="botao">Resposta</button> </a>
            <br>
            <li>
                <p>
                    Criar uma página que leia o salário de um funcionário e o departamento que ele trabalha. Para o departamento Operacional, o aumento será de 15%. Para o departamento de desenvolvimento deverão ser aplicadas as seguintes regras:
                    <br>
                    <ul><li>Para 1.500,00 menor ou igual a salarioAtual e menor que 1.750,00: aumento igual a 12%;</li></ul>
                    <ul><li>Para 1.750,00 menor ou igual a salarioAtual e menor que 2.000,00: aumento igual a 10%;</li></ul>
                    <ul><li>Para 2.000,00 menor ou igual a salarioAtual e menor que 3.000,00: aumento igual a 7%;</li></ul>
                    <ul><li>Para acima de 3.000,00: aumento igual a 5%.</li></ul>
                </p>
                <a href="ex2.php"> <button type="button" class="botao">Resposta</button> </a>
            </li>
            
            <br>

            <li>
                <p>
                    Desenvolva um programa para calcular a potência de um número por uma base qualquer. O programa deverá realizar a leitura da base e do expoente.
                </p>
                <a href="ex3.php"> <button type="button" class="botao">Resposta</button> </a>
            </li>
            
            <br>
            
            <li>
                <p>
                    Desenvolva uma página que ao ler um número diga se ele é primo ou não.
                </p>
                <a href="ex4.php"> <button type="button" class="botao">Resposta</button> </a>
            </li>
            
            <br>
            <li>
                <p>
                    Desenvolva uma página para apresentar a série de Fibonacci até o N-ésimo quinto termo. A série de Fibonacci é formada pela sequência: 1,1,2,3,5,8,13,21,34,... etc. Esta série se caracteriza pela soma de um termo posterior com o seu anterior subsequente.
                </p>
                <a href="ex5.php"> <button type="button" class="botao">Resposta</button> </a>
            </li>
            
            <br>
            
            <li>
                <p>
                    Desenvolva uma página para ler um número e indicar quais números de 1 até este número são múltiplos deste número lido.
                </p>
            <a href="ex6.php"> <button type="button" class="botao">Resposta</button> </a>
            </li>
        </ol>
    </div>
</body>
</html>