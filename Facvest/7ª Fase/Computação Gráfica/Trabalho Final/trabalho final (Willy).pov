#include "colors.inc"
#include "stones.inc"

//--------------------------------------------------

camera{
 location <0,15,-55>
 look_at <0,5,5>
 rotate <0,-45,0>}
    
//--------------------------------------------------

background{
 color Gray}

//--------------------------------------------------

plane{
 y, 1
 pigment{
  checker color Black, color Red}}

//--------------------------------------------------

light_source{
 <5,15,-5>
 color White}
 
light_source{
 <-5,15,-5>
 color White}

//--------------------------------------------------

//formação do objeto catraca
#declare catraca = union{

//pé
cone{
 <0,0,0.75>, 3, <0,1.5,0.75>, 0.5
 texture{
  pigment{
   color White}}}

//tronco
cylinder{
 <0,0,0.75>, <0,10,0.75>, 0.5
 texture{
  pigment{
   color White}}}

//cabeça
difference{
 box{
  <-1.5,10,-1.5>, <1.5,12.5,1.5>
  texture{
   pigment{
    color White}}}                                                  
 box{
  <-3,9,0>, <3,12,3>
  texture{
   pigment{
    color White}}
  rotate <-45,0,0> 
  translate <0,1.5,4.5>}}

//base das hastes
cone{
 <0,11,-0.5>, 0.75, <0,10.5,-1>, 0.25
 texture{
  pigment{
   color White}}  
 rotate <0,0,0> 
 translate <0,0,-0.25>}

//haste superior
cylinder{
 <0,11,-0.75>, <0,11,-5>, 0.125
 texture{
  pigment{
   color White}}}

//haste inferior-direita
cylinder{
 <0,11,-0.75>, <4,8,-2>, 0.125
 texture{
  pigment{
   color White}}}

//haste inferior-esquerda
cylinder{
 <0,11,-0.75>, <-4,8,-2>, 0.125
 texture{
  pigment{
   color White}}}}

//--------------------------------------------------

#declare qtd = 10;
#declare dist = 10;
#declare i = 0;

#while (i<qtd)
 object{catraca
  scale <0,0,0>
  translate <0,0,dist * i>}
 #declare i = i + 1;
#end

//--------------------------------------------------

