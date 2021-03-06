              
#include "colors.inc"
#include "shapes.inc"
#include "glass.inc"
#include "stones.inc"  
#include "stones1.inc"
#include "woods.inc"
#include "metals.inc"
#include "skies.inc"  
#include "textures.inc"

//*******************************************************  
                      
//*******************************************************       
// camera 
camera{
          location<-0.5,2,0>
          look_at<-0.5,2,9>
      }
       
//*******************************************************  
// plano de c�u 
sky_sphere{
          S_Cloud2
      }
//*******************************************************       
// luz
light_source{                // luz interna da cozinha
         <0.75,3,4>
          color White
          fade_distance 25
          fade_power 1
      }


   
// luz do sol
light_source{               // luz externa dar impress�o
          <-7,6,1>          // luz do sol entrando na janela 
          color White
          fade_distance 7
          fade_power 1
      }

# declare lampada =union{  // luminaria 
 difference{
  cylinder { <0, 0, 0>, <2.2, 0, 0>, 0.09 
    pigment{ color White}
  }
  cylinder { <0, 0, 0>, <2, 0, 0>, 0.09 
    pigment{ color White}
  translate<0.15,-0.1,0>
  }
 }
  cylinder { <0, 0, 0>, <0.1, 0, 0>, 0.09 
    texture{ 
    pigment{color Black }
    finish{reflection 0.001}
    }
  translate<-0.1,0,0>
  }
  cylinder { <0, 0, 0>, <0.1, 0, 0>, 0.09 
    texture{ 
    pigment{color Black }
    finish{reflection 0.001}
    }
  translate<2.2,0,0>
  }
  // lampada 
  cylinder { <0, 0, 0>, <2, 0, 0>, 0.06   // lampada
    texture{ T_Glass3
    pigment{ }
    finish{reflection 7}
    }
  translate<0.15,-0.02,0>
  }
  //suporte da lampada
  difference{
    cylinder { <0, 0, 0>, <0.6, 0, 0>, 0.12 
      pigment{ color White}
      translate<0,0.2,0>
    }
   object{Cube scale <0.5,0.1,0.3>   
     texture{
      pigment{color White}
     }
     rotate<0,0,0>
     translate<0.3,0.34,0>          
   } 
   translate<0.85,0,0>
  }
rotate<0,0,0>  
translate<-0.5,4,7.3>
}
object{lampada
 scale<0.6,0.6,0.6>
 translate<0,1.65,0>
 }
//*******************************************************       
// ch�o da cena

plane{ <0,1,0>,-1    // ch�o com textura de madeira escura
      texture{
        T_Wood16
        pigment{}
           finish{reflection 0.1    // dar um brilho no ch�o         
                 }
             }
     }

//*******************************************************       
// parede fundo
object{Cube scale <6,6,0.3>   // parede de fundo de cor
    texture{                  // cinza claro
    pigment{color rgb<0.8,0.8,0.8>}
    }
    rotate<0,0,0>
    translate<2,0,11>        // localiza��o da parede
} 
            
      
//*******************************************************       
// teto
object{Cube scale <10,4.8,0.08>   // teto de cor branco
    texture{
    pigment{color rgb<1,1,1>}
    }
    rotate<90,90,0>
   translate<1.3,4.3,8>          //
}

 

//*******************************************************       
// parede direita
object{Cube scale <10,5,0.08>   // parede direita de cor branca
    texture{
    pigment{color rgb<1,1,1>}
    }
    rotate<0,-90,0>
    translate<5,0,7>           //localiza��o 
} 

//*******************************************************       
// parede esquerda
difference{                           // parede esquerda
    object{Cube scale <10,5,0.05>   
       texture{          
       pigment{color rgb<1,1,1>}
       }
       rotate<0,-90,0>
       translate<-3.55,0,8>
    } 
    object{Cube scale <1.5,0.97,0.3>    // buraco da janela
       texture{          
       pigment{color rgb<1,1,1>}
       }
       rotate<0,-90,0>
       translate<-3.6,2.4,5>
   } 
      
}

// janela 
difference{                      // bordas da janela
   object{Cube scale <1.5,1,0.1>   
      texture{ T_Wood16         
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.55,2.4,5>
   } 
   object{Cube scale <1.47,0.9,0.2>   
      texture{T_Wood16          
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.55,2.4,5>
   } 
}
   object{Cube scale <0.06,0.95,0.05>   
      texture{ T_Wood16         
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.55,2.4,4.5>
   } 
   object{Cube scale <0.06,0.95,0.05>   
      texture{ T_Wood16         
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.55,2.4,5.5>
   } 
   object{Cube scale <1.5,0.06,0.07>   
      texture{ T_Wood16         
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.55,2.8,5>
   } 
   object{Cube scale <0.47,0.22,0.1> // vidro  
      texture{ T_Glass3         
      pigment{}
      finish{reflection 0.05}
      }
      rotate<0,-90,0>
      translate<-3.62,3.1,4>
  } 
  object{Cube scale <0.47,0.22,0.1> // vidro  
      texture{ T_Glass3         
      pigment{}
      finish{reflection 0.05}
      }
      rotate<0,-90,0>
      translate<-3.62,3.1,5>
  } 
  object{Cube scale <0.47,0.22,0.1> // vidro  
      texture{ T_Glass3         
      pigment{}
      finish{reflection 0.05}
      }
      rotate<0,-90,0>
      translate<-3.62,3.1,6>
  } 


# declare janela =union{           // borda com vidro da parte de baixo na janela
 difference{                       // borda 
   object{Cube scale <0.45,0.65,0.04>   
      texture{ T_Wood16         
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.6,2.15,4>
  } 
   object{Cube scale <0.3,0.5,0.05>   
      texture{ T_Wood16         
      pigment{}
      }
      rotate<0,-90,0>
      translate<-3.6,2.15,4>
  } 
 }
   object{Cube scale <0.31,0.5,0.02>   
      texture{ T_Glass3         
      pigment{}
      }
      finish{reflection 0.05}
      rotate<0,-90,0>
      translate<-3.62,2.15,4>
  } 
 
translate<0,0,0>
}
  object{janela        // borda com vidro 1 declarada logo acima 
  translate<0,0,0>
  } 
  object{janela        // borda com vidro 2 declarada logo acima
  translate<0,0,1>
  }
  object{janela        // borda com vidro 3 declarada logo acima
  rotate<0,0,-20>
  translate<-1.15,-1.15,2>// inclina��o para dar impress�o de janela aberta
  }
  
//*******************************************************            
// portas
#declare porta = union{          // declara��o de portas do armario
    superellipsoid {<0.05,0.5>
          scale<0.3,0.62,0.05>
          texture{T_Wood3
          pigment{}
          }
          rotate<0,0,0>
    }
    difference{
       torus {0.2,0.01          // puxador das portas
          scale<0,0.5,1>
          texture{T_Silver_1A
          pigment{}
          finish{reflection 0.1}
          }
          rotate<0,90,90>
         translate<0.2,0,0.1>         
       } 
     
       object{Cube scale <0.1,0.3,0.2>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<0.2,0,0.24>
     }
    }
    
 } 
#declare gaveta = union{       // declara��o das gavetas
    superellipsoid {<0.05,0.5>
          scale<0.4,0.18,0.05>
          texture{T_Wood3
          pigment{}
          }
          rotate<0,0,0>
    }
    difference{
       torus {0.2,0.01       // puxador das gavetas
          scale<0,0.5,1>
          texture{T_Silver_1A
          pigment{}
          finish{reflection 0.1}
          }
          rotate<0,90,0>
         translate<0,0,0.1>         
       } 
     
       object{Cube scale <0.3,0.1,0.2>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<0,0,0.24>
     }
    }
    
 } 


//*******************************************************            
// Pia

union{
  difference{                 // torneira da pia
      torus {0.2,0.01
          scale<1,4,2>
          texture{T_Silver_1A
          pigment{}
          finish{reflection 0.1}
          }
          rotate<90,0,0>
         translate<-2.9,1,6.3>         
       } 
       object{Cube scale <0.1,0.25,0.1>
            texture{
             T_Wood3
             pigment{}
            }
           rotate<0,0,0>
           translate<-2.7,1,6.3>
       }

       object{Cube scale <0.4,0.25,0.1>
            texture{
             T_Wood3
             pigment{}
            }
           rotate<0,0,0>
           translate<-2.7,0.7,6.3>
       }
    
       translate<-0.13,-0.43,0>// localiza��o datorneira
  }

    cylinder {<0.11,0,0>,<0,0,0>,0.05
          texture{T_Silver_1A  
              pigment{}
              }
          rotate<0,0,90>
          translate<-3.25,0.56,6.3>
    }  
// parte de cima da pia de inox
     superellipsoid {<0.1,0.1>
       scale<0.08,0.1,1.27>
       texture{T_Silver_5A
       pigment{}
       finish{reflection 0.01}
       }
       rotate<0,0,0,>
       translate<-3.5,0.6,6.35>     
     }
difference{                          // funil da pia 
        object{Cube scale <1.2,0.8,0.7>
            texture{
             T_Wood3
             pigment{}
            }
           rotate<0,90,0>
           translate<-2.9,-0.3,6.3>
        }
      superellipsoid {<0.1,0.1>
        scale<0.48,0.9,0.48>
        texture{T_Wood3
        pigment{}
        }
        rotate<0,0,0,>
        translate<-2.9,-0.3,6.3>     
      }  

}
     difference{               // parte  de inox do ralo mais profundo
      superellipsoid {<0.1,0.1>
        scale<0.47,0.55,0.47>
        texture{T_Silver_5A
        pigment{}
        finish{reflection 0.01}
        }
        rotate<0,0,0,>
        translate<-2.8,0,6.3>     
      }  
      superellipsoid {<0.1,0.1>  
        scale<0.4,0.2,0.44>
        texture{T_Silver_5A
        pigment{}
        finish{reflection 0.01}
        }
        rotate<0,0,0,>
        translate<-2.8,0.5,6.3>     
      }  
     
     }
    difference{
      superellipsoid {<0.1,0.1>// parte de inox da pia com bordas elevadas
        scale<0.73,0.05,1.25>
        texture{T_Silver_5A
        pigment{}
        finish{reflection 0.01}
        }
        rotate<0,0,0,>
        translate<-2.85,0.55,6.3>     
      }  
      superellipsoid {<0.1,0.1> // parte de inox para cria��o das bordas
        scale<0.7,0.05,1.21>
        texture{T_Silver_5A
        pigment{}
        finish{reflection 0.01}
        }
        rotate<0,0,0,>
        translate<-2.9,0.59,6.3>     
      }  
      superellipsoid {<0.1,0.1> // burraco para o ralo da pia
        scale<0.4,0.3,0.44>
        texture{T_Silver_5A
        pigment{}
        finish{reflection 0.01}
        }
        rotate<0,0,0,>
        translate<-2.8,0.59,6.3>     
      }  

     } 
       
     object {porta        // porta do balc�o da pia
            rotate<0,-90,0>
            translate<-2.2,-0.2,5.5>
            }

     object {porta       // porta do balc�o da pia
            rotate<0,90,180>
            translate<-2.2,-0.2,6.2>
            }

     object {gaveta     // gaveta do balc�o da pia
            rotate<0,-90,0>
            translate<-2.2,0.24,7>
            }
           
     object {gaveta   // gaveta do balc�o da pia
            rotate<0,-90,0>
            translate<-2.2,-0.19,7>
            }
     object {gaveta   // gaveta do balc�o da pia
            rotate<0,-90,0>
            translate<-2.2,-0.63,7>
            }

rotate <0,0,0>
translate<0,0,-1>
}

//*******************************************************           

// FOG�O
union
 {

 cylinder
  {
  <0.05,0,0>, <0,0,0>, 0.065 //bot�o da boca do fog�o
  texture
   {
   T_Chrome_1A
   pigment{}
   }
  rotate <0,90,0>
  translate <3.52,0.45,8.5>
  }

 cylinder
  {
  <0.05,0,0>, <0,0,0>, 0.065 //bot�o da boca do fog�o
  texture
   {
   T_Chrome_1A
   pigment{}
   }
  rotate <0,90,0>
  translate <3.77,0.45,8.5>
  }

 cylinder
  {
  <0.05,0,0>, <0,0,0>, 0.065 // bot�o da boca do fog�o
  texture
   {
   T_Chrome_1A
   pigment{}
   }
  rotate <0,90,0>
  translate <4.02,0.45,8.5>
  }

 cylinder
  {
  <0.05,0,0>, <0,0,0>, 0.065 // bot�o da boca  do fog�o
  texture
   {
   T_Chrome_1A
   pigment{}
   }
  rotate <0,90,0>
  translate <4.27,0.45,8.5>
  }  

 cylinder
  {
  <0.05,0,0>, <0,0,0>, 0.065 // bot�o do forno do fog�o
  texture
   {
   T_Chrome_1A
   pigment{}
   }
  rotate <0,90,0>
  translate <4.52,0.45,8.5>
  }  

    disc {<0, 0, 0>z,0.11, 0.05  //bot�o das bocas do fog�o
    translate<3.52,0.45,8.5>
    }
    disc {<0, 0, 0>z,0.11, 0.05  //bot�o das bocas do fog�o
    translate<3.77,0.45,8.5>
    }
    disc {<0, 0, 0>z,0.11, 0.05 //bot�o das bocas do fog�o
    translate<4.02,0.45,8.5>
    }
    disc {<0, 0, 0>z,0.11, 0.05 //bot�o das bocas do fog�o
    translate<4.27,0.45,8.5>
    }
    disc {<0, 0, 0>z,0.11, 0.05 //bot�o das bocas do fog�o
    translate<4.52,0.45,8.5>
    }
    difference{                 // corpo do fog�o
     superellipsoid {<0.017,0.2>
       scale<0.8,0.9,0.6>
       pigment{color White}
       translate<4.05,-0.2,9.1>     
     }

    superellipsoid {<0.01,0.03> // parte  superior de inox do fog�o
      scale<0.72,0.03,0.5>
       texture{T_Silver_5A
       pigment{}
       finish{reflection 0.2}
       }
       translate<4.05,0.68,9.1>     

    }     

     object{Cube scale <0.62,0.4,0.5>
       texture{
           
           pigment{color rgb<0.5,0.5,0.5>}
           finish{reflection 0.001}
           }
       translate<4.01,-0.30,8.49>
     }
        
    }
       cylinder {<0.2,0,0>,<0,0,0>,0.175 // bocas do fog�o
          texture{T_Chrome_2C  
              pigment{}
              }
          rotate<90,0,90>
          translate<3.72,0.51,8.85>
        }  
       cylinder {<0.2,0,0>,<0,0,0>,0.175 // bocas do fog�o
          texture{T_Chrome_2C  
              pigment{}
              }
          rotate<90,0,90>
          translate<3.72,0.51,9.3>
        }  
       cylinder {<0.2,0,0>,<0,0,0>,0.175 // bocas do fog�o
          texture{T_Chrome_2C  
              pigment{}
              }
          rotate<90,0,90>
          translate<4.38,0.51,8.85>
        }  
       cylinder {<0.2,0,0>,<0,0,0>,0.175 // bocas do fog�o
          texture{T_Chrome_2C  
              pigment{}
              }
          rotate<90,0,90>
          translate<4.38,0.51,9.3>
        }  

     object{Cube scale <0.62,0.01,0.2>
       texture{
           
           pigment{color rgb<0.5,0.5,0.5>}
           finish{reflection 0.001}
           }
       translate<4.01,-0.35,8.7>
     }
     
//tampa do forno
    object{Cube scale <0.68,0.47,0.005> // tampa d vidro do forno do fog�o
          texture{
                 T_Glass1
                 pigment{}
                 finish{reflection 0.1}
           }
           translate<4.01,-0.29,8.49>
     }

          cylinder {<1.32,0,0>,<0,0,0>,0.09 // puxador da tampa do forno 
          texture{T_Chrome_2C  
              pigment{}
              }
          rotate<90,0,0>
          translate<3.35,0.2,8.56>
          }  
// tampa fog�o
    object{Cube scale <0.71,0.55,0.02> //tampa superior de vidro do fog�o
          texture{
                 T_Glass1
                 pigment{}
                 finish{reflection 0.1}
           }
           rotate<8,0,0>
           translate<4.01,1.25,9.6>
     }

rotate<0,-90,0>
translate<6.3,0,3.35>
}
//*******************************************************            
// geladeira
union{
    object{Cube scale <0.8,1.9,0.7>// corpo da geladeira
          texture{
               
                 pigment{color White}
           }
           translate<2,0.9,9.4>
     }
   difference{ 
    union{                      //   porta inferior geladeira
     superellipsoid {<0.05,0.2>
       scale<0.75,0.57,0.8>
       pigment{color White}
       translate<2,2.2,9.4>     

     }
     difference{
      superellipsoid {<0.03,0.2> // porta superior
       scale<0.75,1.37,0.8>
       pigment{color White}
       translate<2,0.35,9.4>     

      }
      object{Cube scale <0.8,0.1,0.7>
       texture{
       pigment{color White}
       }
       translate<2,-0.95,8.4>
      }     
     } 
    }
       cylinder {<3.6,0,0>,<0,0,0>,0.2
          texture{  
              pigment{color White}
              }
          rotate<0,0,90>
          translate<1.7,-1,8.45>
       }  
  }
     torus {0.1,0.01              // puxador inferior da geladeira
                scale<2,3,3>
                texture{T_Silver_1B
                pigment{}
                  finish{reflection 0.05}
                }
                rotate<0,0,0>
                translate<1.7,1.56,8.7>         
        } 
     torus {0.1,0.01            // puxador superior da geladeira
                scale<2,3,3>
                texture{T_Silver_1B
                pigment{}
                  finish{reflection 0.1}
                }
                rotate<0,0,0>
                translate<1.7,1.8,8.7>         
        } 


       cylinder {<0.2,0,0>,<0,0,0>,0.1   //detalhes da porta profundo cilindrico 
          texture{  
              pigment{color White}
              }
          rotate<0,0,90>
          translate<2.7,-1.2,8.8>
       }  
       cylinder {<0.2,0,0>,<0,0,0>,0.1  //detalhes da porta profundo cilindrico 
          texture{  
              pigment{color White}
              }
          rotate<0,0,90>
          translate<1.3,-1.2,8.8>
       }  

rotate<0,0,0>
translate<-1.15,0.1,0.42>

}

//*******************************************************            
// Armario
union{
    object{Cube scale <1.2,0.8,0.7>// parte do lado direito da pia
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.9,-0.3,6.3>
    }
                                 // porta do armario
     object {porta
            rotate<0,-90,0>
            translate<-2.2,-0.2,5.45>
            }
rotate <0,0,0>
translate<0,0,3.1>
}

union{                         //canto inferior 
    object{Cube scale <0.5,0.8,0.6>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.9,-0.3,6.3>
    }
     object {porta           //porta do canto
            rotate<0,-90,0>
            translate<-2.3,-0.2,6.15>
            }


rotate <0,45,0>
translate<-4.65,0,3.15>
}

union{       // parte inferior do balc�o lado esquerdo e direito da geladeira
  difference{
    object{Cube scale <4,0.8,0.6>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.9,-0.3,6.3>
    }
    object{Cube scale <0.92,0.9,0.7>// parte a onde vai a geladeira espa�o aberto
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.9,-0.3,6.65>
    }
   }
rotate <0,90,0>
translate<-5.8,0,7.1>
}
     object {porta   //porta do balc�o inferior lado esquerdo da geladeira
            rotate<0,0,0>
            translate<-1.25,-0.2,9.35>
            }
     object {gaveta //gaveta do balc�o inferior lado esquerdo da geladeira
            rotate<0,0,0>
            translate<-0.5,0.24,9.35>
            }
           
     object {gaveta //gaveta do balc�o inferior lado esquerdo da geladeira
            rotate<0,0,0>
            translate<-0.5,-0.19,9.35>
            }
     object {gaveta  //gaveta do balc�o inferior lado esquerdo da geladeira
            rotate<0,0,0>
            translate<-0.5,-0.63,9.35>
            }

     object {porta   //porta do balc�o inferior lado direito da geladeira
            scale<1.3,0,0>
            rotate<0,0,0>
            translate<2.25,-0.2,9.35>
            }
     object {porta  //porta do balc�o inferior lado direito da geladeira
            scale<1.3,0,0>
            rotate<0,0,0>
            translate<3.15,-0.2,9.35>
            }
     object {porta  //porta do balc�o inferior lado direito da geladeira
            scale<1.3,0,0>
            rotate<0,0,0>
            translate<4.05,-0.2,9.35>
            }


//*******************************************************            

//lado direito da gel
union{
  difference{                          // lado direito da geladeira parte superior
    object{Cube scale <0.9,2.3,0.25>   //com abertura embaixo duas portas com vidro na parte superior
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.33,2,9.2>
     }
    object{Cube scale <0.83,0.9,0.3>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.33,3.3,9.1>
     }

    object{Cube scale <0.86,1,0.3>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.33,1.3,9.1>
     }
  }
      object{Cube scale <0.86,0.03,0.1>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.33,1.7,9.2>
     }

//portas com vidro
union{ 
   difference{                  //portas com vidro no meio
    superellipsoid {<0.05,0.5>
          scale<0.415,0.97,0.05>
          texture{T_Wood3
          pigment{}
          }
    }
    superellipsoid {<0.05,0.5>
          scale<0.25,0.97,0.1>
          texture{T_Wood3
          pigment{}
          }
    }
   } 
    object{Cube scale<0.25,0.95,0.05>
          texture{T_Glass1
          pigment{}
          finish{reflection 0.1}
          }
    }

    difference{                //puxador das portas com vidro
       torus {0.2,0.01
          scale<0,0.5,1>
          texture{T_Silver_1A
          pigment{}
          finish{reflection 0.1}
          }
          rotate<0,90,90>
         translate<0.3,0,0.1>         
       } 
     
       object{Cube scale <0.1,0.3,0.2>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<0.2,0,0.24>
     }
    }
translate<1.92,3.3,8.9>    
} 
union{ 
  difference{                    //portas com vidro no centro
    superellipsoid {<0.05,0.5>
          scale<0.415,0.97,0.05>
          texture{T_Wood3
          pigment{}
          }
          rotate<0,0,0>
    } 
    superellipsoid {<0.05,0.5>
          scale<0.25,0.97,0.1>
          texture{T_Wood3
          pigment{}
          }
    }
  }
    object{Cube scale<0.25,0.95,0.05>
          texture{T_Glass1
          pigment{}
          finish{reflection 0.1}
          }
    }
    difference{
       torus {0.2,0.01
          scale<0,0.5,1>
          texture{T_Silver_1A
          pigment{}
          finish{reflection 0.1}
          }
          rotate<0,90,90>
         translate<0.3,0,0.1>         
       } 
     
       object{Cube scale <0.1,0.3,0.2>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<0.2,0,0.24>
     }
    }
rotate<0,0,180>
translate<2.75,3.3,8.9>    
} 
 
translate<1.25,-0.3,1.1>
}

//*******************************************************            
// local das Garrafas
union{                                   //parte superior portagarrafas
  difference{
  object{Cube scale <0.45,0.7,0.25>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.33,2,9.2>
  }
    object{Cube scale <0.16,0.2,0.3>     // burraco onde vai as garrafas s� faltou as SKOL
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.13,2.45,9.1>
     }
    object{Cube scale <0.16,0.2,0.3>    // burraco onde vai as garrafas s� faltou as SKOL
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.53,2.45,9.1>
     }
    object{Cube scale <0.16,0.2,0.3>   // burraco onde vai as garrafas s� faltou as SKOL
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.13,2,9.1>
     }
    object{Cube scale <0.16,0.2,0.3>   // burraco onde vai as garrafas s� faltou as SKOL
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.53,2,9.1>
     }
    object{Cube scale <0.16,0.2,0.3>  // burraco onde vai as garrafas s� faltou as SKOL
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.13,1.55,9.1>
     }
    object{Cube scale <0.16,0.2,0.3> // burraco onde vai as garrafas s� faltou as SKOL
          texture{
               T_Wood3
                 pigment{}
           }
           translate<2.53,1.55,9.1>
     }

   }
  
 
translate<-0.12,1,1.1>
}

//*******************************************************            
// parte de cima da geladeira
union{                           //parte superior a geladeira com duas portas pequenas

  object{Cube scale <0.9,0.3,0.25>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<0.15,2,9.2>
  }
//portas                       //portas pequenas da parte superior da geladeira
  union{ 
    superellipsoid {<0.05,0.5>
      scale<0.41,0.25,0.05>
      texture{T_Wood3
      pigment{}
      }
      rotate<0,0,0>
    }
    difference{               //puxador das portas
       torus {0.2,0.01
        scale<0,0.5,1>
        texture{T_Silver_1A
        pigment{}
        finish{reflection 0.1}
        }
        rotate<0,90,90>
        translate<0.25,0,0.1>         
       } 
       object{Cube scale <0.1,0.3,0.2>
         texture{T_Wood3
         pigment{}
         }
         translate<0.25,0,0.24>
       }
    }
  translate<-0.31,2,8.9>  
  } 
  union{ 
    superellipsoid {<0.05,0.5>
      scale<0.41,0.25,0.05>
      texture{T_Wood3
      pigment{}
      }
      rotate<0,0,0>
    }
    difference{
       torus {0.2,0.01           //puxador das portas
        scale<0,0.5,1>
        texture{T_Silver_1A
        pigment{}
        finish{reflection 0.1}
        }
        rotate<0,90,90>
        translate<0.25,0,0.1>         
       } 
       object{Cube scale <0.1,0.3,0.2>
         texture{T_Wood3
         pigment{}
         }
         translate<0.25,0,0.24>
       }
    }
  rotate<0,0,180>
  translate<0.54,2,8.9>  
  } 
   
translate<0.77,1.4,1.1>
}

//*******************************************************            
// lado de cima esquerdo

union{                              //parte superior esquerda da geladeira com duas portas grandes

  object{Cube scale <0.9,0.7,0.25>
          texture{
               T_Wood3
                 pigment{}
           }
           translate<0.15,2,9.2>
  }
  object{porta                      //portas 
     scale<1.25,0,0>
     translate<-0.25,2,8.9>
  }
  object{porta
     scale<1.25,0,0>
     rotate<0,0,180>
     translate<0.55,2,8.9>
  }
translate<-1.05,1,1.1>
}

//*******************************************************
// canto de cima 
union{
  difference{                       // canto superior mais elevado com duas portas
    object{Cube scale <1,0.7,0.9>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.9,-0.3,6.3>
    }
    object{Cube scale <1,0.8,0.4>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,-50,0>
           translate<-1.9,-0.2,5.8>
    }
  }
    object {porta                 // portas do canto superior
        scale<-0.9,0,0>
        rotate<0,-50,0>
        translate<-2.2,-0.3,6.05>
     }
    object {porta                // portas do canto superior
        scale<-0.9,0,0>
        rotate<0,50,180>
        translate<-2.56,-0.3,5.6>
     }

rotate <0,0,0>
translate<0.2,3.6,3.7>
}


union{                            //parte do lado esquerdo superior
    object{Cube scale <0.4,0.7,0.45>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-3.05,-0.3,5.48>
    }

     object {porta                //porta do lado esquerdo
            rotate<0,-90,0>
            translate<-2.6,-0.3,5.45>
            }
rotate <0,0,0>
translate<0,3.28,3.1>
}

union{                          // parte superior ao fog�o com duas portas pequenas
    object{Cube scale <0.7,0.3,0.45>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-3.05,-0.3,5.48>
    }

//portas
  union{ 
    superellipsoid {<0.05,0.5>   // portas pequenas da parte superior do fog�o
      scale<0.33,0.25,0.05>
      texture{T_Wood3
      pigment{}
      }
      rotate<0,0,0>
    }
    difference{
       torus {0.2,0.01
        scale<0,0.5,1>
        texture{T_Silver_1A
        pigment{}
        finish{reflection 0.1}
        }
        rotate<0,90,90>
        translate<0.25,0,0.1>         
       } 
       object{Cube scale <0.1,0.3,0.2>
         texture{T_Wood3
         pigment{}
         }
         translate<0.25,0,0.24>
       }
    }
  rotate<0,-90,0>
  translate<-2.61,-0.29,5.15>  
  }                  
  union{ 
    superellipsoid {<0.05,0.5>
      scale<0.33,0.25,0.05>
      texture{T_Wood3
      pigment{}
      }
      rotate<0,0,0>
    }
    difference{
       torus {0.2,0.01
        scale<0,0.5,1>
        texture{T_Silver_1A
        pigment{}
        finish{reflection 0.1}
        }
        rotate<0,90,90>
        translate<0.25,0,0.1>         
       } 
       object{Cube scale <0.1,0.3,0.2>
         texture{T_Wood3
         pigment{}
         }
         translate<0.25,0,0.24>
       }
    }
  rotate<0,90,180>
  translate<-2.61,-0.29,5.85>  
  } 

rotate <0,0,0>
translate<0,3.66,2>
}                //fim das portas da parte  superior do balc�o  sobre do fog�o

union{
 difference{      // parte de cima da janela parra color as cortinas
    object{Cube scale <1.8,0.2,0.3>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.85,-0.3,5.85>
    }  
  
    object{Cube scale <1.77,0.2,0.35>
          texture{
               T_Wood3
                 pigment{}
           }
           rotate<0,90,0>
           translate<-2.99,-0.4,5.85>
    }  
 }
translate<-0.6,3.75,-0.8>
}               // fim da parte de cima da janela 

//*******************************************************
// mesa  retangular com vidro no meio

# declare  perna = union{      // declara��o das pernas da mesa
    cylinder {<1.3,0,0>,<0,0,0>,0.1 // pernas redonda
          
          texture{T_Wood3  
              pigment{}
              }
           rotate<0,0,90>
           translate<0,-1,0>
    }
}
union{
    object{perna               // chamada das pernas da mesa
           translate<-0.85,0.1,1.25>
    }
    object{perna              // chamada das pernas da mesa
           translate<-0.85,0.1,-1.25>
    }
    object{perna              // chamada das pernas da mesa
           translate<0.85,0.1,1.25>
    }
    object{perna              // chamada das pernas da mesa
           translate<0.85,0.1,-1.25>
    }

//parte de cima da mesa
difference{                  // plano de cima da mesa com cantos arredondado
  superellipsoid {<0.01,0.3>    
     scale <1.1,0.02,1.5>
     texture{
     T_Wood3
        pigment{}
        finish{reflection 0.02} 
     }
     rotate<0,0,0>
     translate<0,0.4,0>
  }
  object{Cube scale <0.8,0.03,1.2> // burraco no centro
     texture{
     T_Wood3
       pigment{}
       finish{reflection 0.01} 
     }
     rotate<0,0,0>
     translate<0,0.4,0>
  }

}    
  object{Cube scale <0.8,0.06,1.2>  // vidro do centro da mesa
     texture{
     T_Glass1
        pigment{}
        finish{reflection 0.01} 
     }
     rotate<0,0,0>
     translate<0,0.39,0>
  }
  object{Cube scale <0.91,0.1,0.05> // detalhe da mesa madeira ligando as pernas da mesa
    texture{
      T_Wood3
      pigment{}
    }
    rotate<0,0,0>
    translate<0,0.3,-1.25>
  }
  object{Cube scale <0.91,0.1,0.05> // detalhe da mesa madeira ligando as pernas da mesa
    texture{
      T_Wood3
      pigment{}
    }
    rotate<0,0,0>
    translate<0,0.3,1.25>
  }
  object{Cube scale <1.31,0.1,0.05> // detalhe da mesa madeira ligando as pernas da mesa
    texture{
      T_Wood3
      pigment{}
    }
    rotate<0,90,0>
    translate<-0.88,0.3,0>
  }
  object{Cube scale <1.31,0.1,0.05>// detalhe da mesa madeira ligando as pernas da mesa
    texture{
      T_Wood3
      pigment{}
    }
    rotate<0,90,0>
    translate<0.88,0.3,0>
  }

//*********************************************************
// cadeira

# declare  pernacad = union{    // pernas da cadeira
    cylinder {<0.9,0,0>,<0,0,0>,0.03
          
          texture{T_Wood3  
              pigment{}
              }
           rotate<0,0,90>
           translate<0,-1,0>
    }
}
#declare cadeira = union{    // declara��o de cadeira
  object{pernacad            // chamada das pernas da cadeira
    scale<0,0,1>             // pernas da cadeira
    translate<0,0,-2>
  }
  object{pernacad
    translate<0,0,-1.4>
  }
  object{pernacad
    scale<0,0,0>
    translate<-0.7,0,-2>
  }
  object{pernacad
    translate<-0.7,0,-1.4>
  }

difference{                // acento da cadeira de cor branca
  superellipsoid {<0.1,0.2>    
     scale <0.4,0.02,0.35>
          texture{
             pigment{color White}
             finish{reflection 0.02} 
           }
           rotate<0,0,0>
           translate<-0.35,-0.1,-1.7>
    }

 union{
   object{pernacad
     scale<2,0,2>
     translate<0,0.9,-2>
   }
  object{pernacad
    scale<2,0,2>
    translate<-0.7,0.9,-2>
  }
 }
} 

union{               // encosto das cadeiras
  object{pernacad    // n�o � as pernas foi usado o mesmo codigo  
    scale<1,0,0>     // para os detales no encosto
    translate<0,0.9,-2>
  }
  object{pernacad
    scale<1,0,0>
    translate<-0.7,0.9,-2>
  }
  object{pernacad
    scale<0.5,0.69,0.2>
    translate<-0.35,0.7,-2.02>
  }
  object{pernacad
    scale<0.5,0.69,0.2>
    translate<-0.25,0.7,-2.02>
  }
  object{pernacad
    scale<0.5,0.69,0.2>
    translate<-0.45,0.7,-2.02>
  }

 difference{       // parte de cima do encosto
  object{pernacad
    scale<12,0.2,2>
    translate<-0.35,0.8,-2>
  }
  object{pernacad
    scale<11,0.4,4>
    translate<-0.35,1,-1.9>
  }

 }
rotate<-7,0,0>
}
  object{Cube scale <0.3,0.02,0.01> // detalhes de baixo do acento 
    texture{                        
     T_Wood3
     pigment{}
    }
    rotate<0,90,0>
    translate<0.01,-0.5,-1.7>
  }
  object{Cube scale <0.3,0.02,0.01> // detalhes de baixo do acento
    texture{
     T_Wood3
     pigment{}
    }
    rotate<0,90,0>
    translate<-0.71,-0.5,-1.7>
  }

  object{Cube scale <0.3,0.05,0.02>  // detalhes de baixo do acento
    texture{
     T_Wood3
     pigment{}
    }
    rotate<0,90,0>
    translate<0.01,-0.15,-1.7>
  }
  object{Cube scale <0.3,0.05,0.02> // detalhes de baixo do acento
    texture{
     T_Wood3
     pigment{}
    }
    rotate<0,90,0>
    translate<-0.71,-0.15,-1.7>
  }
  object{Cube scale <0.35,0.05,0.02> // detalhes de baixo do acento
    texture{
     T_Wood3
     pigment{}
    }
    rotate<0,0,0>
    translate<-0.35,-0.15,-2.01>
  }
  object{Cube scale <0.35,0.05,0.02> // detalhes de baixo do acento
    texture{
     T_Wood3
     pigment{}
    }
    rotate<0,0,0>
    translate<-0.35,-0.15,-1.39>
  }
 translate<0.4,0,0.25>
} // final da declara��o das cadeiras
 
 object{ cadeira    // chamada das cadeiras 1
  rotate<0,0,0>
  translate<0,0,0>
 }
 object{ cadeira   // chamada das cadeiras 2
  rotate<0,90,0>
  translate<0.5,0,0>
 }
 object{ cadeira    // chamada das cadeiras 3
  rotate<0,-90,0>
  translate<-0.5,0,0>
 }
 object{ cadeira   // chamada das cadeiras 4
  rotate<0,-180,0>
  translate<0,0,0>
 }

rotate<0,90,0>
translate<1.4,-0.15,6>
}   
//*******************************************************

// objetos decorativos

sor {                  // vasos
    7, 
    <0.000000, 0.000000> 
    <0.118143, 0.000000>
    <0.620253, 0.540084>
    <0.210970, 0.827004>
    <0.194093, 0.962025>
    <0.286920, 1.000000>
    <0.468354, 1.033755>

  texture{
  pigment{Red_Marble scale 1}
  finish{reflection 0.1}
  }
  translate<12,4.95,34>
  scale<0.3,0.3,0.3>  

}
sor {
    7, 
    <0.000000, 0.000000> 
    <0.118143, 0.100000>
    <0.420253, 0.340084>
    <0.210970, 0.627004>
    <0.194093, 0.962025>
    <0.286920, 1.000000>
    <0.468354, 1.033755>

  texture{
  pigment{Blue_Agate  scale 1}
  finish{reflection 0.5}
  }
  translate<-4.2,0.7,15.8>
  scale<0.6,0.6,0.6>  

} 
sor {
    7, 
    <0.000000, 0.000000> 
    <0.118143, 0.100000>
    <0.120253, 0.340084>
    <0.110970, 0.427004>
    <0.114093, 0.462025>
    <0.186920, 1.000000>
    <0.168354, 1.033755>

  texture{
  pigment{Blue_Agate  scale 0.1}
  finish{reflection 0.5}
  }
  rotate<90,0,0>
  translate<3.3,3.7,16.5>
  scale<0.6,0.8,0.6>  

}
sor {
    7, 
    <0.000000, 0.000000> 
    <0.118143, 0.100000>
    <0.120253, 0.340084>
    <0.110970, 0.427004>
    <0.114093, 0.462025>
    <0.186920, 1.000000>
    <0.168354, 1.033755>

  texture{
  pigment{Brown_Agate  scale 0.1}
  finish{reflection 0.5}
  }
  rotate<90,0,0>
  translate<3.95,3.2,16.5>
  scale<0.6,0.8,0.6>  

}