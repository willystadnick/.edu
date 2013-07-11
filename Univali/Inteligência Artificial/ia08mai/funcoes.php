<?
function idade($data){
list($dia, $mes, $ano) = explode("/", $data);
$dia_h = date("d");
$mes_h = date("m");
$ano_h = date("Y");
$anos = $ano_h - $ano;
if($mes_h < $mes){ $anos--; }
if($mes_h == $mes && $dia_h < $dia){ $anos--; }
return $anos;
}
?>