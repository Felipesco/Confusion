<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <style>
            body{
                font-family: Arial, Helvetica, sans-serif;
            }
            #form{
                position: relative;
                left: 37%;
                top: 29%;
                width: 320px;
                height: 270px;
            }
            #btEnviar{
                transition: 0.5s;
            }
            #btEnviar:hover, #btEnviar:focus{
                box-shadow: 0 0 40px 40px #8fe73c inset;
            }
            #btLimpar{
                transition: 0.5s;
            }
            #btLimpar:hover, #btLimpar:focus{
                box-shadow: 0 0 40px 40px red inset;
            }
        </style>
        <title>GET & POST</title>
    </head>
    <body>
        <nav><br></nav>
        <div id="form">
            <h1>Cadastro de Aluno</h1>
            <form action="cadastraAluno.php" method="post">
                <label for="nome">Nome: </label>
                <input type="text" name="txtNome" id="txtNome" maxlength="60" required="required"> 

                <br>

                <label for="sexo">Sexo: </label>
                <input type="radio" name="rdSex" id="rdSex" value="Feminino"><label>Feminino</label>
                <input type="radio" name="rdSex" id="rdSex" value="Masculino"><label>Masculino</label>

                <br>

                <label for="dataNacimento">Data Nascto.:</label>
                <input type="date" name="dtNasc" id="dtNasc" required="required">

                <br>

                <label for="turma">Turma: </label>
                <select name="slctTurma" id="slctTurma">
                    <option value="1">1º MTec DS</option>
                    <option value="2">1º MTec Nutri</option>
                    <option value="3" selected>2º MTec DS</option>
                    <option value="4">2º MTec Nutri</option>
                    <option value="5">3º Mtec DS</option>
                    <option value="6">3º MTec Nutri</option>
                </select>

                <br><br>

                <input id="btEnviar" type="submit" value="Cadastrar">
                <button id="btLimpar" type="reset">Limpar</button>
            </form>
        </div>
    </body>
</html>