<?php
require "conBD.php";
$Bd = new Bd();
require 'ValAcess.php';
$val = new validacao();
$acao= $_GET['acoescbx'];
$modulo=$_GET['modulo'];

$sql="delete from ".$_SESSION['TABELA2']." where id2=".$modulo;
$con=$Bd->executar($sql);

if (isset($_GET['acoescbx'])) {
	foreach($acao as $key => $linha){
  $sql="insert into ".$_SESSION['TABELA2']." (id1,id2) values (".$linha.",".$modulo.")";

  echo $sql;
  $con=$Bd->executar($sql);
}
}
header('location:principal.php');

 ?>
