<?php
    // CONEXÃO COM A BASE DE DADOS: verifique sempre o dbname
    try{
        $pdo = new PDO("mysql:dbname=bombeiro1;host=localhost;charset=utf8","root","");
    }
    catch(PDOException $erro)
    {
        echo("ERRO NA CONEXÃO: <br>".$erro->getMessage());
    }

?>