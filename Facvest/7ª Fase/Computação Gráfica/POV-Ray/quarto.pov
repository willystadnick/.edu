//TRABALHO FINAL DA DISCIPLINA DE COMPUTAÇÃO GRÁFICA
//PROFESSOR: JEAN PIERRE EZEQUIEL
//ALUNOS: ANDRÉ LORENZI
//        GIANE AMARAL
//        LARA APARECIDA BIAZOTTO
//--------------------------------------------------------------

#include "colors.inc"
#include "skies.inc"
#include "glass.inc"
#include "textures.inc"
#include "shapes.inc"
#include "stones.inc"
#include "woods.inc"

// camera ------------------------------------------------------

camera {
        location <0.55,3.8,-15.5>
        look_at<0,0,1.1>
        } 

          
// plano chão --------------------------------------------------

plane {y,0.5
       texture{
               T_Wood8  
               
              }
      }              

// céu da cena -------------------------------------------------

sky_sphere {
           S_Cloud5}
                            
// luz ---------------------------------------------------------

light_source {<0,5,0>color White}
light_source {<0,5,5>color White}
light_source {<0,15,10>color White} 
light_source {<0,40,-20>color White}

                                                                                
// plano lateral direita ---------------------------------------

plane {<60,0,10>,-10
       pigment {color Blue}
       
}  
                             
// plano lateral esquerda --------------------------------------

plane {<-60,0,10>,-10
       pigment {color Blue}
       
}                 
                        
// plano fundo -------------------------------------------------

box
    {
    <-20,0,29> <25,6,29>
    pigment {color blue 0.90 filter 0.2}
}
                         
box
    {
    <-20,6,29> <-5,20,29>
    pigment {color blue 0.90 filter 0.2}
}                          

box
    {
    <5,6,29> <25,20,29>              
    pigment {color blue 0.90 filter 0.2}
}              

box
    {
    <-5,20,29> <5,11,29>              
    pigment {color blue 0.90 filter 0.2}
}

// janela -------------------------------------------------------------

// grade vertical                          

box 
    {
        <-0.2,6,29> <0.3,11,29>              
        pigment {color rgb<0.65,0.3,0.25>}
    }                             

// grade vertical direita

box 
    {
        <-5.4,5.5,28.5> <-4.9,11,28.5>              
        pigment {color rgb<0.65,0.3,0.25>}
    }                             

// grade vertical esquerda

box 
    {
        <4.8,5.5,28.5> <5.3,11,28.5>              
        pigment {color rgb<0.65,0.3,0.25>}
    }                             

// grade horizontal

box
    {
        <-5,8,29> <5,8.5,29>              
        pigment {color rgb<0.65,0.3,0.25>}
         }                             

// grade horizontal embaixo

box
    {
        <-5,5.5,28.5> <5,6,28.5>              
        pigment {color rgb<0.65,0.3,0.25>}
         }    

// grade horizontal encima

box
    {
        <-5,10.5,28.5> <5,11,28.5>              
        pigment {color rgb<0.65,0.3,0.25>}
         } 
                           
                           
// bola na comoda-----------------------------------------------

union {
        sphere {<9,3.5,6>0.5
        interior {
                    caustics 1.0
                    ior 15
                    }       
                }    
        texture {
                    T_Glass1
                    pigment {color red 0.90 filter 0.85}
                    finish {
                             phong 1 phong_size 600
                             reflection 0.15
                           }                       
                }
       }

difference {
        box { <-60, 0, 500>, <-70, 0, 500> }
        cylinder { <0.5, 0, 1>, <0.5, 0, 2>, 1 }
  }      
  

//cama lado esquerdo--------------------------------------------

box
    {
        <-7.9,1.15,10> <-2.5,1.6,28.5>
        pigment {brick Gray20, rgb<0.65,0.5,0.25>} 
                         }
                         
//colcha cama lado esquerdo
                         
box
    {
        <-7.9,1.6,10> <-2.5,1.8,28.5>       
        hollow on
        pigment {red 0.7 green 0.7 blue 1.0 filter 0.5}
        interior {ior 1.1 caustics 1.0}
        normal {bumps 0.5}
                         }
                         
// pé cama lado esquerdo

cylinder
    {
        <-2.3,0,8>, <-2.3,2,8>, 0.2
        pigment {color Yellow}  
    }            

// pé cama lado direito

cylinder
    {
        <-7,0.0,8>, <-7,2,8>, 0.2
        pigment {color Yellow}  
    }  

// pé cama lado esquerdo fundo

cylinder
    {
        <-2.7,0,28.5>, <-2.7,2,28.5>, 0.4
        pigment {color Yellow}  
    } 
               
// pé cama lado direito fundo

cylinder
    {
        <-7.9,0,28.5>, <-7.6,2,28.5>, 0.4
        pigment {color Yellow}  
    }           
    
    
// travesseiro

intersection {
    sphere { <-5, 1.5, 25>, 1.5
             translate -0.5*y
    }  
    
    sphere { <-5, 1.5,25>, 1.5
             translate 0.5*y
    }      
    
    pigment {rgb<0.75,0.3,0.25>}
    }


// cama lado direito--------------------------------------------

box
    {
        <1.7,1.15,10> <7,1.6,28.5>
        pigment {brick Gray20, rgb<0.65,0.5,0.25>}  
                              
}

//colcha cama lado esquerdo
                         
box
    {
        <1.7,1.6,10> <7,1.8,28.5>       
        hollow on
        pigment {red 1.7 green 0.7 blue 0.1 filter 0.5}
        interior {ior 1.1 caustics 1.0}
        normal {bumps 0.5}
                         }
                         
// pé cama lado esquerdo

cylinder
    {
        <1.8,0,8>, <1.8,2,8>, 0.2
        pigment {color Yellow}  
    }            

// pé cama lado direito

cylinder
    {
        <6.3,0,8>, <6.3,2,8>, 0.2
        pigment {color Yellow}  
    }  

// pé cama lado esquerdo fundo

cylinder
    {
        <2,0,28.5>, <2,2,28.5>, 0.4
        pigment {color Yellow}  
    }            

// pé cama lado direito fundo

cylinder
    {
        <6.7,0,28.5>, <6.7,2,28.5>, 0.4
        pigment {color Yellow}  
    }  

// travesseiro

intersection {
      sphere { <-17, 1.5, 23>, 1.5
               translate -0.5*y
      }
      
      sphere { <-17, 1.5,23>, 1.5
               translate 0.5*y
      }
     pigment { rgb<0.65,0.3,0.25>}
     rotate y*45
  }

// Guarda roupas------------------------------------------------
    
// corpo    

box 
    {
        <-20.0,-2> <-8,7,9.5>
        pigment {color White}                        
    }                                  
         
box
    {
        <-7.9,0,0> <-8,7,0.5>
        pigment {color rgb<0.85,0.8,0.5>}  
    }
 
box
    {
        <-7.9,0,1.8> <-8,7,2.3>
        pigment {color rgb<0.85,0.8,0.5>}  
    }       
     
box
    {
        <-7.9,5,4> <-8,7,4.5>
        pigment {color rgb<0.85,0.8,0.5>}                                                             
    }

box
    {
        <-7.9,0,4> <-8,5.5,4.5>
        pigment {color rgb<0.85,0.8,0.5>}                                                          
    }

box
    {
        <-7.9,0,6.2> <-8,7,6.7>
        pigment {color rgb<0.85,0.8,0.5>}  
    }         
    
box
    {
        <-7.9,5,0> <-8,5.2,9.5>
        pigment {color rgb<0.85,0.8,0.5>}  
    }
    
box
    {
        <-7.9,6.8,0> <-8,7,9.5>
        pigment {color rgb<0.85,0.8,0.5>}  
    }
     
box
    {
        <-7.7,0,9.2> <-7.9,7,9.2>
        pigment {color rgb<0.85,0.8,0.5>}  
    }

box
    {
        <-7.9,2.5,2.5> <-8,2.7,6.7>
        pigment {color rgb<0.85,0.8,0.5>}  
    }

//pegadores      

cylinder
    {
        <-6.1,5.4,3>, <-6.3,5.4,3>, 0.2       
        pigment {color rgb<0.85,0.8,0.5>}
    }

cylinder
    {
        <-7.9,5.8,5>, <-7.8,5.8,5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }

cylinder
    {
        <-7,5.6,1.5>, <-6.9,5.6,1.5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }

cylinder
    {
        <-7.9,3.8,5>, <-7.8,3.8,5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }

cylinder
    {
        <-7,3.8,1.5>, <-6.9,3.8,1.5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }
   
cylinder
    {
        <-7.2,5.6,-0.2>, <-7.1,5.6,-0.2>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }   

cylinder
    {
        <-7.2,2.7,-0.2>, <-7.1,2.7,-0.2>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }   

cylinder
    {
        <-7.9,2.7,7.5>, <-7.8,2.7,7.5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }

cylinder
    {
        <-7,1.7,1.5>, <-6.9,1.7,1.5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }                   
    
   
cylinder
    {
        <-7,1.7,2.5>, <-6.9,1.7,2.5>, 0.2
         pigment {color rgb<0.85,0.8,0.5>}  
         
    }


//mesinha-------------------------------------------------------

box
    {
        <-2,1.5,28.5>, <1.5,1.6,22.8>
        
        pigment {red 0.75 green 0.75 blue 0.85}
                 finish {ambient 0.2
                 diffuse 0.7
                 reflection 0.15    
    }
  }

// pé mesa lado esquerdo fundo

cylinder
    {
        <-2,0,28>, <-2,2,28>, 0.2         
        pigment {red 0.75 green 0.75 blue 0.85}
                 finish {ambient 0.2
                 diffuse 0.7
                 reflection 0.15    
    }
    } 

// pé mesa lado esquerdo frente

cylinder
    {
        <1.3,0,28.5>, <1.3,2,28.5>, 0.2         
        pigment {red 0.75 green 0.75 blue 0.85}
                 finish {ambient 0.2
                 diffuse 0.7
                 reflection 0.15    
    }
    } 

// pé mesa lado direito frente

cylinder
    {
        <1.3,0,22.8>, <1.3,2,22.8>, 0.2         
        pigment {red 0.75 green 0.75 blue 0.85}
        finish {ambient 0.2
        diffuse 0.7
        reflection 0.15    
    }
    } 

// pé mesa lado esquerdo frente

cylinder
    {
        <-2,0,22.8>, <-2,2,22.8>, 0.2         
        pigment {red 0.75 green 0.75 blue 0.85}
        finish {ambient 0.2
        diffuse 0.7
        reflection 0.15    
    }
    }                                                     

// cone mesa

cone
    {
     <-0.25,1.3,26>,1, <-0.25,3.8,26>, 0.5
     texture {
              T_Glass3
              pigment {color Magenta }
              finish {
                      phong 1 phong_size 600
                      reflection 0.15
                     }                       
                }
    }                          
   
// tapete-------------------------------------------------------

box
    {
        <-5,0,-2> <5,0.6,3>
         pigment {rgb<0.65,0.3,0.25>
        }
             }      
             
//comoda--------------------------------------------------------

box
    {
        <8.7,0,10> <10.5,3,5>
        pigment {color White}  
                         }
                         
// divisao comoda

box
    {
        <8.5,0,7> <8.7,3,7.3>
        pigment {color Yellow}  
    }
    
// pegadores portas esquerda

cylinder
    {
        <8,2,7.3>, <8.2,2,7.3>, 0.2
         pigment {color Yellow}  
         
    } 

// pegadores portas direita
   
cylinder
    {
        <8.3,2,6>, <8.5,2,6>, 0.2
        pigment {color Yellow}  
    }                  
    
// porta -------------------------------------------------------


box
    {
        <10.5,0,1> <10.9,6.5,4.3>
        pigment {color White}  
     }

box
    {
        <10.4,0,4.2> <10.6,6.5,4.4>
         pigment {rgb<0.65,0.3,0.25>  }        
     }     

box
    {
        <10,0,1.1> <10.2,6.5,1.3>
         pigment {rgb<0.65,0.3,0.25>  }      
     }     

box
    {
        <10.5,6.4,1.1> <10.9,6.6,4.4>
         pigment {rgb<0.65,0.3,0.25>  }        
     }       
     
     
sphere 
{
        <10.5,3.2,4>0.2
        pigment {color Yellow}
}     

// fim ---------------------------------------------------------