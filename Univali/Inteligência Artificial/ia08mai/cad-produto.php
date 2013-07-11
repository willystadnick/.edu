<?
//echo "POST - <pre>"; print_r($_POST); echo "</pre><hr />";
if($_POST["nome"]!==""){
include_once("conecta-banco.php");
mysql_query("INSERT INTO produto (nome) VALUES('" . $_POST["nome"] . "')", $conexao);
//echo "<a href=\"form-produto.php?id=" . mysql_insert_id() . "\">cadastro realizado com sucesso</a>";
echo "cadastro realizado com sucesso!";
}else{
echo "você deve preencher um nome para o produto...";
}
include("form-produto.php");
?>
