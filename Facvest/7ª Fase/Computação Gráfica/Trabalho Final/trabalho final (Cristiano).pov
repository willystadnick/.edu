#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
//--------------------------------------------------

camera
 {
 location <30,16,10>
 look_at <-20,10,5>
 rotate <0,50,0>
 }



//--------------------------------------------------


 box {
    <-4, 0,   -4>,  // Near lower left corner
    < .8, .10, .8>   // Far upper right corner
    texture {
      pigment{
      color Gray }    // Pre-defined from stones.inc
      scale 9       // Scale by the same amount in all
                    // directions
    }
    rotate <2,90,2> // Equivalent to "rotate <0,20,0>"
    translate <2,0,-2>
  }


//************************************************

cylinder //tronco
 {
 <0,0,0.75>, <0,10,0.75>, 0.5
 texture
  {
  pigment
   {
   color White
   }
  }
 }

//************************************************
 

difference //cabeça
 {
 box 
  {
  <-1.5,10,-1.5>, <1.5,12.5,1.5>
  texture
   {
   pigment
    {
    color White
    }
   }
  }                                                  
 box
  {
  <-3,9,0>, <3,12,3>
  texture
   {
   pigment
    {
    color White
    }
   }
  rotate <-45,0,0> 
  translate <0,1.5,4.5>
  }                                                  
 }
  
//*************************************************
  
cone //base das hastes 
 {
 <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
 texture
  {
  pigment
   {
   color White
   }
  }  
 rotate <0,0,0> 
 translate <0,0,-0.25>
 }

//**************************************************

cylinder //haste superior
 {
 <0,11,-0.75>, <0,11,-5>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
 }

//**************************************************

cylinder //haste inferior-direita
 {
 <0,11,-0.75>, <4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
 }

//***************************************************


cylinder //haste inferior-esquerda
 {
 <0,11,-0.75>, <-4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
 }
    
//--------------------------------------------------

    //obj2


//--------------------------------------------------


box {
    <-4, 0,   -4>,  // Near lower left corner
    < .8, .10, .8>   // Far upper right corner
    texture {
      pigment{
      color Gray }    // Pre-defined from stones.inc
      scale 9       // Scale by the same amount in all
                    // directions
    }
    rotate <2,90,2> // Equivalent to "rotate <0,20,0>"
    translate <2,0,-2>
    translate<0,0,10>
  } 
//************************************************

cylinder //tronco
 {
 <0,0,0.75>, <0,10,0.75>, 0.5
 texture
  {
  pigment
   {
   color White
   }
  }
  translate<0,0,10>}

//************************************************
 

difference //cabeça
 {
 box 
  {
  <-1.5,10,-1.5>, <1.5,12.5,1.5>
  texture
   {
   pigment
    {
    color White
    }
   }
  }                                                  
 box
  {
  <-3,9,0>, <3,12,3>
  texture
   {
   pigment
    {
    color White
    }
   }
  rotate <-45,0,0> 
  translate <0,1.5,4.5>
   }
   translate<0,0,10>                                                  
 }
  
//*************************************************
  
cone //base das hastes 
 {
 <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
 texture
  {
  pigment
   {
   color White
   }
  }  
 rotate <0,0,0> 
 translate <0,0,-0.25>
 translate<0,0,10>
 }

//**************************************************

cylinder //haste superior
 {
 <0,11,-0.75>, <0,11,-5>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
  translate<0,0,10>
 }

//**************************************************

cylinder //haste inferior-direita
 {
 <0,11,-0.75>, <4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,10>
 }

//***************************************************


cylinder //haste inferior-esquerda
 {
 <0,11,-0.75>, <-4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,10>
 }
    
//--------------------------------------------------


    //obj3


//--------------------------------------------------

box {
    <-4, 0,   -4>,  // Near lower left corner
    < .8, .10, .8>   // Far upper right corner
    texture {
      pigment{
      color Gray }    // Pre-defined from stones.inc
      scale 9       // Scale by the same amount in all
                    // directions
    }
    rotate <2,90,2> // Equivalent to "rotate <0,20,0>"
    translate <2,0,-2>
    translate<0,0,20>
  } 


//************************************************

cylinder //tronco
 {
 <0,0,0.75>, <0,10,0.75>, 0.5
 texture
  {
  pigment
   {
   color White
   }
  }

  translate<0,0,20>}

//************************************************
 

difference //cabeça
 {
 box 
  {
  <-1.5,10,-1.5>, <1.5,12.5,1.5>
  texture
   {
   pigment
    {
    color White
    }
   }
  }                                                  
 box
  {
  <-3,9,0>, <3,12,3>
  texture
   {
   pigment
    {
    color White
    }
   }
  rotate <-45,0,0> 
  translate <0,1.5,4.5>
   }
   translate<0,0,20>                                                  
 }
  
//*************************************************
  
cone //base das hastes 
 {
 <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
 texture
  {
  pigment
   {
   color White
   }
  }  
 rotate <0,0,0> 
 translate <0,0,-0.25>
 translate<0,0,20>
 }

//**************************************************

cylinder //haste superior
 {
 <0,11,-0.75>, <0,11,-5>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
  translate<0,0,20>
 }

//**************************************************

cylinder //haste inferior-direita
 {
 <0,11,-0.75>, <4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,20>
 }

//***************************************************


cylinder //haste inferior-esquerda
 {
 <0,11,-0.75>, <-4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,20>
 }
    
//--------------------------------------------------



    //obj4


//--------------------------------------------------

box {
    <-4, 0,   -4>,  // Near lower left corner
    < .8, .10, .8>   // Far upper right corner
    texture {
      pigment{
      color Gray }    // Pre-defined from stones.inc
      scale 9       // Scale by the same amount in all
                    // directions
    }
    rotate <2,90,2> // Equivalent to "rotate <0,20,0>"
    translate <2,0,-2>
    translate<0,0,30>
  } 


//************************************************

cylinder //tronco
 {
 <0,0,0.75>, <0,10,0.75>, 0.5
 texture
  {
  pigment
   {
   color White
   }
  }

  translate<0,0,30>}

//************************************************
 

difference //cabeça
 {
 box 
  {
  <-1.5,10,-1.5>, <1.5,12.5,1.5>
  texture
   {
   pigment
    {
    color White
    }
   }
  }                                                  
 box
  {
  <-3,9,0>, <3,12,3>
  texture
   {
   pigment
    {
    color White
    }
   }
  rotate <-45,0,0> 
  translate <0,1.5,4.5>
   }
   translate<0,0,30>                                                  
 }
  
//*************************************************
  
cone //base das hastes 
 {
 <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
 texture
  {
  pigment
   {
   color White
   }
  }  
 rotate <0,0,0> 
 translate <0,0,-0.25>
 translate<0,0,30>
 }

//**************************************************

cylinder //haste superior
 {
 <0,11,-0.75>, <0,11,-5>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
  translate<0,0,30>
 }

//**************************************************

cylinder //haste inferior-direita
 {
 <0,11,-0.75>, <4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,30>
 }

//***************************************************


cylinder //haste inferior-esquerda
 {
 <0,11,-0.75>, <-4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,30>
 }
    
//--------------------------------------------------



    //obj5


//--------------------------------------------------

box {
    <-4, 0,   -4>,  // Near lower left corner
    < .8, .10, .8>   // Far upper right corner
    texture {
      pigment{
      color Gray }    // Pre-defined from stones.inc
      scale 9       // Scale by the same amount in all
                    // directions
    }
    rotate <2,90,2> // Equivalent to "rotate <0,20,0>"
    translate <2,0,-2>
    translate<0,0,40>
  } 


//************************************************

cylinder //tronco
 {
 <0,0,0.75>, <0,10,0.75>, 0.5
 texture
  {
  pigment
   {
   color White
   }
  }

  translate<0,0,40>}

//************************************************
 

difference //cabeça
 {
 box 
  {
  <-1.5,10,-1.5>, <1.5,12.5,1.5>
  texture
   {
   pigment
    {
    color White
    }
   }
  }                                                  
 box
  {
  <-3,9,0>, <3,12,3>
  texture
   {
   pigment
    {
    color White
    }
   }
  rotate <-45,0,0> 
  translate <0,1.5,4.5>
   }
   translate<0,0,40>                                                  
 }
  
//*************************************************
  
cone //base das hastes 
 {
 <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
 texture
  {
  pigment
   {
   color White
   }
  }  
 rotate <0,0,0> 
 translate <0,0,-0.25>
 translate<0,0,40>
 }

//**************************************************

cylinder //haste superior
 {
 <0,11,-0.75>, <0,11,-5>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  }
  translate<0,0,40>
 }

//**************************************************

cylinder //haste inferior-direita
 {
 <0,11,-0.75>, <4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,40>
 }

//***************************************************


cylinder //haste inferior-esquerda
 {
 <0,11,-0.75>, <-4,8,-2>, 0.125
 texture
  {
  pigment
   {
   color White
   }
  } 
  translate<0,0,40>
 }
    
 

//--------------------------------------------------

 
 plane {
  y 0 
 
    texture {
      pigment {
      DMFLightOak       // pre-defined in textures.inc
        scale 0        // scale by the same amount in all
                       // directions
      }

 //  texture {
    
    
    //pigment { color rgb <.1,.9,.9> }
    normal {
      dents .75 scale .25 

    }
  }
}

//--------------------------------------------------
          //parede da direita
 plane {
  <1,1,40>,0
  pigment{
    color PaleGreen}  
  translate<1,0,50>
  }         
                   
//****************************************************

  //parede da frente       
 plane {
  <180,1,12>,2
  pigment{
    color PaleGreen}  
  translate<1,0,-3000>
  }
  
//****************************************************                           

//parede da frente
box {
     <2, 200, -6>, <20, 0, 45> 
    pigment{
     color PaleGreen}
     translate <-210,0,45> }    
     
     
//****************************************************

//rodape

box {
     <500, 1, 2>, <-2, 0,-8> 
     pigment{
     color MediumSeaGreen}
     translate <-300,-.5,57> }      
                               

//****************************************************
  // rodape
box {
     <5, -20, 2>, <-2, 20,-16> 
     pigment{
     color PaleGreen}
     translate <-200,98,40> 
     }      
                            

              
light_source
 {
 <10,50,5>
 color Gray
 }
 
light_source
 {
 <5,25,0>
 color White
 } 

light_source
 {
 <0,50,-5>
 color White
 } 


