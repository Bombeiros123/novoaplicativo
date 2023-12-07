<?php
session_start();

include('conecta.php');

$pressao=$_POST["op1"];

$pulso=$_POST["op2"];

$respiracao=$_POST["op3"];

$saturacao=$_POST["op4"];

$hgt=$_POST["op5"];

$temperatura=$_POST["op6"];

if (isset($_POST["op7"]))
{
    $anormalnormal= $_POST["op7"];
}

if (isset($_POST["op8"]))
{
    $perfusao = $_POST["op8"];
}

$idPac=$_SESSION['idPac'];


echo($idPac);
 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO sinais  VALUES (:op1, :op2, :op3, :op4,:op5, :op6, :op7, :op8,:idPac)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $pressao);
$stmt->bindParam(':op2', $pulso);
$stmt->bindParam(':op3', $respiracao);
$stmt->bindParam(':op4', $saturacao);
$stmt->bindParam(':op5', $hgt);
$stmt->bindParam(':op6', $temperatura);
$stmt->bindParam(':op7', $anormalnormal);
$stmt->bindParam(':op8', $perfusao);
$stmt->bindParam(':idPac', $idPac);

if($stmt->execute()){
    header('Location: ../html-maria/queimadura.html');
}
