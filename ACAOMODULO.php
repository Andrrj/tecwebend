<?php
require "conBD.php";
require "objeto.php";

$_SESSION['TABELA2'] = $_GET['id'];

echo $_SESSION['TABELA2'];
if($_SESSION['TABELA2'] == "acaomodulo"){
  $tab1 = "acao";
  $tab2 = "modulo";
}else if($_SESSION['TABELA2'] == "moduloperfil"){
  $tab1 = "modulo";
  $tab2 = "perfil";

}else{
  $tab1 = "perfil";
  $tab2 = "usuario";
}

$bd = new Bd();

$sql = "select * from ".$tab1;
  echo "<form action=ligacao.php method=get>";
  echo"<table border=1>";
  echo "<tr> <th>id</th>
             <th>Desc</th>
             <th>validar</th>
        </tr>
        <tbody>";
  foreach ($bd->consulta($sql) as $linha) {
    echo "<tr>";
    echo "<td>".$linha['id']."</td>";
    echo "<td>".$linha['descr']."</td>";
    echo "<td> <input type='checkbox' name='acoescbx[]' value='".$linha['id']."'";
    echo ">Editar</a></td>";
    echo "</tr>";
  }
    echo "</tbody></table>";
///fim da tabela 1
$sql = "select * from ".$tab2;
ECHO 'Selecione o '.$tab2.' a ser alterado:<select name="modulo">';
  foreach ($bd->consulta($sql) as $linha) {

  echo '<option value="'.$linha['id'].'">'.$linha['descr'].'</option>';

}
ECHO '</select></br>';
echo "<p><input type=submit value=Alterar></p>";
echo "</form>";








?>
