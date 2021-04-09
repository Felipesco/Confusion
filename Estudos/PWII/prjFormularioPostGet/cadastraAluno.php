<?php
    echo('<style>body{font-family: Arial, Helvetica, sans-serif;}
    .centro{position: relative; left: 37%; top: 29%; width: 320px; height: 270px;}</style>');
    $nome = $_POST['txtNome'];
    $sexo = $_POST['rdSex'];
    $dtNasc = $_POST['dtNasc'];
    $turma = $_POST['slctTurma'];

    switch ($turma){
        case 1:
            $turma = '1º MTec DS';
            break;
        case 2:
            $turma = '1º MTec Nutri';
            break;
        case 3:
            $turma = '2º MTec DS <br> A Melhor turma da Etec de Guaianazes';
            break;
        case 4: 
            $turma = '2º MTec Nutri';
            break;
        case 5:
            $turma = '3º MTec DS';
            break;
        case 6:
            $turma = '3º MTec Nutri';
            break;
    };

    function data($data){
        return date("d/m/Y", strtotime($data));
    };

    $dtNasc = data($dtNasc);

    echo(' 
    <div class = "centro">
        <h1>Cadastro Realizado!</h1>
        <h3>Informações: </h3>
        Nome: '.$nome.'<br>
        Sexo: '.$sexo.'<br>
        Data de Nascimento: '. $dtNasc.'<br>
        Turma: '.$turma.'<br><br>
        <a href="index.php">
            <button>Novo Cadastro</button> 
        </a>
    </div>');
?>