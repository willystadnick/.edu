
// Teste dez Desenho JPE Computer Graphic

#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"
#include "glass.inc"
#include "stones.inc"


//******************************************************************

//CAMERA
camera {
   location  <0.75, 3.5, -3.5>
   direction <0.0,  0.0,  0.5>       
   look_at   <0,    0,   -1>}


//******************************************************************

// LUZ                            

light_source {<-30, 11,  20> color White}
light_source {< 31, 12, -20> color White}
light_source {< 32, 11, -20> color LightBlue}

//******************************************************************

//Geometria de Construção Sólida 

union //objeto bola dentro do box-shaped
 {
 sphere
  {

  <0, 0, 0>, 1.75

  interior
   {
   caustics 1.0
   ior 1.5
   }

  texture
   {

   T_Glass1

   pigment
    {
    color blue 0.90
    filter 0.85
    }

   finish
    {
    phong 1
    phong_size 300
    reflection 0.15
    }

   }

  }

 difference //box
  {
  object
   {
   UnitBox scale 1.35
   }
  object
   {
   UnitBox
   scale <1.51, 1.25, 1.25>
   }  
  object
   {
   UnitBox
   scale <1.25, 1.51, 1.25>
   }
  object
   {
   UnitBox
   scale <1.25, 1.25, 1.51>
   }
  pigment
   {
   red 0.75
   green 0.75
   blue 0.85
   }
  finish
   {
   ambient 0.2
   diffuse 0.7
   reflection 0.15
   }
  }
 rotate y*45
}

//******************************************************************
//plano da cena

plane { y, -1.5
   texture {
      T_Stone20     
      pigment {
         
      }
      finish { reflection 0.10 } 
   }
}

