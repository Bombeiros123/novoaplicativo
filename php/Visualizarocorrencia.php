<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista ocorrência</title>
</head>
<body>
    <h1>Lista ocorrência
</h1>
<table>
    <?php
        require_once("conecta.php");
        
        session_start();
        $idPac = $_SESSION['idPac'];

        $comando = $pdo->prepare("SELECT dados_p.*, ocorrencia.* FROM dados_p inner join ocorrencia ON dados_p.idPac = ocorrencia.idPac where dados_p.idPac = :idpac");
        $comando->bindParam(':idpac',$idPac);
        $comando->execute();
        
        $ocorr = array();

        while($cadaOcor = $comando->fetch(PDO::FETCH_ASSOC)){
                
            array_push($ocorr,$cadaOcor);
        }

        foreach($ocorr as $c) { ?> 
            
                <p>Id Paciente: <?=$c['idPac']?></p>
                <p>Nome: <?=$c['nome']?></p>
                <p>Idade: <?=$c['idade_pa']?></p>
                <p>Sexo: <?=$c['sexo']?></p>
                <p>CPF: <?=$c['CPF']?></p>
                <p>Data Ocorrência: <?=$c['data']?></p>
                <p>Local: <?=$c['local']?></p>
                <p>Tipo ocorrencia: <?=$c['atropelamento']?></p>
                <!-- <p>Nome: <?=$c['nome']?></p>
                <p>Idade: <?=$c['idade_pa']?></p>
                <p>Sexo: <?=$c['sexo']?></p>
                <p>CPF: <?=$c['CPF']?></p>
                <p>Data Ocorrência: <?=$c['data']?></p>
                <p>Local: <?=$c['local']?></p> -->
                
                    
            <?php } ?>
        </table>


        
</body>
</html>