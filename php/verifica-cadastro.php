<?php
include("conecta.php");

$nome = $_POST['nome'];
$cep = $_POST['cep'];
$senha = $_POST['senha'];
$confsenha = $_POST['confsenha'];

$comando = $pdo->prepare("INSERT INTO cadastro VALUES ('$nome', '$cep', '$senha',null)");
$resultado = $comando->execute();
$matricula=$pdo->lastInsertId();
$comando = $pdo->prepare("INSERT INTO `login` VALUES ('$nome', $senha,$matricula)");
$resultado = $comando->execute();
header("Location: ../html-camilaS/index.html");
?>