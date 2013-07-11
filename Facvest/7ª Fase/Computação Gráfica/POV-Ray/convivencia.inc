

#version 3.5;

#include "colors.inc"  
#include "glass.inc"

                       
#declare camera_centro=
camera {
  location  <2, 3, -2.5>
  look_at   <2, 0, 2>
}   

#declare camera_mesa=   
camera {
  location  <1, 1.4, -0.5>
  look_at   <0, 1.4, 0>
}                                         
                       
// ----------------------------------------


#declare mesa=
union {
//============= tampa ==============
cylinder{
        <0.025,1.03,0.40>
        <0.025,1.00,0.40>, 0.60           
        //finish { reflection .5 } // ambient diffuse
        }
                
//============= perna ==============              
cylinder{
        <0.05,1.0,0.40>
        <0.025,0,0.40>, 0.05
        //texture{ pigment {White} }  
                
        }       

//============= base ==============                      
//============= base1 ==============              
box{
        <0,0,0,>
        <0.05,0.03,0.8>          
        }            

//============= base2 ==============              
        
box{            
        <-0.375,0,0.375,>
        <0.375,0.05,0.375>          
        } 
texture{ pigment {White} }             
}     
                
//-------------------------------------------------------------                                
                
#declare acento=
union{                
//============= pernas ==============
cylinder{
        <0.01,0,0.01>
        <0.01,0.5,0.01>, 0.01
        texture{ pigment {White} }  
                
        }

cylinder{
        <0.39,0,0.01>
        <0.39,0.5,0.01>, 0.01
        texture{ pigment {White} }  
                
        }

cylinder{
        <0.01,0,0.39>
        <0.01,0.5,0.39>, 0.01
        texture{ pigment {White} }  
                
        }

cylinder{
        <0.39,0,0.39>
        <0.39,0.5,0.39>, 0.01
        texture{ pigment {White} }  
                
        } 

cylinder{
        <0.01,0.15,0.01>
        <0.39,0.15,0.01>, 0.01
        texture{ pigment {White} }  
                
        }

cylinder{
        <0.01,0.15,0.39>
        <0.39,0.15,0.39>, 0.01
        texture{ pigment {White} }  
                
        } 

                       
//============ acento =============
box{
        <0.01,0.5,0>
        <0.4,0.5,0.42>
        texture{ pigment {White} }          
        }
                     
box{
        <0.01,0.52,0>
        <0.4,0.52,0.42>
        texture{ pigment {color Black} }          
        }             
}
   
   

//----------------------------------------------------------

#declare encosto=
union {
//============ encosto ================

cylinder{
        <0.01,0.5,0.01>
        <-0.05,1.10,0.01>, 0.01
        texture{ pigment {White} }  
                
        } 

cylinder{
        <0.01,0.5,0.13>
        <-0.05,1.10,0.13>, 0.01
        texture{ pigment {White} }  
                
        } 

cylinder{
        <0.01,0.5,0.27>
        <-0.05,1.10,0.27>, 0.01
        texture{ pigment {White} }  
                
        } 

cylinder{
        <0.01,0.5,0.39>
        <-0.05,1.10,0.39>, 0.01
        texture{ pigment {White} }  
                
        } 
  
//========= cilindro superior =======
cylinder{
        <-0.05,1.10,0>
        <-0.05,1.10,0.4>, 0.01
        texture{ pigment {White} }  
                
        }                         
} 

//=========== cadeira ===============

#declare cadeira=
union{
object {acento}
object {encosto}   
}       
 
//========= mesa com cadeira ========= 

#declare mesa_cadeiras=
union{
object {cadeira 
        translate <-0.45,0,0.03>}     
object {cadeira 
        translate <-0.45,0,-0.45>
        rotate    <0,-90,0>}     
object {cadeira 
        translate <-1.1,0,0.03>
        rotate    <0,90,0>}     
object {cadeira 
        translate <-1.1,0,-0.45>
        rotate    <0,180,0>}           
object {mesa rotate <0,40,0>}
}

//============= fileira de mesa ==================
#declare fila_mesa=
union{
object {mesa_cadeiras}
object {mesa_cadeiras translate <0,0,2.5>} 
object {mesa_cadeiras translate <0,0,5>}
object {mesa_cadeiras translate <0,0,7.5>}
object {mesa_cadeiras translate <0,0,10>} 
object {mesa_cadeiras translate <0,0,12.5>}
}                                                 
 
//========== 3 fileiras de mesas ================= 
#declare conjunto_fila =
union{
object {fila_mesa}
object {fila_mesa translate <2,0,0>}
object {fila_mesa translate <4,0,0>}
}

//============= prato ================
#declare prato=
union{
cone{
        <0,1.20,0>0.12 
        <0,1.181,0>0.05
        open              
        texture{ pigment {Brown} }
        finish {
                 ambient 0.0
                 diffuse 0.5
 }
}
cylinder{
        <0,1.181,0>
        <0,1.18,0>,0.05
        pigment {Brown}
        finish {
                 ambient 0.0
                 diffuse 0.8
             //    reflection 0.4
 }
}          
}
//=============== copo ================
#declare copo=
cylinder{
        <0,1.29,0>
        <0,1.18,0>,0.03       
        texture {T_Dark_Green_Glass}
}      

//===========================ventilador======================
#declare ventilador=   
union{
  torus {
  0.25, 0.25
  texture {
    pigment {
      radial
      frequency 15
      color_map {
        [0 color rgb <0,0,0> ]
        [0.33 color rgb <1.2,1.2,1.2> ]
        [0.66 color rgb <0,0,0> ]
        [1 color rgb <1.2,1.2,1.2> ]
      }
    }
    finish{
      specular 0.6
    }
  }    
  rotate <-90,0,0>
  scale 0.8
}                     
  cylinder{
        <0,0,0.45>,
        <0,0,-0.16>,
        0.075
        pigment{White}
  }
  rotate <0,90,25>
}       

//================ telefone ======================

#declare telefone =
union {
box{<0,0,0>,<.25,0.40,0.10> 
    pigment {color Blue}
    }
box{<0,0,0>,<0.25,0.05,-0.05>
    pigment {color Blue}
    }         
//    
box{<0,0.055,0>,<.25,0.4,0.05>
   pigment {color Blue} 
   translate<0,0,-.05>
   rotate<05,0,0>
   }    
   
box{<0.05,0.20,-0.01>,<0.15,0.32,0.0>
   pigment {color White} 
   translate<0,0,-.05>
   rotate<05,0,0>
   }
   
cylinder{<0.18,0.18,-0.07>,<0.18,0.35,-0.07>,0.03 rotate<5,0,0>}

}

//==================== televisão ========================

#declare televisao =
union { 
box{<0,0,0>,<0.6,0.55,0.2>
    pigment {color Brown}
   } 
box{<0.1,0.15,0.2>,<0.5,0.45,0.4>
    pigment {color Brown}
   } 
box{<0.05,0.05,-0.01>,<0.55,0.5,0> 
    pigment {color White}
    texture{T_Glass4}
   }
}


//================== placa generica ===================
#declare placa=
union{
  box{<0,0,0>,<2,0.8,0.15> pigment {color White}rotate<0,0,0>
      finish{
      diffuse 0.3
      ambient 0.2}
     }             
  difference{
    cylinder{<1,0.1,2.9>,<1,0.7,2.9>,3 pigment {color Black}rotate<0,0,0>} 
    box{<-2.1,0.09,0.05>,<4,0.71,6>rotate<0,0,0>}      
  }     
} 

//======================================
#declare Text_Tex = texture {
  pigment { granite scale 0.5 }
  finish { specular 0.7 }
}  
//========= placa salao beleza ===========
#declare placa_salao =
union{
  object {placa rotate<0,0,0>}
text {
  ttf "crystal.ttf", "Bella Donna",
  0.4, // depth
  0  // spacing  
  scale 0.2
 // texture { Text_Tex } 
  pigment {color Red}
  rotate <0, 0, 0>
  translate <0.4, 0.33, -0.14>
}

text {
  ttf "crystal.ttf", "Cabelereiro Unissex",
  0.3, // depth
  0  // spacing  
  scale 0.12
  pigment {color White}
  rotate <0, 0, 0>
  translate <0.4, 0.15, -0.12>
}

text {
  ttf "crystal.ttf", "Salao",
  0.4, // depth
  0  // spacing  
  scale 0.21
  pigment {color White}
  rotate <0, 0, 0>
  translate <1.05, 0.5, -0.14>
}   
}   


//========= placa papelaria ===========
#declare placa_papelaria =
union{
  box{<0,0,0>,<2,0.8,0.15>pigment {color Gray} rotate<0,0,0>
      finish{
        diffuse 0.3
        ambient 0.2}
     }             
  difference{
    cylinder{<1,0.1,2.9>,<1,0.7,2.9>,3 pigment {color Blue}rotate<0,0,0>} 
    box{<-2.1,0.09,0.05>,<4,0.71,6> rotate<0,0,0>}      
  } 
  text {
   ttf "crystal.ttf", "NC",
   0.4, // depth
   0  // spacing  
   scale 0.3
   pigment {color White}
   rotate <0, 0, 0>
   translate <1.4, 0.20, -0.12>
  }
  text {
   ttf "crystal.ttf", "Papelaria",
   0.4, // depth
   0  // spacing  
   scale 0.2 
   pigment {color White}
   rotate <0, 0, 0>
   translate <0.4, 0.5, -0.14>
  }                             
  
 // light_source{<1,0.4,-0.2> color White}  
}   



//========= caixa automatico ============ 
#declare caixa_banco_real=
union{
#declare cai=
union{
difference{
difference{
cylinder{<2.1,3,2>,<2.1,3.1,2>,2.5 pigment {color Blue}rotate<0,0,0>} 
box{<-1,2.9,0>,<6,3.2,5>pigment {color White}rotate<0,0,0>}
} 
box{<1.7,2.9,-0.5>,<6,3.2,0.1>pigment {color White}rotate<0,0,0>}
} 
difference{
difference{
difference{
cylinder{<2.1,0.1,2>,<2.1,3,2>,2.55 pigment {color Gray}rotate<0,0,0>}
box{<-1,-0.1,0>,<6,3.1,5>pigment {color White}rotate<0,0,0>}
}
box{<1.7,-0.09,-0.6>,<6,3.1,0.1>pigment {color White}rotate<0,0,0>}
}
box{<0.7,1,-0.03>,<1.45,2,-.65>pigment {color Green}}
} 
box{<0.8,1.2,-0.03>,<1.35,1.7,-.04>pigment {color White}}
light_source {<1.3, 3.05,-0.01>color White}     
}
object {cai rotate<180,180,0>translate<1.85,3.1,0>} 
object {cai rotate<180,180,0>translate<3.1,3.1,0>}
}   

  
//=========== placa banco real ==========
//placa
#declare placa_banco =
union{
box{<0,0.7,-0.01>,<5,0.8,0.15>pigment {Yellow}}
box{<0,0,0>,<5,0.8,0.15> 
    pigment {Green}
    finish{
      diffuse 0.3
      ambient 0.2}
    }

difference{
cylinder {<0,0.4,1.48>,<5,0.4,1.48>,1.52 
          pigment{Green}
          finish{
            diffuse 0.3
            ambient 0.2}
         }
box{<-0.01,-1.2,0.01>,<5.01,2,3>}
}     
}
//triangulo da placa
#declare caixa_triangulo=
union{
  box{<0.4,0,-0.1>,<1,0.6,0.15>
      pigment {Green}
      finish{
        diffuse 0.3
        ambient 0.1}
     }
  box{<0,0,-0.1>,<0.42,0.42,0.15> 
      pigment {Green}
      rotate<0,0,-45>
      translate<0.4,0,0>
      finish{
        diffuse 0.3
        ambient 0.1}
      }  
  difference{    
    box{<0,0,-0.11>,<0.42,0.42,0.16> 
        pigment {Yellow}
        rotate<0,0,-45>
        translate<0.4,0,0>}    
    box{<0.39,-0.31,-0.12>,<0.7,0.31,0.16>}
  }
}    

// ========== placa banco real ========
#declare placa_banco_real=
union{
object {placa_banco}
object {caixa_triangulo}
object {caixa_triangulo rotate<0,90,0> translate<4.85,0,0.3>}
text {
  ttf "crystal.ttf", "BANCO REAL",
  -0.1, // depth
  0  // spacing  
  scale 0.4
  //texture { Text_Tex } 
  pigment {color White}
  rotate <0, 0, 0>
  translate <1.5, 0.3, -0.14>
}     
}
//================== placa procopia ====================
#declare placa_focopia =
union{   
box{<0,0,0>,<2,0.8,0.15> pigment {color White}rotate<0,0,0>
    finish{
    diffuse 0.3
    ambient 0.2}
   }             
difference{
  cylinder{<1,0.1,2.9>,<1,0.7,2.9>,3 pigment {color White}rotate<0,0,0>} 
  box{<-2.1,0.09,0.05>,<4,0.71,6>rotate<0,0,0>}      
} 
difference{
  difference{
    cylinder{<1,0.2,2.9>,<1,0.6,2.9>,3.01 pigment {color Yellow}rotate<0,0,0>} 
    box{<-2.1,0.09,-0.03>,<4.5,0.71,6>rotate<0,0,0>}      
  }
  cylinder{<1,0.37,2.9>,<1,0.43,2.9>,3.02 pigment {color Yellow}rotate<0,0,0>}
} 

box{<0.35,0.28,-0.1>,<0.65,0.52,0.1>} 
box{<0.35,0.54,-0.1>,<0.65,0.57,0.1>translate<0.17,-0.170,0>  rotate<0,0,20>}  
text {
  ttf "crystal.ttf", "Procopia",
  0.2, // depth
  0  // spacing  
  scale 0.2
  rotate <0, 0, 0>
  translate <0.73, 0.33, -0.14>
}
} 

//================ placa papervest =========================        
#declare placa_papervest =
union{   
box{<0,0,0>,<2,0.8,0.15> pigment {color White}rotate<0,0,0>
    finish{
    diffuse 0.3
    ambient 0.2}
   }             
difference{
  cylinder{<1,0.1,2.9>,<1,0.4,2.9>,3  pigment {color Green} rotate<0,0,0>
           finish{ diffuse 0.3 ambient 0.2}
           } 
  box{<-2.1,0.09,0.05>,<4,0.71,6>rotate<0,0,0>}      
}  
difference{
  cylinder{<1,0.4,2.9>,<1,0.7,2.9>,3 pigment {color White}rotate<0,0,0>} 
  box{<-2.1,0.09,0.05>,<4,0.71,6>rotate<0,0,0>}      
}
  

text {
  ttf "crystal.ttf", "Paper",
  0.2, // depth
  0  // spacing  
  scale 0.2   
  pigment {color Yellow}
  rotate <0, 0, 0>
  translate <0.53, 0.53, -0.14>
}
text {
  ttf "crystal.ttf", "V",
  0.2, // depth
  0  // spacing  
  scale 0.3   
  pigment {color Red}
  rotate <0, 0, 0>
  translate <1.05, 0.43, -0.14>
}
text {
  ttf "crystal.ttf", "est",
  0.2, // depth
  0  // spacing  
  scale 0.2   
  pigment {color Yellow}
  rotate <0, 0, 0>
  translate <1.2, 0.43, -0.14>
}
text {
  ttf "crystal.ttf", "Livraria & Papelaria",
  0.3, // depth
  0  // spacing  
  scale 0.12   
  pigment {color White} 
  rotate <0, 0, 0>
  translate <0.40, 0.2, -0.14>
}
}         

//=============== possições alternativas =====================            
/*object {conjunto_fila translate <2.2,0.15,4>}  
object {caixa_banco_real rotate<0,-90,0>translate<0.15,0.16,3>}
object {placa_salao rotate<0,90,0>translate<8.85,3,5>}   
//object {ventilador}
//object {televisao}
//object {telefone}
//object {placa_salao}
*/
