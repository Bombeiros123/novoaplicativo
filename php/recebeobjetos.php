<?php
include('conecta.php');

session_start();

$objeto=$_POST["op1"];

$idPac=$_SESSION['idPac'];

$stmt = $pdo->prepare("INSERT INTO objetos VALUES (:idPac,:op1 )");

$stmt->bindParam(':op1', $objeto);
$stmt->bindParam(':idPac', $idPac);

// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-maria/confirmacao.html');
}