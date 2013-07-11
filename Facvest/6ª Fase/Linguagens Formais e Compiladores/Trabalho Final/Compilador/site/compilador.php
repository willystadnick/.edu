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

//declaracao da classe Compilador!!!

class Compilador{
	//*****************declarações de variaveis da classe automato************
	var $linha;		
	var $comando;
	var $valor;
	var $erro;
	var $relacao;


//rotinas principais

	function analiza_linha(){
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
			$Linha = $grupo->Rotina_Basica();
		}
	}

	function verifica_sitaxe($token,$grupo){
		global $err_url_0, $db, $dbh, $cfgRelation;
	
		PMA_DBI_select_db($cfgRelation['db'], $dbh);
		if ($show_error) {
			$result = PMA_DBI_query($sql, $dbh, $options);
		} else {
			$result = @PMA_DBI_try_query($sql, $dbh, $options);
		} // end if... else...
		PMA_DBI_select_db($db, $dbh);
	
		if ($result) {
			return $result;
		} else {
			return FALSE;
		}
 }
//funcao retirada de www.phpclasse.net para maoir manipulação de bd... 
function PMA_getForeigners($db, $table, $column = '', $source = 'both') {
    global $cfgRelation, $err_url_0;

    if ($cfgRelation['relwork'] && ($source == 'both' || $source == 'internal')) {
        $rel_query          = 'SELECT master_field, foreign_db, foreign_table, foreign_field'
                            . ' FROM ' . PMA_backquote($cfgRelation['relation'])
                            . ' WHERE master_db =  \'' . PMA_sqlAddslashes($db) . '\' '
                            . ' AND   master_table = \'' . PMA_sqlAddslashes($table) . '\' ';
        if (!empty($column)) {
            $rel_query .= ' AND   master_field = \'' . PMA_sqlAddslashes($column) . '\'';
        }
        $relations     = PMA_query_as_cu($rel_query);
        $i = 0;
        while ($relrow = PMA_DBI_fetch_assoc($relations)) {
            $field                            = $relrow['master_field'];
            $foreign[$field]['foreign_db']    = $relrow['foreign_db'];
            $foreign[$field]['foreign_table'] = $relrow['foreign_table'];
            $foreign[$field]['foreign_field'] = $relrow['foreign_field'];
            $i++;
        } // end while
        PMA_DBI_free_result($relations);
        unset($relations);
    }

    if (($source == 'both' || $source == 'innodb') && !empty($table)) {
        $show_create_table_query = 'SHOW CREATE TABLE '
            . PMA_backquote($db) . '.' . PMA_backquote($table);
        $show_create_table_res = PMA_DBI_query($show_create_table_query);
        list(,$show_create_table) = PMA_DBI_fetch_row($show_create_table_res);
        PMA_DBI_free_result($show_create_table_res);
        unset($show_create_table_res, $show_create_table_query);
        $analyzed_sql = PMA_SQP_analyze(PMA_SQP_parse($show_create_table));

        foreach ($analyzed_sql[0]['foreign_keys'] AS $one_key) {
            foreach ($one_key['index_list'] AS $i => $field) {

                if (isset($one_key['constraint'])) {
                    $foreign[$field]['constraint'] = $one_key['constraint'];
                }

                if (isset($one_key['ref_db_name'])) {
                    $foreign[$field]['foreign_db']    = $one_key['ref_db_name'];
                } else {
                    $foreign[$field]['foreign_db']    = $db;
                }
                $foreign[$field]['foreign_table'] = $one_key['ref_table_name'];
                $foreign[$field]['foreign_field'] = $one_key['ref_index_list'][$i];
                if (isset($one_key['on_delete'])) {
                    $foreign[$field]['on_delete'] = $one_key['on_delete'];
                }
                if (isset($one_key['on_update'])) {
                    $foreign[$field]['on_update'] = $one_key['on_update'];
                }
            }
        }
    }
    if (PMA_MYSQL_INT_VERSION >= 50002 && $db == 'information_schema'
        && ($source == 'internal' || $source == 'both')) {

        require_once('./libraries/information_schema_relations.lib.php');

        if (!isset($foreign)) {
            $foreign = array();
        }

        if (isset($GLOBALS['information_schema_relations'][$table])) {
            foreach ($GLOBALS['information_schema_relations'][$table] as $field => $relations) {
                if ((empty($column) || $column == $field) && empty($foreign[$field])) {
                    $foreign[$field] = $relations;
                }
            }
        }
    }

    if (!empty($foreign) && is_array($foreign)) {
       return $foreign;
    } else {
        return FALSE;
    }

} 
?>
