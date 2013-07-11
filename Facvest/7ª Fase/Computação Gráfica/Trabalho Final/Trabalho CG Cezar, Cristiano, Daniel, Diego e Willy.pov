/*
Trabalho desenvolvido pelos acadêmicos

César Cristiano Kappaun;
Cristiano Dias Campos;
Daniel Patrocínio;
Diego Parrilha Bisconsin;
Willy Stadnick Neto;

7ª Fase de Ciencia da Computação
*/

// bibliotecas
#include "colors.inc"
#include "textures.inc" 
#include "shapes.inc"
#include "woods.inc"

//--------------------------------------------------

// camera
camera{
 location <12.5,20,-20>
 look_at <0,0,20>} 

//--------------------------------------------------

// luzes
light_source{
 <5,25,-5>
 color Gray}

light_source{
 <0,25,-5>
 color Gray}

//--------------------------------------------------

// catraca
#declare catraca = union{
 box{
  <-2,0,-2>, <2,0.25,2>
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

// rotina de multiplicação das catracas
#declare qtd = 5;	//quantidade
#declare dist = 10;	//distância
#declare i = 0;		//contador

#while( i < qtd )
 object{
  catraca
  scale <0,0,0>
  translate <0,0,dist * i>}
 #declare i = i + 1;
#end 

//--------------------------------------------------

// parede
plane{ 
 <0,0,40>, 0
 pigment{
  color rgb<0.88,1,0.92>}
  translate <0,0,43>}        

//--------------------------------------------------

// tomadas
box{         
 <0,0,0>, <1,2,1>
 pigment{
  color Gray}
 translate <7,7,42.9>}

box{         
 <0,0,0>, <1,2,1>
 pigment{
  color Gray}
 translate <-37,7,42.9>}

//--------------------------------------------------

// rodape
box{
 <0, 0, 0>, <200, 1,1>    
 pigment{
  color MediumSeaGreen}
 translate <-100,0,42.8>}                               

//--------------------------------------------------

// chão
plane{ 
 y 0		// posição
 texture{
  pigment{
   checker color rgb<0.68,0.54,0.43> color rgb<0.45,0.41,0.39>
//   DMFLightOak	// textura definida em textures.inc
   scale 0}	// escala proporcional ao tamanho
  normal{
   dents .75
   scale .25}}}
 
//--------------------------------------------------