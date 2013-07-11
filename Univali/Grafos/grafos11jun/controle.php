<?
//GETs
if(isset($_GET["reset"])){ 
	session_unset();
}
if(isset($_GET["random"])){ 
	unset($_SESSION["adjacencia"]); 
	unset($_SESSION["populacao"]); 
	unset($_SESSION["melhores"]); 
}
if(!empty($_GET["view"])){ 
	$_SESSION["visao"][$_GET["view"]] = !$_SESSION["visao"][$_GET["view"]]; 
}
if(!empty($_GET)){
	$redirect = TRUE;
}

//POSTs
if(!empty($_POST["cidades"])){ 
	$_SESSION["cidades"] = $_POST["cidades"]; 
	unset($_SESSION["adjacencia"]); 
}
if($_POST["fixa"]=="fixa"){
	unset($_SESSION["adjacencia"]);
	unset($matriz);
	for($i=0; $i<=$_SESSION["cidades"]; $i++){
		for($j=0; $j<=$_SESSION["cidades"]; $j++){
			if(!empty($_POST["vl_".$i."_".$j])){
				$matriz[$i-1][$j-1] = (int)$_POST["vl_".$i."_".$j];
				$matriz[$j-1][$i-1] = (int)$_POST["vl_".$i."_".$j];
			}
		}
	}
	$_SESSION["adjacencia"] = $matriz;
}
if($_POST["salvar"]=="salvar"){
	$_SESSION["genetico"]["reproducao"]=$_POST["reproducao"];
	$_SESSION["genetico"]["mutacao"]=$_POST["mutacao"];
	$_SESSION["genetico"]["populacao"]=$_POST["populacao"];
	
	$p = new Populacao($_SESSION["genetico"]["populacao"]);
	$_SESSION["populacao"] = serialize($p);
	$_SESSION["melhores"] = serialize($p);
	
	$_SESSION["visao"]["populacao"] = TRUE;
	
	//Debug::inc("pop", $p);
}
if($_POST["geracao"]=="nova geraчуo"){	
	$melhor = unserialize($_SESSION["melhores"]);
	$atual = unserialize($_SESSION["populacao"]);
	$nova = new Populacao($_SESSION["genetico"]["populacao"]);
	
	$melhor->melhores($atual->populacao);
	//$nova->genetico();
	
	$_SESSION["melhores"] = serialize($melhor);
	$_SESSION["populacao"] = serialize($nova);
	
	$_SESSION["visao"]["melhores"] = TRUE;
}
/*
if($_POST["geracao"]=="nova geraчуo"){	
	$melhor = unserialize($_SESSION["melhores"]);
	$atual = unserialize($_SESSION["populacao"]);
	$nova = unserialize($_SESSION["populacao"]);
	
	$melhor->melhores($atual->populacao);
	$nova->genetico();
	
	$_SESSION["melhores"] = serialize($melhor);
	$_SESSION["populacao"] = serialize($nova);
	
	$_SESSION["visao"]["melhores"] = TRUE;
	
	//Debug::inc("melhores", $melhor);
}
*/

//SESSIONs
if(empty($_SESSION["visao"])){ 
	$_SESSION["visao"]["matriz"]=TRUE;
	$_SESSION["visao"]["genetico"]=TRUE;
}
if(empty($_SESSION["genetico"])){ 
	$_SESSION["genetico"]["reproducao"]=50;
	$_SESSION["genetico"]["mutacao"]=50;
	$_SESSION["genetico"]["populacao"]=10;
}
if(empty($_SESSION["cidades"])){ 
	$_SESSION["cidades"]=3;
}

//DEBUGs
/*
if(!empty($_GET)){ Debug::inc("get", $_GET); }
if(!empty($_POST)){ Debug::inc("post", $_POST); }
Debug::inc("session", $_SESSION);
*/
?>