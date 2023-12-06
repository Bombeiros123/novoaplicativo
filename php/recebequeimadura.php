<?php
include('conecta.php');

session_start();

$loc=$_POST["loc"];

$lado=$_POST["lado"];

$face=$_POST["face"];

$tipo=$_POST["tipo"];

$cabeca=$_POST["op1"];

$pescoso=$_POST["op2"];

$tant=$_POST["op3"];

$tpos=$_POST["op4"];

$genit=$_POST["op5"];

$mid=$_POST["op6"];

$mie=$_POST["op7"];

$msd=$_POST["op8"];

$mse=$_POST["op9"];

$idPac=$_SESSION['idPac'];

 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO ffelc VALUES (:loc, :lado, :face, :tipo, :op1, :op2, :op3, :op4, :op5, :op6, :op7, :op8, :op9 :idPac)");

// Bind dos parâmetros
$stmt->bindParam(':loc', $loc);
$stmt->bindParam(':lado', $lado);
$stmt->bindParam(':face', $face);
$stmt->bindParam(':tipo', $tipo);
$stmt->bindParam('op1', $cabeca);
$stmt->bindParam('op2', $pescoso);
$stmt->bindParam('op3', $tant);
$stmt->bindParam('op4', $tpos);
$stmt->bindParam('op5', $genit);
$stmt->bindParam('op6', $mid);
$stmt->bindParam('op7', $mie);
$stmt->bindParam('op8', $msd);
$stmt->bindParam('op9', $mse);
$stmt->bindParam(':idPac', $idPac);


// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-camilaS/objetos.html');
}