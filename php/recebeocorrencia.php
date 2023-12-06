<?php
session_start();

include('conecta.php');

$animais=$_POST["op1"]=="on"?"CAUSADO POR ANIMAIS":null;

$transp=$_POST["op2"]=="on"?"COM MEIO DE TRANSPORTE":null;

$desmor=$_POST["op3"]=="on"?"DESMORONAMENTO/DESLIZAMENTO":null;

$emermed=$_POST["op4"]=="on"?"EMERGÊNCIA MÉDICA":null;

$queda=$_POST["op5"]=="on"?"QUEDA DE ALTURA 2M":null;

$suicidio=$_POST["op6"]=="on"?"TENTATIVA DE SUICIDIO":null;

$quedaprop=$_POST["op7"]=="on"?"QUEDA PROPRIA ALTURA":null;

$afogamento=$_POST["op8"]=="on"?"AFOGAMENTO":null;

$agressao=$_POST["op9"]=="on"?"AGRESSÃO ":null;

$atropelamento=$_POST["op10"]=="on"?"ATROPELAMENTO ":null;

$choque=$_POST["op11"]=="on"?"CHOQUE ELÉTRICO ":null;

$desaba=$_POST["op12"]=="on"?"DESABAMENTO ":null;

$domest=$_POST["op13"]=="on"?"DOMÉSTICO ":null;

$esport=$_POST["op14"]=="on"?"ESPORTIVO ":null;

$intoxi=$_POST["op15"]=="on"?"INTOXICAÇÃO ":null;

$quedabici=$_POST["op16"]=="on"?"QUEDA BICICLETA":null;

$quedamoto=$_POST["op17"]=="on"?"QUEDA MOTO ":null;

$quedamen2m=$_POST["op18"]=="on"?"QUEDA NIVEL < 2M ":null;

$trabalho=$_POST["op19"]=="on"?"TRABALHO ":null;

$transfere=$_POST["op20"]=="on"?"TRANSFERÊNCIA ":null;

$outro=$_POST["op21"]=="on"?"OUTRO ":null;

$idPac=$_SESSION['idPac'];

 // Preparar a instrução SQL
 $stmt = $pdo->prepare("INSERT INTO ocorrencia  
 VALUES (:op1, :op2, :op3, :op4, :op5, :op6, :op7, :op8, :op9, 
 :op10, :op11, :op12, :op13, :op14, :op15, :op16, :op17,
  :op18, :op19, :op20, :op21, :idpac)");

// Bind dos parâmetros
$stmt->bindParam(':op1', $animais);
$stmt->bindParam(':op2', $transp);
$stmt->bindParam(':op3', $desmor);
$stmt->bindParam(':op4', $emermed);
$stmt->bindParam(':op5', $queda);
$stmt->bindParam(':op6', $suicidio);
$stmt->bindParam(':op7', $quedaprop);
$stmt->bindParam(':op8', $afogamento);
$stmt->bindParam(':op9', $agressao);
$stmt->bindParam(':op10', $atropelamento);
$stmt->bindParam(':op11', $choque);
$stmt->bindParam(':op12', $desaba);
$stmt->bindParam(':op13', $domest);
$stmt->bindParam(':op14', $esport);
$stmt->bindParam(':op15', $intoxi);
$stmt->bindParam(':op16', $quedabici);
$stmt->bindParam(':op17', $quedamoto);
$stmt->bindParam(':op18', $quedamen2m);
$stmt->bindParam(':op19', $trabalho);
$stmt->bindParam(':op20', $transfere);
$stmt->bindParam(':op21', $outro);
$stmt->bindParam(':idpac', $idPac);

// Executar a instrução SQL
if($stmt->execute()){
    header('Location: ../html-maria/niveldeconciencia.html');
}