<?php
/*
Desenvolvido por:
	Cristiano Dias Campos
	Daniel Patrocinio
	Diego Parrilha Bisconsin
	Roger Fernandes Coan
	Willy Stadnick Neto 

*/
//variaveis locais para uso no Banco Mysql
$banco = "automato";
$user = "root";
$pass = "skole51";
$host = "localhost";

//--------------------------------------------------------------------------------------------------------------------------------
//função para conecção ao BD
function conecta(){
	global $host;
	global $banco;
	global $user;
	global $pass;
	global $conexao;
	$conexao = mysql_connect($host,$user,$pass) or msg_erro("Não foi possível estabelecer conexão ao banco de dados: ".mysql_error());   // estabelece conexao
	mysql_select_db($banco,$conexao) or msg_erro("Não foi possível acessar o banco de dados: ".$banco." Erro: ".mysql_error());              // seleciona banco
}

//***********************(Funções de Log's de Erros)**************************************
/*Desenvolvido por:
		*************************************************************
		*	+------------------------------+						*
		*	|akang - Softwares Inteligentes|						*
		*	+------------------------------+						*
		*			(Direitos Reservados), 							*
		*			cedido para uso didático para os alunos: 		*
		*															*
		*						Cristiano Dias Campos				*
		*						Daniel Patrocinio					*
		*						Diego Parrilha Bisconsin 			*
		*						Roger Fernandes Coan 				*
		*						Willy Stadnick Neto					*
		*  															*
		*************************************************************
*/	
function msg_erro($mensagem){
	$data = date("d")."/".date("m")."/".date("Y");//data atual
	$mostra = "getElementById('c2').style.visibility='visible';";
	$esconde = "getElementById('c2').style.visibility='hidden';";
	print '
		
		<style>
		/* Estilo da janela de upload*/
		.caixa_log{
			VISIBILITY:; 
			position: absolute;
			left: 300px;
			top:45px;
			height:170px;
			width:38p4x;
			
			background-image:url(imagens/bg_quad.gif);
			border-color:#000066;
			border-width:2px;
			border-style:solid;
			padding:1px;
			
		}
		.caixa_erro{
			padding: 5px;
			background-color:#FFFF99;
			border-color:#0000FF;
			border-width:1px;
			border-style:solid;
			VISIBILITY: hidden; 
			TEXT-ALIGN: center;
			FONT: bold 12px Arial, Helvetica, sans-serif; 
			COLOR: #ffffff; 
			left: 10px;
			top: 25px;
			position: absolute;
		}
		
		</style>
		
		<link rel="stylesheet" href="../estilos/estilos.css">
		<div id="c1" class="caixa_log">
			<table cellspacing="1">
			<tr><td class="listrinha"></td></tr>
			<tr><td class="titulo_tabela" align="center">Erro interno do sistema!</td></tr>
			<tr><td class="listrinha"></td></tr>
			<tr><td class="titulo_item" align="center">Descri&ccedil;&atilde;o:</td></tr>
			<tr><td class="titulo_item" align="center"><textarea name="descricao" cols="75" rows="7" class="texto" id="descricao">'.$mensagem.'</textarea></td></tr>
			<tr><td class="item" align="center" height="30"><input class="botoes" type="button" name="continuar" value="Continuar" onClick="history.back(-1)">
			<input class="botoes" type="button" name="debuga" value="Debugar"   onClick="'.$mostra.'"></td></tr>
			</table>
		</div>
		<div id="c2" class="caixa_erro">
				<table cellspacing="1"><form name="debugar" method="post" action="../salva_bug_db.php">
					<tr><td class="listrinha"></td></tr>
					<tr><td class="titulo_tabela" align="center">Erro interno do sistema!</td></tr>
					<tr><td class="listrinha"></td></tr>
					<tr><td class="titulo_item" align="center">Adicionar T&iacute;tulo</td></tr>
					<tr><td class="titulo_item" align="center"><input name="titulo" type="text" class="edit" id="titulo" size="75"></td></tr>
					<tr><td class="titulo_item" align="center">Descri&ccedil;&atilde;o:</td></tr>
					<tr><td class="titulo_item" align="center"><textarea name="descricao" cols="75" rows="7" class="texto" id="descricao">'.$mensagem.'</textarea></td></tr>
					<tr><td class="item" align="center" height="30"><input class="botoes" type="submit" name="salvar" value="Salvar Dados" > <input class="botoes" type="button" name="continuar" value="Cancelar" onClick="'.$esconde.'"></td></tr>
				</form></table>
		</div>';
		die;//mata o script
}

function msg_alerta(){
	print	'
			<script>
			var x= Math.floor(document.body.clientWidth / 2) -400; 
			if(x<0){x=0;} 
			var y= Math.floor(document.body.clientHeight / 2) -150; 
			if(y<0){y=0;} 
			document.write(\'
			<div left="\'+(x)+\'" top="\'+(y)+\'" id="msg_alerta" class="msg_alerta"  >
				<iframe id="conteudo" src="../conteudo.php" width="100%" scrolling="NO"> </iframe>
			</div>\');
			</script>';
}

function msg_dialogo(){
	print	'<div id="msg_alerta" class="msg_alerta">
				<table cellspacing="1"><form name="debugar" method="post" action="../salva_bug_db.php">
					<tr><td class="listrinha"></td></tr>
					<tr><td class="titulo_tabela" align="center">Nome do Grupo</td></tr>
					<tr><td class="listrinha"></td></tr>
					<tr><td class="titulo_item" align="center"><input name="titulo" type="text" class="edit" id="titulo" size="75"></td></tr>
					<tr><td class="item" align="center" height="30"><input class="botoes" type="submit" name="Ok" value="Ok" > <input class="botoes" type="button" name="continuar" value="Cancelar" onClick="getElementById(\'msg_alerta\').style.visibility=\'hidden\';"></td></tr>
				</form></table>
			</div>';
}
//*****************************FIM(Funções de Log's de Erros)FIM***************************************
?>