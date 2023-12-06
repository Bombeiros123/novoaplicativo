<?php

$data=$_POST["op11"];

if (isset($_POST["op2"]))
{
    $op2 = "F";
}else{
    $op2 = "M";
}

$nomehospital=$_POST["op3"];

$nome=$_POST["op4"];

$idade=$_POST["op5"];


if (isset($_POST["op6"]))
{
    $op6 = "A";
}
else
{
    $op6 = "M";
}
if (isset($_POST["op6"]))
{
    $op6 = "RN";
}

$RG=$_POST["op7"];

$telefone=$_POST["op8"];


$acompanhante=$_POST["op9"];

$idadeAC=$_POST["op10"];

$localOcorrencia=$_POST["op12"];





// Vamos mostrar na tela o que essas variáveis pegaram:
echo ("$data <br>");
echo ("$op2 <br>");
echo ("$nomehospital <br>");
echo ("$nome <br>");
echo ("$idade <br>");
echo ("$op6 <br>");
echo ("$RG <br>");
echo ("$telefone <br>");
echo ("$acompanhante <br>");
echo ("$idadeAC <br>");
echo ("$localOcorrencia <br>");

?>