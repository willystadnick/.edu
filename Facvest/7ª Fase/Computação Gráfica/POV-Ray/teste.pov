// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.5
// Desc: Checkered Floor Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3.5;

//#include "colors.inc"   
#include "convivencia.inc"

global_settings {
  assumed_gamma 1.0
  max_trace_level 5
}

// ----------------------------------------

camera {
  location  <2, 1.5, -2.5>
  look_at   <2, 1, 2>
}   

//camera {
//  location  <1, 1.4, -0.5>
//  look_at   <0, 1.4, 0>      
//}
//object {camera_mesa}

sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 rgb <0.6,0.7,1.0>]
      [0.7 rgb <0.0,0.1,0.8>]
    }
  }
}

light_source {
  <0, 0, 0>            // light's position (translated below)
  color rgb <1, 1, 1>  // light's color
  translate <-30, 30, -30>
}

// ----------------------------------------

plane {               // checkered floor
  y, 0
  texture
  {
    pigment {
      checker
      color red 1
      color blue 1
      scale 0.5
    }
    finish{
      diffuse 0.8
      ambient 0.1
    }
  }
}

//object {fila_mesa}
object {fila_mesa translate <2.5,0,0>}
//object {fila_mesa translate <5,0,0>}
               
object {prato} 
object {copo translate <0.1,0,0.15>}              