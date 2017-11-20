<?php
require 'conBD.php';
require 'ValAcess.php';
$val = new validacao();
$val->validargeral();
$Bd = new Bd();
$_SESSION['TABELA']=NULL;
$_SESSION['TABELA2']=NULL;


echo "<h3>Usuário ".$_SESSION['login']." | Perfil ".$_SESSION['perfil']." | <a href=index.php>SAIR</a></h3>
      <h1>Acesso do Perfil
      Relação de Acessos por Usuário.
      </h1>";
      if($_SESSION['perfil'] == "ADMIN"){
        ECHO "
      <h2>Admin</h2>
      <h3><p><a href=crudAdmin.php?id=acao>ADMINISTRAR AÇÕES</a>
      <p><a href=crudAdmin.php?id=modulo>ADMINISTRAR MODULOS</a>
      <p><a href=crudAdmin.php?id=perfil>ADMINISTRAR PERFIL</a>
      <p><a href=crudAdmin.php?id=usuario>ADMINISTRAR USUÁRIOS</a>
      <p><a href=ACAOMODULO.php?id=acaomodulo>EDITAR AÇÕES LIGADAS A MODULOS</a>
      <p><a href=ACAOMODULO.php?id=moduloperfil>EDITAR MODULOS LIGADOS A PERFIS</a>
      <p><a href=ACAOMODULO.php?id=perfilusuario>EDITAR PERFIS DE USUARIOS</a>
      </h3>";};




$sql = 'SELECT distinct modulo.descr FROM (((((usuario INNER JOIN perfilusuario ON usuario.id = perfilusuario.id2) INNER JOIN perfil ON perfilusuario.id1 = perfil.id) INNER JOIN moduloperfil ON perfil.id = moduloperfil.id2) INNER JOIN modulo ON moduloperfil.id1 = modulo.id) INNER JOIN acaomodulo ON modulo.id = acaomodulo.id2) INNER JOIN acao ON acaomodulo.id1 = acao.id
WHERE (((usuario.descr)="'.$_SESSION['login'].'))';
//echo $sql;
foreach ($Bd->consulta($sql) as $linha) {
echo '<h2>'.$linha['descr'].'</h2></br>';

$sql1 = 'SELECT distinct acao.descr FROM (((((usuario INNER JOIN perfilusuario ON usuario.id = perfilusuario.id2) INNER JOIN perfil ON perfilusuario.id1 = perfil.id) INNER JOIN moduloperfil ON perfil.id = moduloperfil.id2) INNER JOIN modulo ON moduloperfil.id1 = modulo.id) INNER JOIN acaomodulo ON modulo.id = acaomodulo.id2) INNER JOIN acao ON acaomodulo.id1 = acao.id
WHERE (((usuario.descr)="'.$_SESSION['login'].' and modulo.descr ="'.$linha['descr'].'" ))';
foreach ($Bd->consulta($sql1) as $linha1) {
echo $linha1['descr'].'</br>';
}

}


?>
