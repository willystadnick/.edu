<?
//local
/*
$host = "localhost";
$user = "root";
$pass = "";
*/

//eeepc
$host = "localhost";
$user = "root";
$pass = "123321";

//110mb
/*
$host = "";
$user = "";
$pass = "";
*/

$conexao = mysql_connect($host, $user, $pass) or die("Falha na conexao: " . mysql_error());

//local
$bd = "rbc08mai";

//110mb
/*
$bd = "";
*/

mysql_select_db($bd, $conexao);
?>