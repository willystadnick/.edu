#include "colors.inc"

#include "stones.inc"

background {color White}

camera{
location <2,12,-18>
look_at <2,2,1>}

//sphere {
//<-2,5,4>,2
//texture {
//pigment{color Yellow}}                                    
//}                       

light_source{<4.5,15,2> color White} 

light_source{<4.5,5,2> color White} 
           
light_source{<4.5,5,12> color White} 
 
light_source{<4.5,5,24> color White} 
 
/*
box {<-1,0,-1> , <1,0,3>
texture {
T_Stone25

scale 10
}
rotate <0,0,0>
}
// light_source{<2,4,-3> color White}     
*/

/*cone{ 
<0,2,2>,0.8
<0,0.5,2>,2.0

texture{T_Stone11 scale 4}

}                                
  

cylinder{
<0,1,2>,
<0,-2,2>,
.2
open
texture{T_Stone2 scale 11}  
              }
*/

                          

 plane{
        y,0

pigment{
checker color Red, color Yellow 
}
finish { reflection .8 }
}


// parede1
box {<0,0,0> , <.15,6,26>
pigment {
White
}

// rotate <0,0,0>
}  


// parede 2
box {<9,0,0> , <9.15,6,26>
pigment {
White
}

// rotate <0,0,0>
}  

// parede do fundo
box {<0,0,26> , <9.15,6,26.15>
pigment {
White
}
// rotate <0,0,0>
}  

difference{  
//teto  
box {<0,6,0> , <9.15,6.15,26.15>
pigment {
White
}
}               

//vazado de cima
box {<2.5,5.8,2> , <6.65,6.20,24>
pigment {
Red
}
}          
}//fecha difference
    
/*box {<2.5,6,2> , <2.65,8,24>
pigment {
Gray
}
} 
*/

box {<0,0,0> , <0.15,3,22>
pigment {
Blue
}
rotate -45*z
translate <2.5,6,2>

} 
 
  
box {<0,0,0> , <0.15,3,22>
pigment {
Blue
}
rotate 45*z
translate <6.65,6,2>
} 
  


//chao
box {<0,0,0> , <9.15,0.15,26.15>
pigment {
Gray
}
}  