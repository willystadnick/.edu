<?
// echo "<pre>"; print_r($_POST); echo "</pre><hr />";
if(isset($_GET["id"])){
include_once("conecta-banco.php");
$qry = mysql_query("SELECT * FROM pessoa WHERE id = '" . $_GET["id"] . "'", $conexao);
$res = mysql_fetch_assoc($qry);
for($i=0; $i<19; $i++){
if($res["interesses"]{$i}==1){
$interesse[$i+1] = TRUE;
}
}
//echo "res - <pre>"; print_r($res); echo "</pre><hr />";
}
?>
<div class="formulario">
<h1>Pessoa</h1>
<form action="cad-pessoa.php" method="post">
<p><label for="nome"><b>nome:</b></label> <input name="nome" id="nome" value="<?= $res["nome"]; ?>"></p>
<p><b>sexo:</b><input type=radio id="masc" name="sexo" value="m"<? if($res["sexo"]=="m"){ echo " checked=\"checked\""; } ?>><label for="masc">masculino</label><input type=radio id="fem" name="sexo" value="f"<? if($res["sexo"]=="f"){ echo " checked=\"checked\""; } ?>><label for="fem">feminino</label></p>
<p><label for="data"><b>data de nascimento:</b></label> <input type="text" id="data" size="10" name="nascimento" value="<?= $res["nascimento"]; ?>" onblur=""> dd/mm/aaaa</p>
<p><b>estado civil:</b>
<select name="estadocivil">
<option value="01"<? if($res["estadocivil"]=="1"){ echo " selected=\"selected\""; } ?>>casado(a)</option>
<option value="02"<? if($res["estadocivil"]=="2"){ echo " selected=\"selected\""; } ?>>solteiro(a)</option>
<option value="03"<? if($res["estadocivil"]=="3"){ echo " selected=\"selected\""; } ?>>separado(a)</option>
<option value="04"<? if($res["estadocivil"]=="4"){ echo " selected=\"selected\""; } ?>>viuvo(a)</option>
<option value="05"<? if($res["estadocivil"]=="5"){ echo " selected=\"selected\""; } ?>>vive com companheiro(a)</option>
</select></p>
<p><b>escolaridade:</b>
<select name="escolaridade">
<option value="01"<? if($res["escolaridade"]=="1"){ echo " selected=\"selected\""; } ?>>1o. grau</option>
<option value="02"<? if($res["escolaridade"]=="2"){ echo " selected=\"selected\""; } ?>>2o. grau</option>
<option value="03"<? if($res["escolaridade"]=="3"){ echo " selected=\"selected\""; } ?>>superior</option>
<option value="04"<? if($res["escolaridade"]=="4"){ echo " selected=\"selected\""; } ?>>pos-graduacao</option>
<option value="05"<? if($res["escolaridade"]=="5"){ echo " selected=\"selected\""; } ?>>curso tecnico</option>
</select></p>
<p><b>o que voce faz:</b>
<select name="ocupacao">
<option value="01"<? if($res["ocupacao"]=="1"){ echo " selected=\"selected\""; } ?>>estudante</option>
<option value="02"<? if($res["ocupacao"]=="2"){ echo " selected=\"selected\""; } ?>>profissional liberal/empresario</option>
<option value="03"<? if($res["ocupacao"]=="3"){ echo " selected=\"selected\""; } ?>>executivo/administrador</option>
<option value="04"<? if($res["ocupacao"]=="4"){ echo " selected=\"selected\""; } ?>>educador/academico</option>
<option value="05"<? if($res["ocupacao"]=="5"){ echo " selected=\"selected\""; } ?>>atendimento ao cliente</option>
<option value="06"<? if($res["ocupacao"]=="6"){ echo " selected=\"selected\""; } ?>>servicos administrativos</option>
<option value="07"<? if($res["ocupacao"]=="7"){ echo " selected=\"selected\""; } ?>>servicos comerciais</option>
<option value="08"<? if($res["ocupacao"]=="8"){ echo " selected=\"selected\""; } ?>>planejamento/execucao</option>
<option value="09"<? if($res["ocupacao"]=="9"){ echo " selected=\"selected\""; } ?>>dono(a) de casa</option>
<option value="10"<? if($res["ocupacao"]=="10"){ echo " selected=\"selected\""; } ?>>procuro emprego</option>
<option value="11"<? if($res["ocupacao"]=="11"){ echo " selected=\"selected\""; } ?>>aposentado</option>
<option value="12"<? if($res["ocupacao"]=="12"){ echo " selected=\"selected\""; } ?>>outra</option>
<option value="13"<? if($res["ocupacao"]=="13"){ echo " selected=\"selected\""; } ?>>militar</option>
<option value="14"<? if($res["ocupacao"]=="14"){ echo " selected=\"selected\""; } ?>>servidor publico</option>
<option value="15"<? if($res["ocupacao"]=="15"){ echo " selected=\"selected\""; } ?>>desocupado</option>
</select></p>
<p><b>em que area voce atua:</b>
<select name="atuacao">
<option value="01"<? if($res["atuacao"]=="1"){ echo " selected=\"selected\""; } ?>>servicos de consultoria e negocios</option>
<option value="02"<? if($res["atuacao"]=="2"){ echo " selected=\"selected\""; } ?>>servicos financeiros</option>
<option value="03"<? if($res["atuacao"]=="3"){ echo " selected=\"selected\""; } ?>>seguros</option>
<option value="04"<? if($res["atuacao"]=="4"){ echo " selected=\"selected\""; } ?>>informatica</option>
<option value="05"<? if($res["atuacao"]=="5"){ echo " selected=\"selected\""; } ?>>educacao/pesquisa</option>
<option value="06"<? if($res["atuacao"]=="6"){ echo " selected=\"selected\""; } ?>>engenharia</option>
<option value="07"<? if($res["atuacao"]=="7"){ echo " selected=\"selected\""; } ?>>industria</option>
<option value="08"<? if($res["atuacao"]=="8"){ echo " selected=\"selected\""; } ?>>servicos de saude</option>
<option value="09"<? if($res["atuacao"]=="9"){ echo " selected=\"selected\""; } ?>>entretenimento</option>
<option value="10"<? if($res["atuacao"]=="10"){ echo " selected=\"selected\""; } ?>>turismo</option>
<option value="11"<? if($res["atuacao"]=="11"){ echo " selected=\"selected\""; } ?>>comercio/varejo</option>
<option value="12"<? if($res["atuacao"]=="12"){ echo " selected=\"selected\""; } ?>>agropecuaria</option>
<option value="13"<? if($res["atuacao"]=="13"){ echo " selected=\"selected\""; } ?>>organizacao sem fins lucrativos</option>
<option value="14"<? if($res["atuacao"]=="14"){ echo " selected=\"selected\""; } ?>>servicos publicos</option>
<option value="15"<? if($res["atuacao"]=="15"){ echo " selected=\"selected\""; } ?>>servicos de advocacia</option>
<option value="16"<? if($res["atuacao"]=="16"){ echo " selected=\"selected\""; } ?>>comunicacao</option>
<option value="17"<? if($res["atuacao"]=="17"){ echo " selected=\"selected\""; } ?>>outra</option>
<option value="18"<? if($res["atuacao"]=="18"){ echo " selected=\"selected\""; } ?>>arquitetura</option>
<option value="19"<? if($res["atuacao"]=="19"){ echo " selected=\"selected\""; } ?>>artes</option>
<option value="20"<? if($res["atuacao"]=="20"){ echo " selected=\"selected\""; } ?>>esporte</option>
<option value="21"<? if($res["atuacao"]=="21"){ echo " selected=\"selected\""; } ?>>internet</option>
<option value="22"<? if($res["atuacao"]=="22"){ echo " selected=\"selected\""; } ?>>marketing</option>
<option value="23"<? if($res["atuacao"]=="23"){ echo " selected=\"selected\""; } ?>>recursos humanos</option>
</select></p>
<p><b>seus principais interesses:</b></p>
<ul>
<li><input type="checkbox" name="interesse[]" id="interesse01" value="01"<? if($interesse[1]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse01">animais</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse02" value="02"<? if($interesse[2]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse02">arte e cultura</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse03" value="03"<? if($interesse[3]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse03">automoveis</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse04" value="04"<? if($interesse[4]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse04">bebidas e vinhos</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse05" value="05"<? if($interesse[5]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse05">casa e jardim</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse06" value="06"<? if($interesse[6]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse06">cinema e video</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse07" value="07"<? if($interesse[7]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse07">dinheiro</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse08" value="08"<? if($interesse[8]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse08">esportes</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse09" value="09"<? if($interesse[9]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse09">games e brinquedos</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse10" value="10"<? if($interesse[10]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse10">gastronomia</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse11" value="11"<? if($interesse[11]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse11">informatica e internet</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse12" value="12"<? if($interesse[12]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse12">livros</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse13" value="13"<? if($interesse[13]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse13">moda</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse14" value="14"<? if($interesse[14]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse14">musica</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse15" value="15"<? if($interesse[15]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse15">politica</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse16" value="16"<? if($interesse[16]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse16">saude e beleza</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse17" value="17"<? if($interesse[17]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse17">tabacaria</label></li>
<li><input type="checkbox" name="interesse[]" id="interesse18" value="18"<? if($interesse[18]==TRUE){ echo " checked=\"checked\""; } ?>><label for="interesse18">viagens</label></li>
</ul> 
<?
if(!isset($_GET["id"])){
?>
<p><input type="submit" value="salvar"></p>
<?
}
?>
</form>
<p><a href="index.php">voltar</a></p>
</div>