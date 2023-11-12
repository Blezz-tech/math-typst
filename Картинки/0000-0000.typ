#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": defaultStyle

#set align(center)

#cetz.canvas(length: 1cm, {
  import cetz.draw: *
  import cetz.angle: angle

  set-style(..defaultStyle)
  
  set-style( angle:  ( radius: 0.8
                     , label-radius: 1.2
                     , fill: green.lighten(80%)
                     , stroke: ( paint: green.darken(50%))
                     )
           , content: ( padding: 1pt )
           )


  let (A, B, C) = ((0,0), (6,0), (5,4))
  
  angle( A, B, C, label: text([$32 degree$]) )
  
  line(A, B, C, close: true)
  circle-through(A, B, C, name: "c")
  line(B, "c.center", C)
  circle("c.center", radius: .05, fill: black)
  
  content(A, $ A $, anchor: "top-right") 
  content(B, $ B $, anchor: "top-left")
  content(C, $ C $, anchor: "bottom-left")
  content("c.center", $ O $, anchor: "top", padding: 5pt)
})