<?
session_start();
define(MAX, 50);
$redirect = FALSE;
include("global.php");
?>
<html>
	<head>
		<link href="style.css" rel="stylesheet" type="text/css">
		<? if($redirect){ ?>
		<script type='text/javascript'>
		<!-- 
		window.location = '/facul/grafos11jun/' 
		//-->
		</script>
		<? } ?>
		<title>Algoritmo Genético</title>
	</head>
	<body>
		<? Visao::show(); ?>
	</body>
<html>