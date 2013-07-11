<?
class Grafo {
	public static function table_adjacencia($matriz = FALSE){
		$s = "<form method='post'><table>";
		for($l=0; $l<$_SESSION["cidades"]+1; $l++){
			$s .= "<tr>";
			for($c=0; $c<$_SESSION["cidades"]+1; $c++){
				if($l == $c){
					$s .= "<td>&nbsp;</td>"; 
				}elseif($l == 0){ 
					$s .= "<th>$c</th>";
				}elseif($c == 0){
					$s .= "<th>$l</th>";
				}elseif($l > $c){
					$s .= "<td>";
					if(!empty($matriz)){
						$s .= $matriz[$c-1][$l-1];
					}else{
						$s .= "&nbsp;";
					}
					$s .= "</td>";
				}elseif($l < $c){
					$s .= "<td>";
					if(!empty($matriz)){
						$s .= $matriz[$l-1][$c-1];
					}else{
						$s .= "<input type='text' class='valor2' name='vl_".$l."_".$c."' value='" . rand(1, 99) . "' />";
					}
					$s .= "</td>";
				}
			}
			$s .= "</tr>";
		}
		$s .= "</table><input type='button' value='randomiza' onclick=\"window.location='?random'\" />";
		if(empty($matriz)){
			$s .= " <input type='submit' value='fixa' name='fixa' />";
		}
		$s .= "</form>";
		return $s;
	}
	public static function select_cidades($selected){
		$s = "<form method='post'><select name='cidades'>";
		for($i=3; $i<MAX; $i++){
			$s .= "<option";
			if($selected == $i){ 
				$s .= " selected='selected'"; 
			}
			$s .= ">$i</option>";
		}
		$s .= "</select> <input type='submit' value='cidades' /></form>";
		return $s;
	}
	public static function monta(){
		$s = self::table_adjacencia($_SESSION["adjacencia"]);
		$s .= self::select_cidades($_SESSION["cidades"]);
		return $s;
	}
}

class Genetico {
	public static function input_populacao($taxa = FALSE){
		$s = "<input type='text' class='valor2' name='populacao' ";
		if($taxa){
			$s .= "value='$taxa' ";
		}else{
			$s .= "value='10' ";		
		}
		$s .= "/> tamanho da população";
		return $s;
	}
	public static function input_reproducao($taxa = FALSE){
		$s = "<input type='text' class='valor2' name='reproducao' ";
		if($taxa){
			$s .= "value='$taxa' ";
		}else{
			$s .= "value='50' ";		
		}
		$s .= "/> taxa de reprodução";
		return $s;
	}
	public static function input_mutacao($taxa = FALSE){
		$s = "<input type='text' class='valor2' name='mutacao' ";
		if($taxa){
			$s .= "value='$taxa' ";
		}else{
			$s .= "value='50' ";		
		}
		$s .= "/> taxa de mutação";
		return $s;
	}
	public static function opcoes(){
		$s = "<form method='post'>";
		$s .= self::input_populacao($_SESSION["genetico"]["populacao"])."<br />";
		$s .= self::input_reproducao($_SESSION["genetico"]["reproducao"])."<br />";
		$s .= self::input_mutacao($_SESSION["genetico"]["mutacao"])."<br />";
		$s .= "<input type='submit' name='salvar' value='salvar' />";
		$s .= "</form>";
		return $s;
	}
	public static function geracao(){
		$s = "<form method='post'>";
		$s .= "<input type='submit' name='geracao' value='nova geração' />";
		$s .= "</form>";
		return $s;
	}
	public static function lista($objeto, $op = FALSE){
		$o = unserialize($_SESSION[$objeto]);
		if(is_object($o)){
			$s = "<ol>";
			foreach($o->populacao as $individuo){
				$s .= "<li>";
				unset($g);
				if(is_array($individuo->gene)){
					foreach($individuo->gene as $gene){
						$g[] = $gene + 1;
					}
				$s .= implode("-", $g);
				}
				$s .= " (".$individuo->fitness.")";
				$s .= "</li>";
			}
			$s .= "</ol>";
			if($op){
				$s .= self::geracao();
			}
		}else{
			$s = "zero indivíduos";
		}
		return $s;
	}
}

class Visao {
	public static function show(){
		echo self::box("matriz de adjacencia", "matriz", Grafo::monta());
		echo self::box("opções do AG", "genetico", Genetico::opcoes());
		echo self::box("população", "populacao", Genetico::lista("populacao", TRUE));
		echo self::box("melhores", "melhores", Genetico::lista("melhores"));
		echo self::box("creditos", "creditos", file_get_contents("creditos.inc"));
		echo self::box("debug", "debug", Debug::show());
	}	
	public static function box($titulo, $view, $conteudo){
		$s = "<div class='box' id='$view'><div class='header'><p>$titulo<a href='?view=$view' class='toggle ";
		if($_SESSION["visao"]["$view"]){ 
			$s .= "in"; 
		}
		$s .= "visible'></a></p></div>";
		if($_SESSION["visao"]["$view"]){
			$s .= "<div class='content'>$conteudo</div>";
		}
		$s .= "</div>";
		return $s;
	}
}

class Debug {
	public static $debug;
	public static function show(){
		$s = "<input type='button' onclick=\"window.location='?reset'\" value='reset' />";
		$s .= "<pre>";
		ob_start();
		var_dump(self::$debug);
		$dump = ob_get_clean();
		ob_end_flush();
		$simbols = array("{", "}");
		$s .= trim(str_replace($simbols, "\n", $dump));
		$s .= "</pre>";
		return $s;
	}
	public static function inc($nome, $var){
		self::$debug[$nome] = $var;
	}
}
?>