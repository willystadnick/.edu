<?
//echo "POST - <pre>"; print_r($_POST); echo "</pre><hr />";
if($_POST["nome"]!==""){
include_once("conecta-banco.php");
$interesse = "000000000000000000";
foreach($_POST["interesse"] as $key => $value){
$interesse{$value-1} = 1;
}
mysql_query("INSERT INTO pessoa (nome, sexo, nascimento, estadocivil, escolaridade, ocupacao, atuacao, interesses) VALUES('" . $_POST["nome"] . "', '" . $_POST["sexo"] . "', '" . $_POST["nascimento"] . "', " . $_POST["estadocivil"] . ", " . $_POST["escolaridade"] . ", " . $_POST["ocupacao"] . ", " . $_POST["atuacao"] . ", '" . $interesse . "')", $conexao);
$pessoa = mysql_insert_id();
echo "cadastro realizado com sucesso!";
include("escolhe-produto.php");
}else{
echo "você deve preencher um nome para a pessoa...";
include("form-pessoa.php");
}
?>