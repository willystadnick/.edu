<?
include_once("funcoes.php");

if(isset($_GET["produto"])){ $produto = $_GET["produto"]; }

$prod["generom"] = 0;
$prod["generof"] = 0;
$prod["idadei"] = 999;
$prod["idadef"] = 0;
$prod["estadocivil1"] = 0;
$prod["estadocivil2"] = 0;
$prod["estadocivil3"] = 0;
$prod["estadocivil4"] = 0;
$prod["estadocivil5"] = 0;
$prod["escola1"] = 0;
$prod["escola2"] = 0;
$prod["escola3"] = 0;
$prod["escola4"] = 0;
$prod["escola5"] = 0;
$prod["ocup1"] = 0;
$prod["ocup2"] = 0;
$prod["ocup3"] = 0;
$prod["ocup4"] = 0;
$prod["ocup5"] = 0;
$prod["ocup6"] = 0;
$prod["ocup7"] = 0;
$prod["ocup8"] = 0;
$prod["ocup9"] = 0;
$prod["ocup10"] = 0;
$prod["ocup11"] = 0;
$prod["ocup12"] = 0;
$prod["ocup13"] = 0;
$prod["ocup14"] = 0;
$prod["ocup15"] = 0;
$prod["atua1"] = 0;
$prod["atua2"] = 0;
$prod["atua3"] = 0;
$prod["atua4"] = 0;
$prod["atua5"] = 0;
$prod["atua6"] = 0;
$prod["atua7"] = 0;
$prod["atua8"] = 0;
$prod["atua9"] = 0;
$prod["atua10"] = 0;
$prod["atua11"] = 0;
$prod["atua12"] = 0;
$prod["atua13"] = 0;
$prod["atua14"] = 0;
$prod["atua15"] = 0;
$prod["atua16"] = 0;
$prod["atua17"] = 0;
$prod["atua18"] = 0;
$prod["atua19"] = 0;
$prod["atua20"] = 0;
$prod["atua21"] = 0;
$prod["atua22"] = 0;
$prod["atua23"] = 0;
$prod["inter1"] = 0;
$prod["inter2"] = 0;
$prod["inter3"] = 0;
$prod["inter4"] = 0;
$prod["inter5"] = 0;
$prod["inter6"] = 0;
$prod["inter7"] = 0;
$prod["inter8"] = 0;
$prod["inter9"] = 0;
$prod["inter10"] = 0;
$prod["inter11"] = 0;
$prod["inter12"] = 0;
$prod["inter13"] = 0;
$prod["inter14"] = 0;
$prod["inter15"] = 0;
$prod["inter16"] = 0;
$prod["inter17"] = 0;
$prod["inter18"] = 0;

include_once("conecta-banco.php");

// contar qtas pessoas escolheram o produto
$qry = mysql_query("SELECT * FROM pessoa_produto WHERE produto_id = " . $produto, $conexao);
$nro = mysql_num_rows($qry);

// fazer somatorio das variaveis das pessoas no produto
while($res = mysql_fetch_assoc($qry)){
$qry1 = mysql_query("SELECT * FROM pessoa WHERE id = " . $res["pessoa_id"], $conexao);
$res1 = mysql_fetch_assoc($qry1);

//echo "<pre>"; print_r($res1); echo "</pre>";

//sexo
if($res1["sexo"]=="m"){ $prod["generom"]++; } else { $prod["generof"]++; }

//nascimento
if(idade($res1["nascimento"]) < $prod["idadei"]){ $prod["idadei"] = idade($res1["nascimento"]); }
if(idade($res1["nascimento"]) > $prod["idadef"]){ $prod["idadef"] = idade($res1["nascimento"]); }

//estadocivil
switch($res1["estadocivil"]){
case 1: $prod["estadocivil1"]++; break;
case 2: $prod["estadocivil2"]++; break;
case 3: $prod["estadocivil3"]++; break;
case 4: $prod["estadocivil4"]++; break;
case 5: $prod["estadocivil5"]++; break;
}

//escolaridade
switch($res1["escolaridade"]){
case 1: $prod["escola1"]++; break;
case 2: $prod["escola2"]++; break;
case 3: $prod["escola3"]++; break;
case 4: $prod["escola4"]++; break;
case 5: $prod["escola5"]++; break;
}

//ocupacao
switch($res1["ocupacao"]){
case 1: $prod["ocup1"]++; break;
case 2: $prod["ocup2"]++; break;
case 3: $prod["ocup3"]++; break;
case 4: $prod["ocup4"]++; break;
case 5: $prod["ocup5"]++; break;
case 6: $prod["ocup6"]++; break;
case 7: $prod["ocup7"]++; break;
case 8: $prod["ocup8"]++; break;
case 9: $prod["ocup9"]++; break;
case 10: $prod["ocup10"]++; break;
case 11: $prod["ocup11"]++; break;
case 12: $prod["ocup12"]++; break;
case 13: $prod["ocup13"]++; break;
case 14: $prod["ocup14"]++; break;
case 15: $prod["ocup15"]++; break;
}

//atuacao
switch($res1["atuacao"]){
case 1: $prod["atua1"]++; break;
case 2: $prod["atua2"]++; break;
case 3: $prod["atua3"]++; break;
case 4: $prod["atua4"]++; break;
case 5: $prod["atua5"]++; break;
case 6: $prod["atua6"]++; break;
case 7: $prod["atua7"]++; break;
case 8: $prod["atua8"]++; break;
case 9: $prod["atua9"]++; break;
case 10: $prod["atua10"]++; break;
case 11: $prod["atua11"]++; break;
case 12: $prod["atua12"]++; break;
case 13: $prod["atua13"]++; break;
case 14: $prod["atua14"]++; break;
case 15: $prod["atua15"]++; break;
case 16: $prod["atua16"]++; break;
case 17: $prod["atua17"]++; break;
case 18: $prod["atua18"]++; break;
case 19: $prod["atua19"]++; break;
case 20: $prod["atua20"]++; break;
case 21: $prod["atua21"]++; break;
case 22: $prod["atua22"]++; break;
case 23: $prod["atua23"]++; break;
}

//interesses
for($i=0; $i<18; $i++){
if($res1["interesses"]{$i} == "1"){
$ref = "inter" . ($i + 1);
$prod[$ref]++;
}
}

}

// dividir somatorios pelo nro d pessoas para cada variavel
foreach($prod AS $key => $value){
if($key !== "idadei" && $key !== "idadef"){ $prod[$key] = $value / $nro; }
}

// grava no banco os resultados
foreach($prod AS $key => $value){
$set[] = $key . " = ". $value;
}
$qry = "UPDATE produto SET " . implode(", ", $set) . " WHERE id = " . $produto;
mysql_query($qry, $conexao);

//echo $qry;
//echo date("d/m/Y");
//echo idade("10/10/1983");
//echo "<pre>"; print_r($prod); echo "</pre>";

?>