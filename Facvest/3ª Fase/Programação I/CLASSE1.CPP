class ponto { 

float x;                                                                                      
//dados membro                                                                                
float y;                                                                                      

public: 

//qualificador                                                                                 
void inicializa(float a, float b) {x=a; y=b;};                                                 
//funcao membro                                                                                
void move(float dx, float dy) {x+=dx; y+=dy; };                                                

};
a declara��o 1 equivale totalmente �:
2) 
class ponto {
private: 

float x;                                                                                      
float y;                                                                                      

public: 

//qualificador                                                                                
void inicializa(float a, float b) {x=a;                                                       
y=b;};                                                                                        
void move(float dx, float dy)  {x+=dx;                                                        
y+=dy; };                                                                                     

};
que equivale totalmente �:
3) 
struct ponto {
private: 

//se eu nao colocar private eu perco o encapsulamento em struct.                              
float x;                                                                                      
float y;                                                                                      

public: 

//qualificador                                                                                
void inicializa(float a, float b) {x=a;                                                       
y=b;};                                                                                        
void move(float dx, float dy) {x+=dx; y+=dy;                                                  
};                                                                                            

}
