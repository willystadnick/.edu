 /*Trabalho uma sala                 
     Academicos:Gabriel Moreira de Albuquerque
                Cristina de Oliveira
                Cristiane Rodrigues
                Yaskara
                Luciano Motta Fuck
     Disciplina: Computação Gráfica 
     Professor : Jean Pierre
     7º Fase de Ciência da Computação
*/
#include"colors.inc"
#include"textures.inc"
#include"stones.inc"
#include"shapes.inc"

//________ camera  ___________________________________
camera{
  location <0,4,-6>    //0,4,-6 //0,6,-2
  look_at  <0,1,2>     //0,1,2  //0,3,2
}

//________  Plano1 ___________________________________
plane { y,-0.9 
   pigment {
      checker color Black color White
      scale 1
   }
   finish { 
   reflection {0.5} 
   ambient 0.2 
   diffuse 0.3 }   
} 
//________  Luz ______________________________________
light_source {
  <1,4.5,-4>
  color Clear
  fade_distance 200         //aumenta ou diminui a luz
  fade_power 100             //liga o botao
}

//_______  parede esquerda __________________________
plane { <5,-0.65,0>,-6 pigment {color DarkTurquoise} }

//_______  parede direita ___________________________
plane {<-50,-6.4,0>,-6 pigment {color DarkTurquoise} }

//_______   teto ____________________________________
plane { y,5 pigment {color DarkTurquoise} }

//_______  parede fundo _____________________________
plane { z, 10 pigment {color DarkTurquoise }  }
      
//_______  balcão  ________________________________
box { <-7,1.5,-7><-7.3,-1,0>    pigment {color Brown}
    rotate y*90 
    }
box { <-6.5,1.6,-7><-8,1.5,0>    pigment {color Copper}
    rotate y*90 
    }      
 
//_______  estante ________________________________
box { <-9.8,3.5,-7><-10,-1,-2.4> pigment {color DarkBrown}
    rotate y*90 
    }
box { <-9,3.5,-5.9><-10,-1,-5.8> pigment {color Brown}
        rotate y*90  rotate z*-6 rotate x*4
    }
box { <-9,3.5,-2.45><-10,-1,-2.4> pigment {color Brown}
        rotate y*90  rotate z*-3 rotate x*1
    }
box { <-9,3.5,-4.2><-10,-1,-4.1> pigment {color Brown}
        rotate y*90  rotate z*-5 rotate x*2
    }
box { <-9,2.4,-5.5><-9.3,2.3,-2.3> pigment {color Brown}
    rotate y*90 
    }
box { <-9,3.55,-5.45><-10.3,3.4,-2.2>  pigment {color Brown}
    rotate y*90 
    }  
 
//_______  porta ____________________________________________________
box { <3,3,10><1,-2.5,9.999> pigment {color DarkBrown} 
        rotate z*1
    }
box { <3.2,2.78,10><2,-2.5,9.999> pigment {color DarkBrown}  rotate z*3.8
    } 
sphere{<2.7,1.2,9.9>,0.18  texture{  pigment{color Black} }  
      }              
//_______  Contorno do porta ________________________________
box { <-9.8,3.4,0.9><-10,-0.555,1> pigment {color White}
        rotate y*90  rotate z*1 rotate x*2} 
box { <-9.89,3,3.18><-10,-0.9555,3.28> pigment {color White}
        rotate y*90  rotate z*3.9 rotate x*0.75} 
box { <-9.9,3,3.06><-12,3.1,0.856> pigment {color White}
    rotate y*90 
    }              

//________ banquinho 1 ______________________________________________
#declare  c=5.1; 
#declare  a=-1.69;  
box{<-1.5,-1,5><-1.6,0.9,4.9> pigment {color Copper}
   }                           
box{<-1.8,-1,5><-1.9,0.9,4.9> pigment {color Copper}
   }
box{<-1.5,-1,5.5><-1.6,0.8,5.4> pigment {color Copper}
   }   
box{<-1.8,-1,5.5><-1.9,0.8,5.4> pigment {color Copper}
   }
cylinder {<a,0.8,c><a,0.9,c>,0.35 pigment {color Copper}
         }

//________ banquinho 2 _______________________________________________ 
#declare  c=5.1; 
#declare  a=-3.24;  
box{<-3,-1,5><-3.1,0.77,4.9> pigment {color Copper}
   }                           
box{<-3.3,-1,5><-3.4,0.9,4.9> pigment {color Copper}
   }
box{<-3.1,-1,5.5><-3.2,0.8,5.4> pigment {color Copper}
   }   
box{<-3.4,-1,5.5><-3.5,0.8,5.4> pigment {color Copper}
   }
cylinder {<a,0.8,c><a,0.9,c>,0.35 pigment {color Copper}
 } 
//________ banquinho 3 _______________________________________________  
 
#declare  c=5.1; 
#declare  a=-4.68;  
box{<-4.45,-1,5><-4.55,0.77,4.9> pigment {color Copper}
   }                           
box{<-4.75,-1,5><-4.85,0.9,4.9> pigment {color Copper}
   }
box{<-4.5,-1,5.3><-4.6,0.8,5.2> pigment {color Copper}
   }   
box{<-4.8,-1,5.5><-4.8,0.8,5.4> pigment {color Copper}
   }   

cylinder {<a,0.8,c><a,0.9,c>,0.35 pigment {color Copper}
 } 
//________ cerveja 1 ________________________________________________
#declare d=-5;
#declare e=7.3;
cylinder{ <d,1.6,e><d,1.9,e>0.1  pigment {color White}
        } 
        
//_________ cerveja 2 _______________________________________________
#declare d=-3.5;
#declare e=7.1;
cylinder{ <d,1.6,e><d,1.9,e>0.1  pigment {color White}
        }
//_________ cerveja 3 _______________________________________________        
#declare d=-2;
#declare e=7.1;
cylinder{ <d,1.6,e><d,1.9,e>0.1  pigment {color White}
        }        

//_________ cerveja 4 _______________________________________________
#declare d=-5.1;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}
        }
//_________ cerveja 5 _______________________________________________
#declare d=-4.8;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
}  
//_________ cerveja 6 _______________________________________________
#declare d=-4.5;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
}  
//_________ cerveja 7 _______________________________________________
#declare d=-4.2;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
}
//_________ cerveja 8 _______________________________________________
#declare d=-2.6;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
} 
//_________ cerveja 9 _______________________________________________
#declare d=-3.5;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
}          
//_________ cerveja 10 _______________________________________________
#declare d=-3.2;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
}              
//_________ cerveja 11 _______________________________________________
#declare d=-2.9;
#declare e=9;
cylinder{ <d,2.75,e><d,2.45,e>0.1  pigment {color Yellow}                                                        
}  
//_________ cerveja 12 _______________________________________________
#declare d=-0.5;
#declare e=-0.8;
cylinder{ <d,1.1,e><d,1.48,e>0.1  pigment {color White}
        }
//_________ cerveja 13 _______________________________________________
#declare d=0.5;
#declare e=-0.8;
cylinder{ <d,1.1,e><d,1.48,e>0.1  pigment {color White}
        }
//_________ sofá1 ____________________________________________________
box {<4.5,0,8><8,-1,6> texture{ pigment {color NavyBlue  }  }
    }    
box {<5.6,1,8><8,-1,6> texture{ pigment {color NavyBlue     }  }
    }
//_________ sofá2 ____________________________________________________
box {<4.5,0,1.5><8,-1,3.5> texture{ pigment {color NavyBlue  }  }
    }    
box {<5.6,1,1.5><8,-1,3> texture{ pigment {color NavyBlue     }  }
    }    
//_________ Lateral so sofa ____________________________________________________
box {<4.5,0.3,8><8,-1,8.3> texture{ pigment {color NavyBlue  }  }
    } 
box {<4.5,0.3,6><8,-1,6.3> texture{ pigment {color NavyBlue   }  }
    }         
box {<4.5,0.3,3.5><8,-1,3.7> texture{ pigment {color NavyBlue   }  }
    } 
box {<4.5,0.3,1.5><8,-1,1.7> texture{ pigment {color NavyBlue  }  }
    }            
//_________ Lixo ____________________________________________________
  
difference{
cylinder {<5.6,0,5.2><5.6,-1,5.2>,0.4 
  pigment { color Yellow    
    }

}
cylinder {<5.6,-1,5.3><5.6,1.1,5.3>,0.3
 pigment {color Yellow   
    }
  } 
}
//_________ lampada ____________________________________________________ 
sphere{
       <-3,5.2,4>,0.3
       pigment {color White}
} 
//_________ lampada1 ____________________________________________________ 
sphere{
       <3,5.2,4>,0.3
       pigment {color White}
} 
//_________ lampada2 ____________________________________________________ 
sphere{
       <0,5.2,4>,0.3
       pigment {color White}
}
//_________Mesa _______________________________________________

#declare i=0;
#while (i<2)
    box     
    
      {
        <-0.25,-0.85,(-1+i)*0.6>, <-0.4,1,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
      box    
        {
        <0.15,-0.85,(-1+i)*0.6>, <0.3,1,(-0.8+i)*0.6> 
         pigment {color Copper}
        }
 
    #declare i=i+1;   
#end 

//___________parte de cima da mesa _____________________________________
cylinder {
    <0,1.1,-0.7> <0,1.15,-0.7>,0.9
     pigment {color Copper}
    }
//___________Cadeira1 __________________________________________________

#declare i=0;
#declare aux=0;

//___________primeira cadeira completa _________________________________
#while (i<2)
//___________pernas de tras ____________________________________________
     box     
    
      {
        <-1.8,-0.85,(-1+i)*0.6>, <-1.7,0.5,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
//___________pernas da frente __________________________________________
     box    
      {
        <-1,-0.85,(-1+i)*0.6>, <-1.1,0.4,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
//___________encosto  externos da cadeira _____________________________
  box
      {
        <-1.8,0.4,(-1+i)*0.6>, <-1.7,1.4,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
//___________encosto do meio __________________________________________
   box
      {
        <-1.8,(0.5+i)-aux,0.1>, <-1.7,(0.7+i)-aux,-0.6> 
         pigment {color Copper}
      } 
      
 
   #declare i=i+1;
   #declare aux=0.4;
#end      
//___________ascento da cadeira_1 _____________________________________
box    
    {
      <-1.8,0.3,-0.72>, <-0.9,0.4,0.2> 
      pigment {color Copper}
    }
            
            
//___________cadeira 2 ________________________________________________
#declare i=0;
#declare aux=0;
#while (i<2)
//___________pernas de tras ___________________________________________
     box     
    
      {
        <1.6,-0.85,(-1+i)*0.6>, <1.7,1,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
//___________pernas da frente ________________________________________ 
     box    
      {
        <0.9,-0.85,(-1+i)*0.6>, <1,0.4,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
//___________encosto  externos da cadeira _____________________________ 
   box
      {
        <1.6,0.4,(-1+i)*0.6>, <1.7,1.4,(-0.8+i)*0.6> 
         pigment {color Copper}
      }
//___________encosto do meio _________________________________________
   box
      {
        <1.6,(0.5+i)-aux,0.1>, <1.7,(0.7+i)-aux,-0.6> 
         pigment {color Copper}
      } 
   #declare i=i+1;
   #declare aux=0.4;
#end      
//___________ascento da cadeira_2 ____________________________________
box    
    {
      <0.83,0.3,-.72>, <1.7,0.4,0.2> 
      pigment {color Copper}
    }
//___________tapete____________________________________    
       
box 
    {<2.8,-0.85,2.9><-2.9,-3,-2>
     texture {
                T_Stone18
                pigment {}
                finish {reflection 0.10}
                }
                } 