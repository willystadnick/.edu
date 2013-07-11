<?
/*
Desenvolvido por:
	Cristiano Dias Campos
	Daniel Patrocinio
	Diego Parrilha Bisconsin
	Roger Fernandes Coan
	Willy Stadnick Neto 
*/

//incia a sessao
session_start();

//requere arquivo automato.php (onde esta a classe Automato) 
require("compilador.php");

//define a variavel $automato como Classe Automato
$compilador = new Compilador();

//controle ação formulario rotina
switch($_GET['funcao']){

//Inicia a rotina de Analize para criação do Automato
		case 'Compilar':
			$compilador->pega_valores_form();
			$compilador->analiza_expressao();
		break;
//Inicia a rotina de Analize para sobre o Automato
		case 'Limpa':
			$compilador->limpa_campos();
		break;
}
?>

<html>
<head>
<title>::.Ger&ecirc;nciamento de Automato .::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<style type="text/css">

<!--
.style2 {color: #333333}
-->

</style>
</head>
<body scroll="no">
	<form action="" method="post" name="rotina">
		<div style="font-size:22px; "align="center">Sistema Ut&oacute;pico Compilador Potugol (::.SUCP..::)</div>
		<input type="submit" name="Submit" value="Compilar">
		<input type="submit" name="limpar" value="Limpar Campos">
		<table width="800" height="427"  border="1">
			<tr>
				<td height="346">::Código::
					<textarea name="textarea" cols="96" rows="20">
						<? echo $compilador->escreve_codigo; ?>
					</textarea>
				</td>
			</tr>
			<tr>
				<td>::Log's::
					<textarea name="textarea2" cols="96" rows="4">
						<? echo $compilador->escreve_log; ?>
					</textarea>
				</td>
			</tr>
		</table>
	</form>
</body>

</html>