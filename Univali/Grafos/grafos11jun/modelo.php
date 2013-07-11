<?
class Individuo {
	public $gene;
	public $fitness;
	function __construct($nro){
		for($i=0; $i<$nro; $i++){
			$this->gene[$i] = $i;
		}
		shuffle($this->gene);
		$this->fitness = 0;
		$this->calcula();
	}
	public function calcula(){
		for($i=0; $i<count($this->gene); $i++){
			$this->fitness += $_SESSION["adjacencia"][$this->gene[$i]][$this->gene[$i+1]];
		}
		//volta
		$this->fitness += $_SESSION["adjacencia"][$this->gene[count($this->gene)-1]][$this->gene[0]];
	}
	public function glue(){
		$g = new Individuo(count($this->gene));
		return $g->gene;
	}
	public function reproduz($beta){
		$alfa = $this->gene;
		
		$max = count($this->gene);
		$r = rand(1, $max);
		
		Debug::inc("rand=", $r);
		Debug::inc("alfa1=", $alfa);
		Debug::inc("beta1=", $beta);
		
		$alfa = array_unique(array_merge(array_slice($alfa, 0, $r), array_slice($beta, $r)));
		$beta = array_unique(array_merge(array_slice($beta, 0, $r), array_slice($alfa, $r)));
		
		Debug::inc("alfa2=", $alfa);
		Debug::inc("beta2=", $beta);
		
		if(count($alfa)!==count($this->gene) or count($beta)!==count($this->gene)){
			$alfa = array_unique(array_merge($alfa, $this->glue()));
			$beta = array_unique(array_merge($beta, $this->glue()));
		}
		
		Debug::inc("alfa3=", $alfa);
		Debug::inc("beta3=", $beta);
		
		$this->gene = $alfa;
		return $beta;
	}
}

class Populacao {
	public $populacao = array();
	public $tamanho;
	
	function __construct($nro){
		$this->tamanho = $nro;
		for($i=0; $i<$nro; $i++){
			$n = new Individuo($_SESSION["cidades"]);
			//validação
			$this->populacao[$i] = $n;
		}
		$this->ordena();
	}
	public function ordena(){
		unset($pop);
		for($i=0; $i<$this->tamanho; $i++){
			$max = 99999;
			$ind = array();
			foreach($this->populacao as $individuo){
				if($individuo->fitness < $max){
					$max = $individuo->fitness;
					$ind = $individuo;
				}
			}
			$pop[] = $ind;
			for($j=0; $j<$this->tamanho; $j++){
				if($this->populacao[$j] === $ind){
					unset($this->populacao[$j]);
					$j = $this->tamanho;
				}
			}
		}
		$this->populacao = $pop;
	}
	public function melhores($p){
		$t = $this->tamanho;
		$this->populacao = array_merge($this->populacao, $p);
		//unique
		for($i=0; $i<count($this->populacao); $i++){
			for($j=$i+1; $j<count($this->populacao); $j++){
				if($this->populacao[$i]->gene == $this->populacao[$j]->gene){
					//$ig = implode($this->populacao[$i]->gene);
					//$jg = implode($this->populacao[$j]->gene);
					Debug::inc("pop $i", $this->populacao[$i]->gene);
					Debug::inc("pop $j", $this->populacao[$j]->gene);
					unset($this->populacao[$j]);
				}
			}
		}
		$this->tamanho = count($this->populacao);
		$this->ordena();
		$this->tamanho = $t*2;
		$this->populacao = array_slice($this->populacao, 0, $this->tamanho);
				
		/*
		Debug::inc("pop=", $this->populacao);
		Debug::inc("tam=", $this->tamanho);
		*/
		
		//return $this;
	}
	public function genetico(){
		$pop = array();
		while(count($this->populacao)>0){
			shuffle($this->populacao);
			$m = array_shift($this->populacao);
			shuffle($this->populacao);
			$f = array_shift($this->populacao);
			if(rand(0, 100)<$_SESSION["genetico"]["reproducao"]){
				$f->gene = $m->reproduz($f->gene);
			}
			$pop[] = $m;
			$pop[] = $f;			
		}
		$this->populacao = $pop;
	}
}
?>