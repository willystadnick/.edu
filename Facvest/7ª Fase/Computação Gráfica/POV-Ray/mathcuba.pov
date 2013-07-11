#include "colors.inc"

#include "stones.inc"

background {color Gray}
camera{
location <0,1,-4>
look_at <-2,1,4>}

sphere {
<-5,4.5,4>,1.5
texture {
pigment{color White}}                                    
}                       


            
light_source{<-2,4,-3> color Blue} 

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
cone{ 

<0,2,2>,0.8
<0,0.5,2>,2.0
open
texture{T_Stone31 scale 4}

}                                

cylinder{
<0,1,2>,
<0,-2,2>,
.2

texture{T_Stone21 scale 11}  

}


light_source{<-2,4,-3> color White}    
                                

 plane{

<0,2,0>, -1

pigment{
checker color Red, color Yellow 

//color Gray
}
}
light_source{<2,4,-3> color White}    
