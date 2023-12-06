<?php
include('conecta.php');
session_start();

$psiquiatrico=$_POST["op1"];

$respiratorio=$_POST["op2"];

$diabetes=$_POST["op3"];

$obstetrico=$_POST["op4"];

$transporte=$_POST["op5"];

$idPac=$_SESSION['idPac'];

 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO problemas 
 VALUES (:op1, :op2, :op3, :op4, :op5, :idpac)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $psiquiatrico);
$stmt->bindParam(':op2', $respiratorio);
$stmt->bindParam(':op3', $diabetes);
$stmt->bindParam(':op4', $obstetrico);
$stmt->bindParam(':op5', $transporte);
$stmt->bindParam(':idpac', $idPac);


// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-maria/queimadura.html');
}