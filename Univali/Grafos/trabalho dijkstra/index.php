<?
error_reporting(E_ERROR | E_PARSE);

isset($_GET["nos"]) ? $nos = $_GET["nos"] : $nos = 3;
$valor_max = 32768;
$vertice = array("adj" => FALSE, "vlr" => $valor_max);
$matriz = array();
$tabela = array();

function inicia_matriz(){
	global $matriz, $nos, $vertice;
	unset($matriz);
	for($i=0; $i<$nos; $i++){
		for($j=0; $j<$nos; $j++){
			$matriz[$i][$j] = $vertice;
		}	
	}
	return $matriz;
}

function adiciona($origem, $destino, $valor){
	global $matriz;
	$matriz[$origem-1][$destino-1]["adj"] = TRUE;
	$matriz[$origem-1][$destino-1]["vlr"] = $valor;
}

function remove($origem, $destino){
	global $matriz, $valor_max;
	$matriz[$origem-1][$destino-1]["adj"] = FALSE;
	$matriz[$origem-1][$destino-1]["vlr"] = $valor_max;
}

function inicia_tabela(){
	global $tabela, $nos, $valor_max;
	unset($tabela);
	for($i=0; $i<$nos; $i++){
		$tabela[$i]["perm"] = FALSE;
		$tabela[$i]["dist"] = $valor_max;
		$tabela[$i]["path"] = "-";
	}
	return $tabela;
}

function busca_adjacentes($no){
	global $matriz, $nos;
	unset($adjacentes);
	for($i=0; $i<$nos; $i++){
		if($matriz[$no-1][$i]["adj"]){
			$adjacentes[$i+1] = $matriz[$no-1][$i]["vlr"];
		}
	}
	/*
	// ordena pelos menores custos
	asort($adjacentes);
	reset($adjacentes);
	*/
	return $adjacentes;
}

function mostra_tabela(){
	global $tabela, $nos;
	echo "<table><caption>estado atual da tabela</caption><tr><th>nó</th><th>perm</th><th>dist</th><th>path</th></tr>";
	for($i=0; $i<$nos; $i++){
		$j = $i+1;
		echo "<tr><td>".$j."</td><td>".$tabela[$i]["perm"]."&nbsp;</td><td>".$tabela[$i]["dist"]."&nbsp;</td><td>".$tabela[$i]["path"]."&nbsp;</td></tr>";
	}
	echo "</table>";
}

function menor_caminho($no){
	global $matriz, $tabela, $nos, $valor_max;
	
	$tabela = inicia_tabela();
	$tabela[$no-1]["perm"] = TRUE;
	$tabela[$no-1]["dist"] = 0;	
	
	$no_atual = $no;
	$perm = TRUE;

	while($perm){
		$adj = busca_adjacentes($no_atual);

		foreach($adj as $nod => $valor){
			if($tabela[$nod-1]["dist"]>$tabela[$no_atual-1]["dist"]+$valor){
				$tabela[$nod-1]["dist"] = $tabela[$no_atual-1]["dist"]+$valor;
				$tabela[$nod-1]["path"] = $no_atual;
			}
		}

		$menor["valor"] = $valor_max;
		$menor["no"] = NULL;
		for($i=0; $i<$nos; $i++){
			if(!$tabela[$i]["perm"]){
				if($tabela[$i]["dist"]<$menor["valor"]){					
					$menor["valor"] = $tabela[$i]["dist"];
					$menor["no"] = $i+1;
				}
			}
		}

		if($menor["no"] !== NULL){
			$tabela[$menor["no"]-1]["perm"] = TRUE;
			$no_atual = $menor["no"];
		} else {
			$perm = FALSE;
		}	
	}
}

function traca_rota($inicio, $fim){
	global $tabela, $nos;
	$encontrou = FALSE;
	$last = $fim;
	while(!$encontrou){
		if($tabela[$last-1]["path"] !== $inicio){
			$rota[] = $tabela[$last-1]["path"];
			$last = $tabela[$last-1]["path"];
		} else {
			$encontrou = TRUE;
		}
	}
	$rota[] = $inicio;
	$rota = array_reverse($rota);
	$rota[] = $fim;
	return implode(" -> ", $rota) . " (" . $tabela[$fim-1]["dist"] . ")<br />";
}

?>
<html>
	<head>
		<link href="style.css" rel="stylesheet" type="text/css">
		<title>Algoritmo de Dijkstra</title>
	</head>
	<body>
		<h1 style="clear:both;">Algoritmo de Dijkstra</h1>
		<form method="GET">
			<select name="nos">
			<? for($i=2; $i<21; $i++){ ?>
				<option<? if($nos == $i){ echo " selected=\"selected\""; } ?>><?= $i; ?></option>
			<? } ?>
			</select>
			nós
			<input type="submit" value="ok">
		</form>
		<form method="POST">
			<table>
				<caption>matriz de adjacência</caption>
			<? for($linha=0; $linha<$nos+1; $linha++){ ?>
				<tr>
				<? for($coluna=0; $coluna<$nos+1; $coluna++){ ?>
					<td>
					<? if($linha == 0 AND $coluna == 0){
							echo "I \ F"; }
						elseif($linha == $coluna){
							echo "&nbsp;"; }
						elseif($linha == 0){ 
							echo $coluna . "<input type=\"checkbox\" name=\"finais_" . $coluna . "\"";
							if($_POST["finais_".$coluna]=="on"){echo " checked='checked'";}
							echo ">"; }
						elseif($coluna == 0){ 
							echo $linha . "<input type=\"checkbox\" name=\"iniciais_" . $linha . "\"";
							if($_POST["iniciais_".$linha]=="on"){echo " checked='checked'";}
							echo ">"; }
						else { ?>
					<input type="checkbox" name="cb_<?= $linha . $coluna; ?>"<? if($_POST["cb_".$linha.$coluna]=="on"){echo " checked='checked'";} ?>><input type="text" name="tx_<?= $linha . $coluna; ?>" size="1"<? if($_POST["cb_".$linha.$coluna]=="on" && $_POST["tx_".$linha.$coluna]!==""){echo " value='" . $_POST["tx_".$linha.$coluna] . "'";} ?>>
					<? } ?>
					</td>
				<? } ?>
				</tr>
			<? } ?>
			</table>
			<input type="submit" name="submit" value="calcular">
		</form>
		<?

		// adiciona os valores postados a matriz
		if(isset($_POST["submit"])){			
			$matriz = inicia_matriz();
			for($i=0; $i<=$nos; $i++){
				for($j=0; $j<=$nos; $j++){
					if($_POST["cb_".$i.$j]=="on"){
						adiciona($i, $j, (int)$_POST["tx_".$i.$j]);
					}
				}
			}

			for($i=1; $i<=$nos; $i++){
				if($_POST["iniciais_".$i]=="on"){
					menor_caminho($i);
					for($j=1; $j<=$nos; $j++){
						if($i !== $j){
							if($_POST["finais_".$j]=="on"){
								echo traca_rota($i, $j);
							}
						}
					}
				}
			}
		}
		
		?>			
		<p>Acadêmico: Willy Stadnick Neto</p>
	</body>
<html>