<?php

include('conecta.php');
session_start();
$Abertura_ocular=$_POST["op1"];

$Resposta_verbal=$_POST["op2"];

$Resposta_motora=$_POST["op3"];

$idPac=$_SESSION['idPac'];

 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO avaliacao (Abertura_ocular, Resposta_verbal,Resposta_motora, idPac) VALUES (:op1, :op2, :op3, :idpac)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $Abertura_ocular);
$stmt->bindParam(':op2', $Resposta_verbal);
$stmt->bindParam(':op3', $Resposta_motora);
$stmt->bindParam(':idpac', $idPac);


// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-camilaS/sinais_vitais.html');
}