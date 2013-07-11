<?
//echo "POST - <pre>"; print_r($_POST); echo "</pre><hr />";
include_once("conecta-banco.php");
foreach($_POST["produto"] as $key => $value){
mysql_query("
INSERT INTO pessoa_produto (pessoa_id, produto_id) VALUES (" . $_POST["pessoa"] . ", " . $value . ")
", $conexao);
// atualiza valores
$produto = $value;
include("calc-pertinencia.php");
}
include("visualiza-escolha.php");
?>