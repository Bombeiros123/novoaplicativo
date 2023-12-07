<?php
include('conecta.php');

session_start();

$op1=$_POST["op1"];

$op2=$_POST["op2"];

$op3=$_POST["op3"];

$tipo=$_POST["op4"];

$cabeca=$_POST["op5"];

$pescoso=$_POST["op6"];

$tant=$_POST["op7"];

$tpos=$_POST["op8"];

$genit=$_POST["op9"];

$mid=$_POST["op10"];

$mie=$_POST["op11"];

$msd=$_POST["op12"];

$mse=$_POST["op13"];

$idPac=$_SESSION['idPac'];

 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO ffelc VALUES (:op1, :op2, :op3, :op4, :op5, :op6, :op7, :op8, :op9, :op10, :op11, :op12, :op13, :idPac)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $op1);
$stmt->bindParam(':op2', $op2);
$stmt->bindParam(':op3', $op3);
$stmt->bindParam(':op4', $op4);
$stmt->bindParam('op5', $cabeca);
$stmt->bindParam('op6', $pescoso);
$stmt->bindParam('op7', $tant);
$stmt->bindParam('op8', $tpos);
$stmt->bindParam('op9', $genit);
$stmt->bindParam('op10', $mid);
$stmt->bindParam('op11', $mie);
$stmt->bindParam('op12', $msd);
$stmt->bindParam('op13', $mse);
$stmt->bindParam(':idPac', $idPac);


// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-camilaS/objetos.html');
}