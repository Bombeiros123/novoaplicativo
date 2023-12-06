<?php

session_start();
include('conecta.php');

$usb=$_POST["op1"];

if (isset($_POST["op2"]))
{
    $ir = $_POST["op2"];
}

$nrocor=$_POST["op3"];

$ps=$_POST["op4"];

$desp=$_POST["op5"];


if (isset($_POST["op6"]))
{
    $hch = $_POST["op6"];
}

$kmfim=$_POST["op7"];

$sus=$_POST["op8"];
$idPac=$_SESSION['idPac'];


 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO ambulancia (usb, ir, ocorrencia, ps, desp, hch, km, cod, idPac) 
 VALUES (:op1, :op2, :op3, :op4, :op5, :op6, :op7, :op8, :idpac)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $usb);
$stmt->bindParam(':op2', $ir);
$stmt->bindParam(':op3', $nrocor);
$stmt->bindParam(':op4', $ps);
$stmt->bindParam(':op5', $desp);
$stmt->bindParam(':op6', $hch);
$stmt->bindParam(':op7', $kmfim);
$stmt->bindParam(':op8', $sus);
$stmt->bindParam(':idpac', $idPac);

// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-camilaS/tipo_ocorrencia.html');
}