<?php
include("conecta.php");

$id = $_GET["id_usuario"];


    $comando = $pdo->prepare("DELETE FROM cadastro WHERE id_usuario=$id");
    $resultado = $comando->execute();

    header("Location: editcountsadm.php");




?>