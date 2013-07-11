<h1>selecione os produtos:</h1>
<form action="cad-escolha.php" method="post">
<?
include_once("conecta-banco.php");
include_once("funcoes.php");
include_once("pesos.php");
if(!$pessoa){
?>
<p><b>pessoa:</b>
<select name="pessoa">
<?
$qry = mysql_query("SELECT * FROM pessoa ORDER BY nome", $conexao);
while($res = mysql_fetch_assoc($qry)){
?>
<option value="<?= $res["id"]; ?>"><?= $res["nome"]; ?></option>
<?
}
?>
</select></p>
<?
} else {
?>
<input type="hidden" name="pessoa" value="<?= $pessoa; ?>">
<h2>produtos indicados:</h2>
<ol>
<?
// listar os produtos que se adequam ao perfil
$qry = mysql_query("SELECT * FROM pessoa WHERE id = " . $pessoa, $conexao);
$pes = mysql_fetch_assoc($qry);
$qry = mysql_query("SELECT * FROM produto", $conexao);
unset($score);
$score = array();
while($prod = mysql_fetch_assoc($qry)){
if($pes["sexo"]=="m"){$score[$prod["id"]]+=$prod["generom"]*5;}else{$score[$prod["id"]]+=$prod["generof"]*$peso["genero"];}
if(idade($pes["nascimento"])>=$prod["idadei"] && idade($pes["nascimento"])<=$prod["idadef"]){$score[$prod["id"]]+=$peso["idade"];}
switch($pes["estadocivil"]){
case 1: $score[$prod["id"]]+=$prod["estadocivil1"]*$peso["estadocivil"]; break;
case 2: $score[$prod["id"]]+=$prod["estadocivil2"]*$peso["estadocivil"]; break;
case 3: $score[$prod["id"]]+=$prod["estadocivil3"]*$peso["estadocivil"]; break;
case 4: $score[$prod["id"]]+=$prod["estadocivil4"]*$peso["estadocivil"]; break;
case 5: $score[$prod["id"]]+=$prod["estadocivil5"]*$peso["estadocivil"]; break;
}
switch($pes["escolaridade"]){
case 1: $score[$prod["id"]]+=$prod["escola1"]*$peso["escolaridade"]; break;
case 2: $score[$prod["id"]]+=$prod["escola2"]*$peso["escolaridade"]; break;
case 3: $score[$prod["id"]]+=$prod["escola3"]*$peso["escolaridade"]; break;
case 4: $score[$prod["id"]]+=$prod["escola4"]*$peso["escolaridade"]; break;
case 5: $score[$prod["id"]]+=$prod["escola5"]*$peso["escolaridade"]; break;
}
switch($pes["ocupacao"]){
case 1: $score[$prod["id"]]+=$prod["ocup1"]*$peso["ocupacao"]; break;
case 2: $score[$prod["id"]]+=$prod["ocup2"]*$peso["ocupacao"]; break;
case 3: $score[$prod["id"]]+=$prod["ocup3"]*$peso["ocupacao"]; break;
case 4: $score[$prod["id"]]+=$prod["ocup4"]*$peso["ocupacao"]; break;
case 5: $score[$prod["id"]]+=$prod["ocup5"]*$peso["ocupacao"]; break;
case 6: $score[$prod["id"]]+=$prod["ocup6"]*$peso["ocupacao"]; break;
case 7: $score[$prod["id"]]+=$prod["ocup7"]*$peso["ocupacao"]; break;
case 8: $score[$prod["id"]]+=$prod["ocup8"]*$peso["ocupacao"]; break;
case 9: $score[$prod["id"]]+=$prod["ocup9"]*$peso["ocupacao"]; break;
case 10: $score[$prod["id"]]+=$prod["ocup10"]*$peso["ocupacao"]; break;
case 11: $score[$prod["id"]]+=$prod["ocup11"]*$peso["ocupacao"]; break;
case 12: $score[$prod["id"]]+=$prod["ocup12"]*$peso["ocupacao"]; break;
case 13: $score[$prod["id"]]+=$prod["ocup13"]*$peso["ocupacao"]; break;
case 14: $score[$prod["id"]]+=$prod["ocup14"]*$peso["ocupacao"]; break;
case 15: $score[$prod["id"]]+=$prod["ocup15"]*$peso["ocupacao"]; break;
}
switch($pes["atuacao"]){
case 1: $score[$prod["id"]]+=$prod["atua1"]*$peso["atuacao"]; break;
case 2: $score[$prod["id"]]+=$prod["atua2"]*$peso["atuacao"]; break;
case 3: $score[$prod["id"]]+=$prod["atua3"]*$peso["atuacao"]; break;
case 4: $score[$prod["id"]]+=$prod["atua4"]*$peso["atuacao"]; break;
case 5: $score[$prod["id"]]+=$prod["atua5"]*$peso["atuacao"]; break;
case 6: $score[$prod["id"]]+=$prod["atua6"]*$peso["atuacao"]; break;
case 7: $score[$prod["id"]]+=$prod["atua7"]*$peso["atuacao"]; break;
case 8: $score[$prod["id"]]+=$prod["atua8"]*$peso["atuacao"]; break;
case 9: $score[$prod["id"]]+=$prod["atua9"]*$peso["atuacao"]; break;
case 10: $score[$prod["id"]]+=$prod["atua10"]*$peso["atuacao"]; break;
case 11: $score[$prod["id"]]+=$prod["atua11"]*$peso["atuacao"]; break;
case 12: $score[$prod["id"]]+=$prod["atua12"]*$peso["atuacao"]; break;
case 13: $score[$prod["id"]]+=$prod["atua13"]*$peso["atuacao"]; break;
case 14: $score[$prod["id"]]+=$prod["atua14"]*$peso["atuacao"]; break;
case 15: $score[$prod["id"]]+=$prod["atua15"]*$peso["atuacao"]; break;
case 16: $score[$prod["id"]]+=$prod["atua16"]*$peso["atuacao"]; break;
case 17: $score[$prod["id"]]+=$prod["atua17"]*$peso["atuacao"]; break;
case 18: $score[$prod["id"]]+=$prod["atua18"]*$peso["atuacao"]; break;
case 19: $score[$prod["id"]]+=$prod["atua19"]*$peso["atuacao"]; break;
case 20: $score[$prod["id"]]+=$prod["atua20"]*$peso["atuacao"]; break;
case 21: $score[$prod["id"]]+=$prod["atua21"]*$peso["atuacao"]; break;
case 22: $score[$prod["id"]]+=$prod["atua22"]*$peso["atuacao"]; break;
case 23: $score[$prod["id"]]+=$prod["atua23"]*$peso["atuacao"]; break;
}
for($i=0; $i<18; $i++){
if($pes["interesses"]{$i} == "1"){
$ref = "inter" . ($i + 1);
$score[$prod["id"]]+=$prod[$ref]*$peso["interesses"];
}
}
}
arsort($score);
$produtos = array_keys($score);
$scores = array_values($score);
//echo "<pre>"; print_r($score); echo "</pre>";
$produtos = array_slice($produtos, 0, 3);
for($i=0; $i<3; $i++){
//echo $produtos[$i] . " - " . round($scores[$i]) . "<br />";
$prod = mysql_fetch_assoc(mysql_query("SELECT * FROM produto WHERE id = " . $produtos[$i], $conexao));
//echo "<li>" . $prod["nome"] . " (" . round($scores[$i]) . ")</li>";
?>
<li><input type="checkbox" name="produto[]" id="produto<?= $prod["id"]; ?>" value="<?= $prod["id"]; ?>"><label for="produto<?= $prod["id"]; ?>"><?= $prod["nome"]; ?><!-- (<?= round($scores[$i]); ?>) --></label></li>
<?
}
?>
</ol>
<?
}
?>
<h2>todos produtos:</h2>
<ul>
<?
$qry = mysql_query("SELECT * FROM produto ORDER BY nome", $conexao);
while($res = mysql_fetch_assoc($qry)){
if(!in_array($res["id"], $produtos)){
?>
<li><input type="checkbox" name="produto[]" id="produto<?= $res["id"]; ?>" value="<?= $res["id"]; ?>"><label for="produto<?= $res["id"]; ?>"><?= $res["nome"]; ?></label></li>
<?
}
}
?>
</ul>
<p><input type="submit" value="salvar"></p>
</form>