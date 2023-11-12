#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": cilynder, defaultStyle

#set align(center)


#cetz.canvas(length: 0.5cm, {
  import cetz.draw: *

  set-style = defaultStyle

  cilynder((0, 0), 2, 5, 3.5)
  
  cilynder((6, 0), 3, 5, 2)
})

