public class Tartaruga{
	int pos = 1;
	String status = "Aguardando largada............";

//	public Tartaruga(){
//		pos = 0;
//		status = "Aguardando largada............";}
	
	public void caminhaRapido(){
		status = "Caminhando rapidamente........";
		pos = pos + 3;
		if(pos > 70){
			pos = 70;}}
	
	public void escorrega(){
		status = "Escorregando..................";
		pos = pos - 6;
		if(pos < 1){
			pos = 1;}}
	
	public void caminhaLento(){
		status = "Caminhando lentamente.........";
		pos = pos + 1;
		if(pos > 70){
			pos = 70;}}}