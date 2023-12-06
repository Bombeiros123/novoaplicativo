<?php
header('Content-Type: application/json');

$pdo = new PDO('mysql:host=localhost; dbname=bombeiro2;', 'root' , '');

$id = $_POST['id']; // Use 'nome' aqui

$stmt = $pdo->prepare('DELETE FROM cadastro WHERE nomecompleto = :id'); // Corrigido a consulta DELETE
$stmt->bindValue(':id', $id); // Corrigido o nome do parâmetro
$stmt->execute();
?>
    