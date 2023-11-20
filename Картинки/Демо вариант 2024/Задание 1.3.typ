#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": defaultStyle

#set align(center)

#cetz.canvas(length: 0.5cm, {
  import cetz.draw: *
  import cetz.angle: angle
  
  set-style(..defaultStyle)

  let (A, B, C, D, O) = ((0,4), (-10,0), (0,-4), (10,0), (0,0))

  angle(B, A, O, label: text([$13 degree$], size: 8pt) )
  angle(B, C, O, label: text([$13 degree$], size: 8pt) )
  
  angle(C, B, D, radius: 0.6)
  angle(C, B, D, radius: 0.45)
  
  line(A, B, C, D, close: true)
  circle(O, fill: blue, stroke: (paint: blue), radius: 0.07)
  content(O, $ O $, anchor: "top-left")

  content(A, $ A $, anchor: "bottom")
  content(B, $ B $, anchor: "right")
  content(C, $ C $, anchor: "top")
  content(D, $ D $, anchor: "left")

  line(B, D, stroke: (dash: "dashed", paint: blue))
  line(A, C, stroke: (dash: "dashed", paint: blue))
  


   
})

