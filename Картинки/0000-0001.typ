#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": circumcenter, defaultStyle

#set align(center)

#cetz.canvas(length: 1cm, {
  import cetz.draw: *
  import cetz.vector: div, add
  
  set-style(..defaultStyle)

  set-style( angle:  ( radius: 0.8
                     , label-radius: 1.2
                     , fill: green.lighten(80%)
                     , stroke: ( paint: green.darken(50%))
                     )
           )

  let (A, B, C) = ((0,0), (6,0), (3,calc.sqrt(36-9)) )

  line(A, B, name: "AB")
  line(A, C, name: "AC")
  line(B, C, name: "BC")
  
  let (E, F, D) = ( div(add(A, C), 2)
                  , div(add(A, B), 2)
                  , div(add(B, C), 2)
                  )

  for (point) in (A, B, C, E, F, D) {
    circle(point, radius: 0.04, fill: black )
  }

  line(C, E, D, close: true, fill: blue.lighten(80%))
  
  content(A, $ A $, anchor: "top-right") 
  content(B, $ B $, anchor: "top-left")
  content(C, $ C $, anchor: "bottom")
  
  line(E, D, F, close: true)
  
  content(E, $ E $, anchor: "right")
  content(D, $ D $, anchor: "left")
  content(F, $ F $, anchor: "top")

  content(circumcenter(A, E, F), $ x $, anchor: "center")
  content(circumcenter(E, F, D), $ x $, anchor: "center")
  content(circumcenter(E, D, C), $ x $, anchor: "center")
  content(circumcenter(F, D, B), $ x $, anchor: "center")

   
})
