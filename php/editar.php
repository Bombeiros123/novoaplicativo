<?php
session_start();


include("conecta.php");



$id = $_SESSION['id_usuario'];
$email = $_POST["email"];
$senha = $_POST["senha"];

$comando = $pdo->prepare("UPDATE cadastro SET email='$email',senha='$senha' WHERE id_usuario=$id");
$resultado = $comando->execute();

header("Location: cadastro_editar.html");

?>



