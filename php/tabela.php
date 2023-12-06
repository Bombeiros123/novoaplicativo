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
        

        $comando = $pdo->prepare("SELECT dados_p.* FROM dados_p");
        //$comando->bindParam(':id',$id);
        $comando->execute();
        
        $ocorr = array();

        while($cadaOcor = $comando->fetch(PDO::FETCH_ASSOC)){
                
            array_push($ocorr,$cadaOcor);
        }

        foreach($ocorr as $c) { ?> 
            <tr>
                <td>Id Paciente: <?=$c['idPac']?></td>
                <td>Nome: <?=$c['nome']?></td>
                <td>Idade: <?=$c['idade_pa']?></td>
                <td>Sexo: <?=$c['sexo']?></td>
                <td>CPF: <?=$c['CPF']?></td>
                <td>Data Ocorrência: <?=$c['data']?></td>
                <td>Local: <?=$c['local']?></td>
                <!-- <td><form action= 'excluir.php'method= "get">
                    <input type= 'hidden' name='idPac'
                    value='<?=$c['idPac']?>'>
                    
                    <button type= 'submit'> Apagar </button></form>
                    <td> -->

                    <td><form action= 'Visualizarocorrencia.php'method= "get">
                    <input type= 'hidden' name='idPac'
                    value='<?=$c['idPac']?>'>
                    
                    <button type= 'submit'> Visualizar ocorrência </button></form>
                    <td>
                    </tr>
            <?php } ?>
        </table>
 
        
</body>
</html>