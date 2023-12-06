<?php
session_start();
include('conecta.php');

$data=$_POST["op1"];

if (isset($_POST["op2"]))
{
    $op2 = $_POST["op2"];
}

$nomehospital=$_POST["op3"];

$nome=$_POST["op4"];

$idade=$_POST["op5"];

$RG=$_POST["op7"];

$acompanhante=$_POST["op9"];

$idadeAC=$_POST["op10"];

$localOcorrencia=$_POST["op11"];


 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO dados_p  
 VALUES (null,:op1, :op2, :op3, :op4, :op5, :op7, :op9, :op10, :op11)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $data);
$stmt->bindParam(':op2', $op2);
$stmt->bindParam(':op3', $nomehospital);
$stmt->bindParam(':op4', $nome);
$stmt->bindParam(':op5', $idade);
$stmt->bindParam(':op7', $RG);
$stmt->bindParam(':op9', $acompanhante);
$stmt->bindParam(':op10', $idadeAC);
$stmt->bindParam(':op11', $localOcorrencia);

// Executar a instrução SQL
if($stmt->execute()){
    $_SESSION['idPac']=$pdo->lastInsertId();
    header('Location: ../html-maria/dadosdaambulancia.html');
}


?>