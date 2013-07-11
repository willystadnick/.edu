<?
//echo "<pre>"; print_r($_POST); echo "</pre><hr />";
if(isset($_GET["id"])){
include_once("conecta-banco.php");
$qry = mysql_query("SELECT * FROM produto WHERE id = '" . $_GET["id"] . "'", $conexao);
$res = mysql_fetch_assoc($qry);
//echo "res - <pre>"; print_r($res); echo "</pre><hr />";
foreach($res AS $key => $value){
if($key!=="nome" && $key!=="idadei" && $key!=="idadef"){
$res[$key]=(round($value*100))."%";
}
}
}
?>
<div class="formulario">
<h1>Produto</h1>
<form action="cad-produto.php" method="post">
<p><label for="nome"><b>nome:</b></label> <input name="nome" id="nome" value="<?= $res["nome"]; ?>"></p>
<?
if(isset($_GET["id"])){
$num = mysql_num_rows(mysql_query("SELECT * FROM pessoa_produto WHERE produto_id = " . $_GET["id"], $conexao));
?>
<p><b><? if($num==0){echo"nenhuma";}else{echo $num;}; ?></b> pessoa<? if($num>1){echo "s";} ?> escolhe<? if($num>1){echo "ram";}else{echo "u";} ?> este produto.</p>
<p><b>genero:</b></p>
<ul>
<li><input type="text" id="masc" name="masc" size="2" value="<?= $res["generom"]; ?>"> <label for="masc">masculino</label></li>
<li><input type="text" id="fem" name="fem" size="2" value="<?= $res["generof"]; ?>"> <label for="fem">feminino</label></li>
</ul>
<p><label for="de"><b>faixa etaria:</b></label> entre <input type="text" id="de" size="2" name="de" value="<?= $res["idadei"]; ?>"> e <input type="text" id="ate" size="2" name="ate" value="<?= $res["idadef"]; ?>"> anos</p>
<p><b>estado civil:</b></p>
<ul>
<li><input type="text" name="estadocivil01" id="estadocivil01" size="2" value="<?= $res["estadocivil1"]; ?>"> <label for="estadocivil01">casado(a)</label></li>
<li><input type="text" name="estadocivil02" id="estadocivil02" size="2" value="<?= $res["estadocivil2"]; ?>"> <label for="estadocivil02">solteiro(a)</label></li>
<li><input type="text" name="estadocivil03" id="estadocivil03" size="2" value="<?= $res["estadocivil3"]; ?>"> <label for="estadocivil03">separado(a)</label></li>
<li><input type="text" name="estadocivil04" id="estadocivil04" size="2" value="<?= $res["estadocivil4"]; ?>"> <label for="estadocivil04">viuvo(a)</label></li>
<li><input type="text" name="estadocivil05" id="estadocivil05" size="2" value="<?= $res["estadocivil5"]; ?>"> <label for="estadocivil05">vive com companheiro(a)</label></li>
</ul> 
<p><b>escolaridade:</b></p>
<ul>
<li><input type="text" name="escolaridade01" id="escolaridade01" size="2" value="<?= $res["escola1"]; ?>"> <label for="escolaridade01">1o. grau</label></li>
<li><input type="text" name="escolaridade02" id="escolaridade02" size="2" value="<?= $res["escola2"]; ?>"> <label for="escolaridade02">2o. grau</label></li>
<li><input type="text" name="escolaridade03" id="escolaridade03" size="2" value="<?= $res["escola3"]; ?>"> <label for="escolaridade03">superior</label></li>
<li><input type="text" name="escolaridade04" id="escolaridade04" size="2" value="<?= $res["escola4"]; ?>"> <label for="escolaridade04">pos-graduacao</label></li>
<li><input type="text" name="escolaridade05" id="escolaridade05" size="2" value="<?= $res["escola5"]; ?>"> <label for="escolaridade05">curso tecnico</label></li>
</ul> 
<p><b>o que voce faz:</b></p>
<ul>
<li><input type="text" name="ocupacao01" id="ocupacao01" size="2" value="<?= $res["ocup1"]; ?>"> <label for="ocupacao01">estudante</label></li>
<li><input type="text" name="ocupacao02" id="ocupacao02" size="2" value="<?= $res["ocup2"]; ?>"> <label for="ocupacao02">profissional liberal/empresario</label></li>
<li><input type="text" name="ocupacao03" id="ocupacao03" size="2" value="<?= $res["ocup3"]; ?>"> <label for="ocupacao03">executivo/administrador</label></li>
<li><input type="text" name="ocupacao04" id="ocupacao04" size="2" value="<?= $res["ocup4"]; ?>"> <label for="ocupacao04">educador/academico</label></li>
<li><input type="text" name="ocupacao05" id="ocupacao05" size="2" value="<?= $res["ocup5"]; ?>"> <label for="ocupacao05">atendimento ao cliente</label></li>
<li><input type="text" name="ocupacao06" id="ocupacao06" size="2" value="<?= $res["ocup6"]; ?>"> <label for="ocupacao06">servicos administrativos</label></li>
<li><input type="text" name="ocupacao07" id="ocupacao07" size="2" value="<?= $res["ocup7"]; ?>"> <label for="ocupacao07">servicos comerciais</label></li>
<li><input type="text" name="ocupacao08" id="ocupacao08" size="2" value="<?= $res["ocup8"]; ?>"> <label for="ocupacao08">planejamento/execucao</label></li>
<li><input type="text" name="ocupacao09" id="ocupacao09" size="2" value="<?= $res["ocup9"]; ?>"> <label for="ocupacao09">dono(a) de casa</label></li>
<li><input type="text" name="ocupacao10" id="ocupacao10" size="2" value="<?= $res["ocup10"]; ?>"> <label for="ocupacao10">procuro emprego</label></li>
<li><input type="text" name="ocupacao11" id="ocupacao11" size="2" value="<?= $res["ocup11"]; ?>"> <label for="ocupacao11">aposentado</label></li>
<li><input type="text" name="ocupacao12" id="ocupacao12" size="2" value="<?= $res["ocup12"]; ?>"> <label for="ocupacao12">outra</label></li>
<li><input type="text" name="ocupacao13" id="ocupacao13" size="2" value="<?= $res["ocup13"]; ?>"> <label for="ocupacao13">militar</label></li>
<li><input type="text" name="ocupacao14" id="ocupacao14" size="2" value="<?= $res["ocup14"]; ?>"> <label for="ocupacao14">servidor publico</label></li>
<li><input type="text" name="ocupacao15" id="ocupacao15" size="2" value="<?= $res["ocup15"]; ?>"> <label for="ocupacao15">desocupado</label></li>
</ul> 
<p><b>em que area voce atua:</b></p>
<ul>
<li><input type="text" name="atuacao01" id="atuacao01" size="2" value="<?= $res["atua1"]; ?>"> <label for="atuacao01">servicos de consultoria e negocios</label></li>
<li><input type="text" name="atuacao02" id="atuacao02" size="2" value="<?= $res["atua2"]; ?>"> <label for="atuacao02">servicos financeiros</label></li>
<li><input type="text" name="atuacao03" id="atuacao03" size="2" value="<?= $res["atua3"]; ?>"> <label for="atuacao03">seguros</label></li>
<li><input type="text" name="atuacao04" id="atuacao04" size="2" value="<?= $res["atua4"]; ?>"> <label for="atuacao04">informatica</label></li>
<li><input type="text" name="atuacao05" id="atuacao05" size="2" value="<?= $res["atua5"]; ?>"> <label for="atuacao05">educacao/pesquisa</label></li>
<li><input type="text" name="atuacao06" id="atuacao06" size="2" value="<?= $res["atua6"]; ?>"> <label for="atuacao06">engenharia</label></li>
<li><input type="text" name="atuacao07" id="atuacao07" size="2" value="<?= $res["atua7"]; ?>"> <label for="atuacao07">industria</label></li>
<li><input type="text" name="atuacao08" id="atuacao08" size="2" value="<?= $res["atua8"]; ?>"> <label for="atuacao08">servicos de saude</label></li>
<li><input type="text" name="atuacao09" id="atuacao09" size="2" value="<?= $res["atua9"]; ?>"> <label for="atuacao09">entretenimento</label></li>
<li><input type="text" name="atuacao10" id="atuacao10" size="2" value="<?= $res["atua10"]; ?>"> <label for="atuacao10">turismo</label></li>
<li><input type="text" name="atuacao11" id="atuacao11" size="2" value="<?= $res["atua11"]; ?>"> <label for="atuacao11">comercio/varejo</label></li>
<li><input type="text" name="atuacao12" id="atuacao12" size="2" value="<?= $res["atua12"]; ?>"> <label for="atuacao12">agropecuaria</label></li>
<li><input type="text" name="atuacao13" id="atuacao13" size="2" value="<?= $res["atua13"]; ?>"> <label for="atuacao13">organizacao sem fins lucrativos</label></li>
<li><input type="text" name="atuacao14" id="atuacao14" size="2" value="<?= $res["atua14"]; ?>"> <label for="atuacao14">servicos publicos</label></li>
<li><input type="text" name="atuacao15" id="atuacao15" size="2" value="<?= $res["atua15"]; ?>"> <label for="atuacao15">servicos de advocacia</label></li>
<li><input type="text" name="atuacao16" id="atuacao16" size="2" value="<?= $res["atua16"]; ?>"> <label for="atuacao16">comunicacao</label></li>
<li><input type="text" name="atuacao17" id="atuacao17" size="2" value="<?= $res["atua17"]; ?>"> <label for="atuacao17">outra</label></li>
<li><input type="text" name="atuacao18" id="atuacao18" size="2" value="<?= $res["atua18"]; ?>"> <label for="atuacao18">arquitetura</label></li>
<li><input type="text" name="atuacao19" id="atuacao19" size="2" value="<?= $res["atua19"]; ?>"> <label for="atuacao19">artes</label></li>
<li><input type="text" name="atuacao20" id="atuacao20" size="2" value="<?= $res["atua20"]; ?>"> <label for="atuacao20">esporte</label></li>
<li><input type="text" name="atuacao21" id="atuacao21" size="2" value="<?= $res["atua21"]; ?>"> <label for="atuacao21">internet</label></li>
<li><input type="text" name="atuacao22" id="atuacao22" size="2" value="<?= $res["atua22"]; ?>"> <label for="atuacao22">marketing</label></li>
<li><input type="text" name="atuacao23" id="atuacao23" size="2" value="<?= $res["atua23"]; ?>"> <label for="atuacao23">recursos humanos</label></li>
</ul> 
<p><b>seus principais interesses:</b></p> 
<ul> 
<li><input type="text" name="interesse01" id="interesse01" size="2" value="<?= $res["inter1"]; ?>"> <label for="interesse01">animais</label></li>
<li><input type="text" name="interesse02" id="interesse02" size="2" value="<?= $res["inter2"]; ?>"> <label for="interesse02">arte e cultura</label></li>
<li><input type="text" name="interesse03" id="interesse03" size="2" value="<?= $res["inter3"]; ?>"> <label for="interesse03">automoveis</label></li>
<li><input type="text" name="interesse04" id="interesse04" size="2" value="<?= $res["inter4"]; ?>"> <label for="interesse04">bebidas e vinhos</label></li>
<li><input type="text" name="interesse05" id="interesse05" size="2" value="<?= $res["inter5"]; ?>"> <label for="interesse05">casa e jardim</label></li>
<li><input type="text" name="interesse06" id="interesse06" size="2" value="<?= $res["inter6"]; ?>"> <label for="interesse06">cinema e video</label></li>
<li><input type="text" name="interesse07" id="interesse07" size="2" value="<?= $res["inter7"]; ?>"> <label for="interesse07">dinheiro</label></li>
<li><input type="text" name="interesse08" id="interesse08" size="2" value="<?= $res["inter8"]; ?>"> <label for="interesse08">esportes</label></li>
<li><input type="text" name="interesse09" id="interesse09" size="2" value="<?= $res["inter9"]; ?>"> <label for="interesse09">games e brinquedos</label></li>
<li><input type="text" name="interesse10" id="interesse10" size="2" value="<?= $res["inter10"]; ?>"> <label for="interesse10">gastronomia</label></li>
<li><input type="text" name="interesse11" id="interesse11" size="2" value="<?= $res["inter11"]; ?>"> <label for="interesse11">informatica e internet</label></li>
<li><input type="text" name="interesse12" id="interesse12" size="2" value="<?= $res["inter12"]; ?>"> <label for="interesse12">livros</label></li>
<li><input type="text" name="interesse13" id="interesse13" size="2" value="<?= $res["inter13"]; ?>"> <label for="interesse13">moda</label></li>
<li><input type="text" name="interesse14" id="interesse14" size="2" value="<?= $res["inter14"]; ?>"> <label for="interesse14">musica</label></li>
<li><input type="text" name="interesse15" id="interesse15" size="2" value="<?= $res["inter15"]; ?>"> <label for="interesse15">politica</label></li>
<li><input type="text" name="interesse16" id="interesse16" size="2" value="<?= $res["inter16"]; ?>"> <label for="interesse16">saude e beleza</label></li>
<li><input type="text" name="interesse17" id="interesse17" size="2" value="<?= $res["inter17"]; ?>"> <label for="interesse17">tabacaria</label></li>
<li><input type="text" name="interesse18" id="interesse18" size="2" value="<?= $res["inter18"]; ?>"> <label for="interesse18">viagens</label></li>
</ul> 
<?
} else {
?>
<p><input type="submit" value="salvar" onclick=""></p>
<?
}
?>
</form>
<p><a href="index.php">voltar</a></p>
</div>