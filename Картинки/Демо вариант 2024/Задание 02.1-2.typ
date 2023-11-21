#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": defaultStyle

#set align(center)

#cetz.canvas(length: 0.5cm, {
  import cetz.draw: *
  import cetz.vector: add, div
  
  set-style(..defaultStyle)

  let (Ox, Ox1, Oy, Oy1) = (-2, 14, -2, 11)

  let (X, Y) = ((Ox1, 0), (0, Oy1))

  // Сетка
  grid((Ox,Oy), (Ox1,Oy1), help-lines: true, stroke: 0.1pt)
  
  // Ось X
  line((Ox - 1, 0) , (Ox1 + 1, 0), mark: (end: ">"))
  content((), $ x $, anchor: "top-left", mark: (size: 6pt))
  
  // Ось Y
  line((0, Oy - 1) , (0, Oy1 + 1), mark: (end: ">"))
  content((), $ y $, anchor: "bottom-right")

  // Центр
  let O = (0,0)
  circle(O, radius: 1pt, fill: black)
  content(O, $ 0 $, anchor: "top-right")
  
  // Точки Оси X
  let pointsX = ((1, $ 1 $), (5, $ 5 $), (11, $ 11 $))
  for (x, ct) in pointsX {
    let point = (x, 0)
    circle(point, radius: 1pt, fill: blue.darken(20%), stroke: blue.darken(20%))
    content(point, text(blue, [#ct]), anchor: "top-right", padding: 0.2)
  }
  
  // Точки Оси Y
  let pointsY = ((1, $ 1 $), (2, $ 2 $), (3, $ 3 $), (5, $ 5 $), (8, $ 8 $))
  for (y, ct) in pointsY {
    let point = (0, y)
    circle(point, radius: 1pt, fill: blue.darken(20%), stroke: blue.darken(20%))
    content(point, text(blue, [#ct]), anchor: "top-right", padding: 0.2)
  }

  // Вектор A
  let (A, A1) = ((1,2), (5,8))
  line(A, A1, mark: (end: ">"))
  content(div(add(A, A1), 2), $ arrow(a) $, anchor: "bottom-right")

  content(A,  text(blue)[$ (1; 2) $], anchor: "left")
  content(A1, text(blue)[$ (5; 8) $], anchor: "left")

  // Вектор B
  let (B, B1) = ((5,5), (11,3))
  line(B, B1, mark: (end: ">"))
  content(div(add(B, B1), 2), $ arrow(b) $, anchor: "bottom-left")
  
  content(B,  text(blue)[$ (5;  5) $], anchor: "bottom")
  content(B1, text(blue)[$ (11; 3) $], anchor: "left")
})