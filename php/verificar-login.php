<?php
include("conecta.php");

$Senha = $_POST['Senha'];
$Email = $_POST['Email'];

$stmt = $pdo->prepare("SELECT * FROM cadastro WHERE Email = :Email AND Senha = :Senha");
$stmt->bindValue(':Email', $Email);
$stmt->bindValue(':Senha', $Senha);
$stmt->execute();

if ($stmt->rowCount() >= 1) {
    $usuario=$stmt->fetch(PDO::FETCH_ASSOC);
    if($usuario['adm']==1){
        header("Location:../html-camilaS/adm.html");
    }
    else{
    header("Location:../html-maria/dadospaciente.html");
    }
} else {
   header("Location:../html-camilaS/index.html");
}

?>