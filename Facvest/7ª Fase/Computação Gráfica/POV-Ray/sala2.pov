//***************************************ÁREA DE DEFINIÇÃO DE INCLUDES************************************************//

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "glass.inc"
#include "stones.inc"
#include "skies.inc" 
#include "woods.inc"  
#include "finish.inc"
                                                                                    

                                                                                    
                                                                                    
//**********************************************   PLANO CÉU  ***********************************************************

sky_sphere{
        S_Cloud2
        }



//**************************************  DEFINIAÇÃO DE PLANO (CHÃO)****************************************************//


plane{<0,2,0>,-1
        texture {
    gradient x       
    texture_map {
      [1 T_Grnt9]
      [0  T_Grnt9]    
      
}
}
}
     
     
                  
//**************************************   DEFINIÇÃO DE PLANO (PAREDE DIREITA)********************************************//

plane{<30,0,-10>,-8
      pigment {
               color Gray
              }
     }   
                  
   
                                                                                                                                   
//*******************************************    PÉ DA MESA ******************************************************************                                                                                                                            
union{


difference {
        object { UnitBox scale 1.4}
        object{UnitBox scale <1.51,1.25,1.25>}
        object{UnitBox scale <1.25,1.51,1.25>}
        object{UnitBox scale <1.25,1.25,1.51>}

                  
pigment {P_WoodGrain2A}
                        
                }
                
          rotate y*0
          translate x*0.5 
          translate z*-2   
          scale x*1.5
          
      }     

// ************************************************* JANELA ********************************************************************
union{
difference{
plane{<-1,0,180>,-12
      pigment {
               color Gray
              } }
  box{ <3.64,6,-2>,<4.1,0,4>

       pigment {color White filter 0.9} 
       rotate -90*x  
       rotate 90*y 
       rotate 90*z
   
       translate x*0
       translate z*-8
       translate y*10
   }  

  }    
} 


 
 // ********************************************* TAMPA DA MESA ***********************************************************************
 
 
box{ <7.60,3.1,1.10>,<3,3,2>
        rotate y*180
        translate x*6.1 
        translate z*1.08
        translate y*-1.6
        scale z*4.5
        pigment {color rgb <0.7,0.7,0.7> filter 0.6}
         
        
              }
                                                                                                   
// *********************************************  CAMERA *****************************************************************************

camera{
        location<4.3,4,13> 
        //look_at<2,13.2,8>
        look_at<-5,3,0>
      }   
          
// **********************************************  LUZES  *****************************************************************************
            
 light_source{
             <0,14.5,0> color rgb <0.5,0.5,0>
            }                               
                       
light_source{
             <0,14.5,0> color White
            }                     
            
            
//*************************************************** LUZ DO SOL **********************************************************************
light_source{
             <1.8,13,-18> color White
            }   
            
                     
//*************************************************  CHAPÉU DO ABAJUR ***************************************************************
cone {
     
  0.9*y,  2.0,
  -0.7*y, 0.3
  rotate z*177  
  rotate x*3.5
  translate y*5.8
  translate x*-7.5
  translate z*-7
  texture {T_Grnt2}
  
}


//***************************************************** PÉ DO ABAJUR *****************************************************************

cylinder {
       
  0*x,  -6*x,  0.3
  rotate y*90
  rotate x*-90
  translate x*-8.5
  translate z*-8.7
  translate y*-0.9
  pigment {color Gray}
   
}


//**************************************************** SUPORTE DO ABAJUR ***********************************************************

disc {
  <0, 1, 0>  
  z,         
  1.8,       
  rotate y*90 
  rotate z*90   
  translate x*-7.35 
  translate z*-8.7  
  translate y*-0.9
  pigment {P_WoodGrain13A}
}

   

//*************************************************** VIDRO DA JANELA **************************************************************

box{ <3.64,6,-2>,<4.1,0,4>

       
       texture {T_Glass3} 
       rotate -90*x  
       rotate 90*y 
       rotate 90*z
       translate x*0
       translate z*-8
       translate y*10
       
   } 


        
// ****************************************************** ESTANTE **************************************************************** 

union{
difference{
box {
  <-1, -1, -1>  
  < 7,  7.5,  1>    
  rotate y*108
  translate z*7 
  translate x*-4.9
  pigment {P_WoodGrain13A}
  
}
box {
  <-0.5, 2.8, -1>  
  < 6.5,  6.7,  3>  
  rotate y*108
  translate z*7 
  translate x*-4.5 
  translate y*0.5
  pigment {P_WoodGrain13A}
  
}}}
    
    
// ********************************************** PORTA DA ESTANTE ESPELHADA ******************************************************     

box{ <-0.9, 2.5, -1>,
     < 6.6,  5.8,-0.9>
        rotate y*106
        translate z*7 
        translate x*-3.1 
        translate y*-2.9
        scale z*0.9
        finish { reflection {1.0} ambient 0 diffuse 0 }
}



//**************************************************** OBJETO DA ESTANTE ************************************************************

sor {
    7, 
    <0.000000, 0.000000> 
    <0.118143, 0.000000>
    <0.620253, 0.540084>
    <0.210970, 0.827004>
    <0.194093, 0.962025>
    <0.286920, 2.000000>
    <0.468354, 2.033755> 
    pigment {White_Marble}  
    translate z*3.8  
    translate y*3.2   
    translate x*-6    
    
}
                                                       
 
 
// ************************************************** OBJETO DA MESA *****************************************************************
torus {
  0.3,
  0.1    
  rotate x*3       
  translate y*1.6   
  translate x*0.8
  translate z*-1.8
  pigment {P_WoodGrain13A}
}

disc {
  <0, 1, 0>  
  z,  0.3,       
  rotate y*90 
  rotate z*90   
  translate x*1.8 
  translate z*-1.8  
  translate y*1.6
  pigment {P_WoodGrain13A}
}                          
  
                                            
// ************************************************** TAPETE ************************************************************************                                        
                                            
                                            
box{ <10.60,3.1,0.8>,<0,3,2.8>
        rotate y*180
        translate x*6.1 
        translate z*1.12
        translate y*-4
        scale z*4.5
        texture {T_Grnt4}
         
              }                                            

             
                 
//*********************************************************  MOLDURA JANELA *********************************************************

union{

difference{

box{ <3.64,6,-2>,<4.1,0,4>

       
       pigment {color rgb <0.4,0,0>}       
       rotate -90*x  
       rotate 90*y 
       rotate 90*z
       translate x*0.05
       translate z*-8
       translate y*10
       
   }              
           

box{ <3.7,3.5,0>,<4.1,-1.2,2.3>

       
       pigment {color rgbt <1,1,1,1>} 
       rotate -90*x  
       rotate 90*y 
       rotate 90*z
       translate x*1.6
       translate z*-7.8
       translate y*8.2
       
   }        
   
box{ <3.64,3.5,0>,<4.1,-1.2,2.3>

       
       pigment {color rgbt <1,1,1,1>} 
       rotate -90*x  
       rotate 90*y 
       rotate 90*z
       translate x*-1.1
       translate z*-7.8
       translate y*8.2
       
   }                               
                        
                        
}}                        
       
       
// ********************************************** LUZES NA ESTANTE ****************************************************************************      
       
sphere{
     <-6.4, 7.2, 2.5> ,0.3 
     texture{pigment { White filter 0.9 }
     finish {
        ambient .1
        diffuse .1
        reflection .2
        specular 1
        roughness .001
        irid {0.35 thickness .5 turbulence .5    
        
}               
  }  }  }
                 
         
sphere{
     <-5.4, 7.2, 5.3> ,0.3 
     texture{pigment { White filter 0.9 }
     finish {
        ambient .1
        diffuse .1
        reflection .2
        specular 1
        roughness .001
        irid {0.35 thickness .5 turbulence .5    
        
}               
  }  }  }
  
  
                 
           