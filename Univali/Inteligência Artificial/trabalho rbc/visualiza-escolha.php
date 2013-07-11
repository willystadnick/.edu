<h1>selecoes realizadas</h1>
<?
include_once("conecta-banco.php");
?>
<table border="1" style="float:left;">
<tr><th>pessoas</th><th>podutos</th></tr>
<?
$qry = mysql_query("SELECT * FROM pessoa ORDER BY nome", $conexao);
while($res = mysql_fetch_assoc($qry)){
?>
<tr><td><a href="form-pessoa.php?id=<?= $res["id"]; ?>"><?= $res["nome"]; ?></a></td><td><ul>
<?
$qry1 = mysql_query("
SELECT produto.id AS id, produto.nome AS nome 
FROM pessoa_produto INNER JOIN produto 
WHERE pessoa_produto.pessoa_id = " . $res["id"] . " AND pessoa_produto.produto_id = produto.id
ORDER BY nome
", $conexao);
while($res1 = mysql_fetch_assoc($qry1)){
?>
<li><a href="form-produto.php?id=<?= $res1["id"]; ?>"><?= $res1["nome"]; ?></a></li>
<?
}
?>
</ul><? if(mysql_num_rows($qry1)==0){echo "&nbsp;";} ?></td></tr>
<?
}
?>
</table>
<table border="1" style="float:right; margin-right:10px;">
<tr><th>podutos</th><th>pessoas</th></tr>
<?
$qry = mysql_query("SELECT * FROM produto ORDER BY nome", $conexao);
while($res = mysql_fetch_assoc($qry)){
?>
<tr><td><a href="form-produto.php?id=<?= $res["id"]; ?>"><?= $res["nome"]; ?></a></td><td><ul>
<?
$qry1 = mysql_query("
SELECT pessoa.id AS id, pessoa.nome AS nome 
FROM pessoa_produto INNER JOIN pessoa 
WHERE pessoa_produto.produto_id = " . $res["id"] . " AND pessoa_produto.pessoa_id = pessoa.id
ORDER BY nome
", $conexao);
while($res1 = mysql_fetch_assoc($qry1)){
?>
<li><a href="form-pessoa.php?id=<?= $res1["id"]; ?>"><?= $res1["nome"]; ?></a></li>
<?
}
?>
</ul><? if(mysql_num_rows($qry1)==0){echo "&nbsp;";} ?></td></tr>
<?
}
?>
</table>
<p style="clear:both;"><a href="index.php">voltar</a></p>