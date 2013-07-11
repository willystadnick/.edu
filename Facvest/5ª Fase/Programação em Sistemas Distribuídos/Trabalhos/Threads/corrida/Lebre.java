public class Lebre{
	int pos = 1;
	String status = "Aguardando largada............";

//	public Lebre(){
//		pos = 0;
//		status = "Aguardando largada............";}
	
	public void dorme(){
		status = "Dormindo......................";}
	
	public void saltaLonge(){
		status = "Saltando longe................";
		pos = pos + 9;
		if(pos > 70){
			pos = 70;}}
	
	public void escorregaMuito(){
		status = "Escorregando muito............";
		pos = pos - 12;
		if(pos < 1){
			pos = 1;}}

	public void saltaPerto(){
		status = "Saltando perto................";
		pos = pos + 1;
		if(pos > 70){
			pos = 70;}}

	public void escorregaPouco(){
		status = "Escorregando pouco............";
		pos = pos - 2;
		if(pos < 1){
			pos = 1;}}}