<?php
include("conecta.php");

$Nome = $_POST['Nome'];
$CPF = $_POST['CPF'];
// $Telefone = $_POST['Telefone'];
$Email = $_POST['Email'];
$Senha = $_POST['Senha'];

$comando = $pdo->prepare("INSERT INTO cadastro (Nome, CPF, Email, Senha) VALUES ('$Nome', $CPF,'$Email','$Senha')");
$resultado = $comando->execute();

header("Location: ../tabela/index.php");
?>