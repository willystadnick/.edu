
// cozinha
 
#include "colors.inc"
#include "textures.inc"
#include "metals.inc"

//Cozinha


camera {
   location <3,3,-7>
   look_at <2,0,0>
}

light_source {<4.5,2,1> color White }
light_source {<1,2,-2> color Blue shadowless }
//chão..
plane { y,-1 pigment{ checker Black, White} 
       finish { reflection 0.2 }        
        }
//parede esquerda               
plane { x,-2 texture {pigment{ Aquamarine}       
        }
               
        }        
//parede do fundo        
plane { z,4              
       texture{
        pigment { Aquamarine}                     
        } 
}
//parede da direita                         
plane { x,6 texture{              
        pigment{Aquamarine}        
        }             
     }        
//banquinho-----------------------------------------------------
//pernas do banco
box{<4.5,-1,-1><4.6,-0.2,-0.9>
  pigment {color Red   
    }
}   

box{<4.8,-1,-1><4.9,-0.2,-0.9>
  pigment {color Red   
    }
}
box{<4.5,-1,-1.5><4.6,-0.2,-1.4>
  pigment {color Red   
    }
}   
box{<4.8,-1,-1.5><4.9,-0.2,-1.4>
  pigment {color Red   
    }
}
//acento do banquinho
cylinder {<4.6,0,-1.6><4.6,0.1,-1.6>,0.3
pigment {color Red   
    }
}
//geladeira------------------------------------------------------
difference{
box {<4,-1,2><6,3,4>
    pigment {color Red   
    }
}          
box {<4.1,-0.8,1.8><5.9,2.9,3.8>
    pigment {color Red   
    } 
 }
}
//porta da geladeira..
difference{
box {<5.7,-0.8,2><5.9,2.9,-0.1>
    pigment {color Green   
    } 
    //rotate 10*y
    //translate z*1

}
//suporte da porta
box {<5.5,-0.6,1.8><5.8,2.7,0>
    pigment {color Green   
    }     
}
}
//detalhes da porta
box {<5.6,0,1.8><5.8,0.2,0>
    pigment {color Red   
    }     
}
box {<5.6,1,1.8><5.8,1.3,0>
    pigment {color Red   
    }     
}
box {<5.6,1.8,1.8><5.8,2.1,0>
    pigment {color Red   
    }     
}       
//prateleira da geladeira
box {<4.1,-1.5,2.5><5.9,-0.4,4>
    pigment {color Red   
    }
} 
box {<4.1,0.5,2.5><5.9,0.6,4>
    pigment {color Red   
    }
} 
box {<4.1,1,2.5><5.9,1.1,4>
    pigment {color Red   
    }
} 
box {<4.1,1.5,2.5><5.9,1.6,4>
    pigment {color Red   
    }
} 
//congelador da geladeira               
box {<4.1,2,2.5><5.9,2.8,4>
    pigment {color Red   
    }
}
box {<4.4,2.2,2.4><5.7,2.7,4>
    pigment {color Green   
    }
} 
box {<4.6,2.3,2.4><4.7,2.6,4>
    pigment {color Red   
    }
}
//cervejas da geladeira--------------------------------------

cylinder{<5,-0.4,2.7><5,-0.1,2.7>0.1               
 pigment {color White   
    }
}

cylinder{
 <5.3,-0.4,2.7><5.3,-0.1,2.7>0.1               
 pigment {color White   
    }
}

cylinder{
 <5.3,1.6,2.7><5.3,1.9,2.7>0.1               
 pigment {color White   
    }
}
//mesa ------------------------------------------------------
box {<1,0.4,-2><4,0.6,0>
 texture{
 pigment {color White   }
 }
 //texture { Clouds     } 
 //finish { reflection 0.05 }    
}
//pernas da mesa
box {<1.1,-1,-1.9><1.3,0.5,-1.7>
 pigment {color White   }
}

box {<3.7,-1,-1.9><3.9,0.5,-1.7>
 pigment {color White   }
}       

box {<1.1,-1,-0.6><1.3,0.5,-0.9>
 pigment {color White   }
}

box {<3.7,-1,-0.6><3.9,0.5,-0.9>
 pigment {color White   }
}
//------------------------------------------------------------          
//pia
difference {
box {
    <0,-1,2><3.1,1,4>
   // pigment {color Red   
    //} 
pigment {color Red
}
}
sphere {
   <1.5,0.5,3>.9
    pigment {color Red   
    }
    
 }                   
}
//copo em cima da pia---------------------------------------
cylinder{<2.8,1,2.7><2.8,1.3,2.7>0.1               
 pigment {color White   
    }
}
//parte de cima da pia, prateleira da pia------------------
difference{
box {<0,2,3><3.1,3.2,4>
    pigment {color Red   
    }
} 
box {<2.1,2.1,2.9><2.9,3.1,3.8>
    pigment {color Red   
    }
}
}                      
//latinha da pratileira-----------------------------------
cylinder{<2.5,2.1,3.1><2.5,2.4,3.1>0.1               
 pigment {color White   
    }
}
//portas da parte de cima da prateleira-------------------
box {<0.1,2.1,2.9><0.9,3.1,4>    
    pigment {color Green    
    }
}
box {<1.1,2.1,2.9><1.9,3.1,4>
    pigment {color Green   
    }
}  
box {<2.1,2.1,2.9><2.9,3.1,3>
    pigment {color Green   
    }
    rotate 45*y
    translate x*-2  
    translate z*2.4
    translate x*1.4
}
//torneira da pia-----------------------------------------
box {<1.5,1,3.8><1.6,1.4,4>
     pigment {color Gray   
    }
}
box {<1.5,1.2,3.6> <1.6,1.3,4>
     pigment {color Gray   
    }
}
//portas de baixo da pia---------------------------------
box {<0.1,-0.8,1.8><1,0.5,2>
   pigment {color Green   
    }
}
box {<1.1,-0.8,1.8><2,0.5,2>
   pigment {color Green   
    }
}

box {<2.1,-0.8,1.8><3,0.5,2>
   pigment {color Green   
    }
}
//gavetas-----------------------------------------------         
box {<0.1,0.6,1.8><1,0.9,2>
   pigment {color Green   
    }
}
box {<1.1,0.6,1.8><2,0.9,2>
   pigment {color Green   
    }
}

box {<2.1,0.6,1.8><3,0.9,2>
   pigment {color Green   
    }
} 
//maçanetas das gavetas--------------------------------
sphere {<0.6,0.7,1.8> 0.1   
    pigment {color Red   
    }
} 

sphere {<1.6,0.7,1.8> 0.1   
    pigment {color Red   
    }
}
sphere {<2.6,0.7,1.8> 0.1   
    pigment {color Red   
    }
}
//fogão----------------------------------------------- 
box{
 <-2,-1,2><-0.1,1,4>
 pigment {color Red   
    }
}
//tampa do fogão-------------------------------------
difference{
box{<-2,1.1,3.8><-0.1,2.6,4>
 pigment {color Red   
    }
}
box{<-1.9,1.2,3.7><-0.2,2.5,3.9>
 pigment {color Red   
    }
}
}
//detalhe das pernas da tampa-----------------------
box{
 <-2,1,3.8><-1.9,1.1,4>
 pigment {color Green   
    }
}
box{<-0.2,1,3.8><-0.1,1.1,4>
 pigment {color Green   
    }
}
//panela em cima do fogão--------------------------
difference{
cylinder {<-1.1,1,2.5><-1.1,1.5,2.5>,0.4 
  pigment { color Blue    
    }

}
cylinder {<-1.1,0.9,2.6><-1.1,1.6,2.6>,0.3
 pigment {color Blue   
    }
}  
}
//cabo da panela--------------------------------
box{<-0.7,1.3,2.4><0,1.4,2.5>
 pigment {color Black   
    }
}
//porta do fogão e detalhe--------------------
difference{
box{<-1.9,-0.9,1.8><-0.2,0.5,2>
 pigment {color Green   
    }
}
box{<-1.8,-0.8,1.7><-0.2,0.1,1.9>
 pigment {color Green   
    }
}
}
//maçaneta da porta do fogão-------------------
box{
 <-1.7,0.2,1.7><-0.3,0.3,1.9>
 pigment {color Red   
    }
}
//parte dos botões do fogão-------------------
box{
 <-1.9,0.6,1.8><-0.2,0.9,2>
 pigment {color Green   
    }
}
//botões
//botão 1
cylinder {
 <-1.8,0.6,1.8><-1.8,0.8,1.8>,0.13
 pigment {color Red   
    }
 rotate x*90 
 translate z*1.1
 translate x*0.2
 translate y*2.55
}
//botão 2
cylinder {<-1.8,0.6,1.8><-1.8,0.8,1.8>,0.13
 pigment {color Red   
    }
 rotate x*90 
 translate z*1.1
 translate x*0.6
 translate y*2.55
}
//botão 3
cylinder {<-1.8,0.6,1.8><-1.8,0.8,1.8>,0.13
 pigment {color Red   
    }
 rotate x*90 
 translate z*1.1
 translate x*1
 translate y*2.55
}
//botão 4
cylinder {<-1.8,0.6,1.8><-1.8,0.8,1.8>,0.13
 pigment {color Red   
    }
 rotate x*90 
 translate z*1.1
 translate x*1.4
 translate y*2.55
}
 
