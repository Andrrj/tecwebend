<?php
require "conBd.php";
require "ValAcess.php";
$val = new validacao();
$login=$_GET['login'];
$senha=$_GET['senha'];
$bd = new Bd();
$sql = "select count(*) from usuario where descr = '".$login."' and senha = '".$senha."'";

$consulta = $bd->consulta($sql);
if($consulta->fetchColumn() == 1){
  $_SESSION['login']=$login;
  $_SESSION['senha']=$senha;

  $sql = 'SELECT perfil.descr FROM (usuario INNER JOIN perfilusuario ON usuario.id = perfilusuario.id2) INNER JOIN perfil ON perfilusuario.id1 = perfil.id where usuario.descr = "'.$_SESSION['login']=$login.'"';
  echo $sql;
//  $consulta = $bd->consulta($sql);
  foreach ($bd->consulta($sql) as $linha) {
      $_SESSION['perfil']=$linha['descr'];}
  echo $_SESSION['perfil'];
  echo $_SESSION['login'];
  echo $_SESSION['senha'];
  header('location:principal.php');
}else{
  $_SESSION['msgerro'] = "Login / Senha Incorretos.";
  header('location:index.php');;
};

?>
