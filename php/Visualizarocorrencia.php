<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista ocorrência</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Lista ocorrência</h1>
    <table>
        <?php
            require_once("conecta.php");
            
            session_start();
            $idPac = $_SESSION['idPac'];

            $comando = $pdo->prepare("SELECT dados_p.*, ocorrencia.* FROM dados_p INNER JOIN ocorrencia ON dados_p.idPac = ocorrencia.idPac WHERE dados_p.idPac = :idpac");
            $comando->bindParam(':idpac', $idPac);
            $comando->execute();
            $ocorr = array();
            while ($cadaOcor = $comando->fetch(PDO::FETCH_ASSOC)) {
                array_push($ocorr, $cadaOcor);
            }

            foreach ($ocorr as $c) { ?>
                <tr>
                    <td>Id Paciente: <?= $c['idPac'] ?></td>
                    <td>Nome: <?= $c['nome'] ?></td>
                    <td>CPF: <?= $c['CPF'] ?></td>
                    <td>Sexo: <?= $c['sexo'] ?></td>
                    <td>Idade: <?= $c['idade_pa'] ?></td>
                    <td>Data Ocorrência: <?= $c['data'] ?></td>
                    <td>Local: <?= $c['local'] ?></td>
                </tr>
            <?php } ?>
    </table>
</body>
</html>
