// Exemplo de arquivo de descricao de cena para POV-ray
// Last edited on 2000-09-21 09:50:30 by stolfi

//background{ color rgb < 0.00, 0.03, 0.15 > }

//light_source {
//  < 10.00, 50.00, 10.00 >

//  < 10.00, 50.00, -20.00 >
//  color rgb < 1.00, 1.00, 1.00 >
//}

//camera {
//  location  < 0.00,0.00,30.00 >
//  right     < 2.40, 0.00, 0.00 >
//  up        < 0.00, 0.00, 1.80 >
//  sky       < 0.00, 0.00, 1.00 >
//  look_at   < 0.00, 0.00, 0.00 >
//}

//#declare prisma  =
//prism {
//    conic_sweep
//    linear_spline
//    0, // sweep the following shape from here ...
//    2, // ... up through here
//    4, // the number of points making up the shape ...
//    <2,0>, <2,4>, <0,4>, <0,0>, <2,0>
//    <0,0>,<0,2>,<2,2>,<0,2>
//    rotate <180, 0, 0>
//    scale <1, 1, 1>
//    translate <0,1,0>
//    pigment {color rgb <1,1,0.3>}
//           }

//object {prisma}

//#include "colors.inc"

  camera {
    angle 15
    location <5,20,-20>
    look_at <0.8,0,0>
  }
  light_source { <10, 20, -10>  color rgb <1,1,1>}

#declare c=
   sphere { <0,0,0>,0.5 pigment {color rgb <0.5,1,0.3> } }

#declare b=
  blob {
    threshold .65
    sphere { <.5,0,0>, .8, 1 pigment {color rgb <0.5,1,0.3> } }
    sphere { <-.5,0,0>,.8, 1 pigment {color rgb <1,1,0.3> } }
    sphere { <0,0.5,0>,.8, 1 pigment {color rgb <1,1,0.3> } }
    sphere { <0,-0.5,0>,.8, 1 pigment {color rgb <1,1,0.3> } }
    finish { phong 1 }
  }

#declare d=
  blob {
    threshold .65
    sphere { <2.1,0,0>, .8, 1 pigment {color rgb <1,1,0.3> } }
    sphere { <1.1,0,0>,.8, 1 pigment {color rgb <0.5,1,0.3> } }
    sphere { <1.6,0.5,0>,.8, 1 pigment {color rgb <1,1,0.3> } }
    sphere { <1.6,-0.5,0>,.8, 1 pigment {color rgb <1,1,0.3> } }
    finish { phong 1 }
  }

#declare e=
  blob {
    threshold .5
    sphere { <0.2,0,0>, .3, 1 pigment {color rgb <1,1,1> } }
    sphere { <-0.2,0,0>,.3, 1 pigment {color rgb <1,1,1> } }
    sphere { <0,0.2,0>,.3, 1 pigment {color rgb <1,1,1> } }
    sphere { <0,-0.2,0>,.3, 1 pigment {color rgb <1,1,1> } }
    finish { phong 1 }
  }

#declare f=
box {<-1,1,0>, <1,-1,-1> pigment {color rgb <1,1,1,1>}}

difference {
object {b}
object {f}
}
//object {c}
object {d}
object {e}
