#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": *

#set align(center)

#cetz.canvas(length: 0.5cm, {
  import cetz.draw: *
  import cetz.angle: angle

  set-style(..defaultStyle)


  let (A, B, C, D) = ((0,0), (4,4), (11,4), (7,0))
  
  line(A, B, C, D, close: true)

  content(A, $ A $, anchor: "right")
  content(B, $ B $, anchor: "bottom")
  content(C, $ C $, anchor: "left")
  content(D, $ D $, anchor: "top")

  line(A, B, name: "AB")
  line(B, C, name: "BC")

  // line(D, (horizontal: "AB", vertical: "AB"), name: "DH1")
  // line(D, (horizontal: "BC", vertical: "BC"), name: "DH2")

  // content("DH1.end", name: "H1", $ H_1 $, anchor: "bottom-right")
  // content("DH2.end", $ H_2 $, anchor: "bottom", name: "H2")

  // angle("H1", D, B, $$)



  
  line(D, (horizontal: "AB", vertical: "AB"), name: "DH1")
  line(D, (horizontal: "AB", vertical: ()), name: "DH1")
  line(D, (horizontal: (), vertical: "AB"), name: "DH1")
  
})

