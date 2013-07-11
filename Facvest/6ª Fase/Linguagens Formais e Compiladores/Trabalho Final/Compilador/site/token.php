<?
/*
Desenvolvido por:
	Cristiano Dias Campos
	Daniel Patrocinio
	Diego Parrilha Bisconsin
	Roger Fernandes Coan
	Willy Stadnick Neto 

*/

//acesso ao bd!!!
require("config.php");
conecta();

//Aqui eu chamo outra classe pois esse sistema funciona com o crusamento de 2 Classes

//requere arquivo compilador.php (onde esta a classe Automato) 
require("compilador.php");
//define a variavel $compilador como Classe compilador
$compilador = new compilador();


//declaracao da classe token!!!

class token{
	//*****************declarações de variaveis da classe automato************
	var $expressao;		
	var $teste;
	var $log_erro;

	function pega_valores_form(){
		$this->expressao		= $_POST['expressao'];
		$this->teste			= $_POST['teste'];
	}

	//atribui valores do formulario
	function pega_valores_session(){
		$_SESSION['expressao']          = $this->expressao;
		$_SESSION['teste']         		= $this->teste;
	}

	//atribui os valores da session para os objetos afim de amostragem para o usuario!!!!
 	function pega_valores_objetos(){
		$this->expressao                = $_SESSION['expressao'];
		$this->teste                	= $_SESSION['teste'];

	}

	//atribui os valores da session para os objetos afim de amostragem para o usuario!!!!
 	function zera_valores(){
		$this->expressao                = null;
		$this->teste                	= null;
	}

//rotinas principais
	function analiza_expressao(){
		$_SESSION['estado_final'] = 0;
		$_SESSION['caracteres'] = 0;
		$_SESSION['grupo_caracter'];
		$this->estados = null;
		//conta o tamanho da expressao
		$cont = strlen($this->expressao);
		$i = 0;
		
		//rotina encontra grupos-----------------
		while ($cont >= $i){
			$caracter = $this->expressao[$i];
			//trasnforma o caracter em codigo ascii
			$carac = ord($caracter);
			$grupo = $this->verifica_grupo($carac);
			$this->cria_grupos($caracter,$grupo);
			$_SESSION['grupo_caracter'.$i] = $grupo;
			$_SESSION['grupo_estado'.$i] = $_SESSION['grupo_caracter'.$i];
			$i++;
			$_SESSION['caracteres']++;

		}
		//fim rotina encontra grupos!!!---------------
		//<<<<<<<<controle de erro while>>>>>>>>>>>>>
		$_SESSION['estado_final']--;
		$_SESSION['caracteres']--;
		//<<<<<<<<>>>>><<<<>>>>fim<<<<<<<<<>>>>>>>>>>
		$compilador->analiza_linha();
		$this->escreve_expressao();
		$this->escreve_tokens();
	}

	function cria_grupos($token,$grupo){
		//flag para o controle de estado
		$estado = 'falso';
		//controle de filtro de estados...!!!!
		if($grupo != null){
			$cont =0;
			while($_SESSION['estado_final'] >= $cont){
				if($grupo == $_SESSION['grupo_'.$cont]){
					$_SESSION['tokens_do_grupo_'.$cont] .= $token;
					$cont = $_SESSION['estado_final'];
					$estado = 'verdadeiro';
				}
				$cont++;
			}
		}
		if($estado == 'falso'){
			$_SESSION['grupo_'.$_SESSION['estado_final']] = $grupo;
			$_SESSION['tokens_do_grupo_'.$_SESSION['estado_final']] .= $token;
			$_SESSION['estado_final']++;
		}
	}

	function testa_automato(){
		$this->log_erro = NULL;
		//conta o tamanho da expressao
		$cont = strlen($this->teste);
		$i = 0;
		//verifica erro sintatico
		while ($_SESSION['estado_final'] > $i){
			$caracter = $this->teste[$i];
			//trasnforma o caracter em codigo ascii
			$carac = ord($caracter);
			$grupo = $this->verifica_grupo($carac);
			//funcao que verifica a sintaxe
			$compilador->verifica_sitaxe($grupo);
			$i++;
		}
		//verifica erro lexico
		if($this->log_erro == NULL){
			$cont = strlen($this->teste);
			$i = 0;
			while ($_SESSION['estado_final'] > $i){
				$caracter = $this->teste[$i];
				//trasnforma o caracter em codigo ascii
				$carac = ord($caracter);
				$grupo = $this->verifica_grupo($carac);
				if($grupo != $_SESSION['grupo_caracter'.$i]){
					$j = $i + 1;
					$this->log_erro = "Erro Lexico!, Erro no Estado(".$j.")!!";
				}
				$i++;
			}
		}
		//controle de tamanho da expressao!!
		if($this->log_erro == NULL){
			$cont_teste = strlen($this->teste);
			$cont_expressao = strlen($this->expressao);
			if($cont_expressao < $cont_teste){
				$this->log_erro = "Erro Sintatico!, Expressao muito extensa!!";
			}
		}
		//caso não haja erro até aqui 
		if($this->log_erro == NULL){
			//Mostra que não hove erros
			$this->log_erro = "Analize Lexica e Sintatica Corretas!!!";
		}
		//função que escreve o erro
		$this->escreve_erro();
	}
	
	function verifica_sitaxe($grupo){
		//flag para o controle de estado
		$estado = 'falso';
		//controle de filtro de estados...!!!!
		if($grupo != NULL){
			$cont =0;
			//compara o grupo do token com ogrupo do estado
			while($_SESSION['estado_final'] >= $cont){
				if($grupo == $_SESSION['grupo_'.$cont]){
					$cont = $_SESSION['estado_final'];
					$estado = 'verdadeiro';
				}
				$cont++;
			}
		}
		if($estado === 'falso'){
			//erro sintatico!!
			$this->log_erro = "Erro Sintatico!".$grupo;
		}
	}

	function escreve_erro(){
		$this->analise = $this->log_erro;
	}

//-------------------------------------controladores de banco de dados-----------------------------------------------------
	function verifica_grupo($carac){
		global $conexao;
		//transforma o cadigo ascii em caracter
		$token = chr($carac);
		//controle de erro sobre o "%"
		if($token == '%'){
			$token = '$%';
		}
		//consulta
		$sql = "SELECT  ID_TOKEN, GRUPO, CARACTERES
				FROM TOKEN WHERE CARACTERES LIKE '%$token[0]%'";
		$consulta = mysql_query($sql,$conexao) or msg_erro("falha ao consultar token: ".mysql_error());
		$grupo = mysql_fetch_row($consulta);
		//cria grupo nao identificado......
		if($grupo[1] == null and $carac != null){
			$grupo[1] = 'não identificado';
		}
		return $grupo[1];
	}



}
?>
