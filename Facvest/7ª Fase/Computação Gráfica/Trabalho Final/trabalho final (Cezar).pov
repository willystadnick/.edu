// Bibliotecas
#include "colors.inc"
#include "stones.inc"
#include "textures.inc" 
#include "shapes.inc"
#include "glass.inc"
#include "woods.inc"
#include "metals.inc"  

//--------------------------------------------------  
// camera

camera{
 location <21,18,5>
 look_at <-20,5,5>
 rotate <0,60,0>
} 

//--------------------------------------------------   
//   Objeto Catrata                                                           
//--------------------------------------------------
#declare catraca = union{//inicio union
 
  box {
     <-4, 0,   -4>,    // canto abaixo a esquerda
     < .8, .10, .8>    // canto acima a direita
     texture {
       pigment{
         color Gray }  // textura definida em stones.inc
       scale 9         // escala proporcional ao tamanho     
     }
     rotate <2,90,2>   // Equivalente a "rotate <0,20,0>"
     translate <2,0,-2>
  }


  //tronco
  cylinder{         
     <0,0,0.75>, <0,10,0.75>, 0.5
     texture{       
       pigment{
         color White
       }
     }
   }

  //cabeça
  difference{ 
    box{ 
      <-1.5,10,-1.5>, <1.5,12.5,1.5>
      texture{
        pigment{
          color White
        }
      }
    }
    box{
      <-3,9,0>, <3,12,3>
      texture{
        pigment{
          color White
        }
      }
      rotate <-45,0,0>
      translate <0,1.5,4.5>
    } 
    
  }
  
  //base das hastes 
  cone{ 
    <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
    texture{
      pigment{
        color White
      }
    }
    rotate <0,0,0>
    translate <0,0,-0.25>
  }  
  //haste superior
  cylinder{ 
    <0,11,-0.75>, <0,11,-5>, 0.125
    texture{
      pigment{
        color White
      }
    }
  }
   
  //haste inferior-direita
  cylinder{ 
    <0,11,-0.75>, <4,8,-2>, 0.125
    texture{
      pigment{
        color White
      }
    }  
  }
   
  //haste inferior-esquerda
  cylinder{ 
    <0,11,-0.75>, <-4,8,-2>, 0.125
     texture{
       pigment{
         color White
       }
     }
  }
  
  
  
  
   
      
}
//-------------------FIM-------------------------------


//-----------Demais Objetos do Cenario-------------------
//Chão
plane{ 
  y 0 //posição chão 
  texture{
    pigment{
      DMFLightOak    // textura definida em textures.inc
      scale 0        // escala proporcional ao tamanho
 

           }    
    normal{                   
      dents .75 scale .25
           }

      }
       }
//-----------------------------------------------
       
//parede da Frente
plane{
  <1,1,40>,0
  pigment{
    color PaleGreen
  }  
  translate<1,0,45>
}        
//-----------------------------------------------------------------------------------

//interruptores


         object { Cube scale <0.9,1.1,0>
                     pigment {color Gray}
                     rotate<0,16,0>
                     translate <-40,8,46.1 > 
                                 }  
                                 
        
         object { Cube scale <0.7,0.9,0>
                     pigment {color Gray} 
                     rotate<0,16,0>
                     translate <10,7,45.2> 
                                 }                         
                                 
           
//--------------------------------------------------                          

//rodape

box{
  <500, 1, 2>, <-2, 0,-8>    
  pigment{   
    color MediumSeaGreen
  }   
  translate <-300,-.5,52>          
}                               

//--------------------------------------------------
//Rodape
box{
  <5, -20, 2>, <-2, 20,-16>    
  pigment{   
    color PaleGreen
  } 
  translate <-200,98,40>    
}           
                            

//--------------------------------------------------              
//Luzes

light_source{ //2
  <5,25,0>
  color White
} 

light_source{ //3
  <0,50,-5>
  color Gray
}
 
//------------Rotina Catraca----------------------

#declare qtd  = 5;  //quantidade
#declare dist = 10; //distancia Y
#declare i    = 0;  //flag inicial

#while (i<qtd)
 object{
   catraca
   scale <0,0,0>
   translate <0,0,dist * i>
 }
 #declare i = i + 1;
#end

//--------------------------------------------------

 
 