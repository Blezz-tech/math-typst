#import "@preview/cetz:0.1.2"
#import cetz.vector: *

#let circumcenter(point1, point2, point3) = {
  
  let (x1, y1) = point1;
  let (x2, y2) = point2;
  let (x3, y3) = point3;
  
  // Calculate lengths of sides
  
  let a = dist(point2, point3)
  let b = dist(point1, point3)
  let c = dist(point1, point2)
  
  // Calculate circumcenter
  let x = (a * x1 + b * x2 + c * x3) / (a + b + c);
  let y = (a * y1 + b * y2 + c * y3) / (a + b + c);
  
  (x, y)
}


#let cilynder(point, width, height, R) = {
  import cetz.draw: *
  import cetz.vector: sub, add
  
  let (x, y) = point
  let R1 = (x, R)
  let default = (radius: (width, 0.5))

  let start1 = (start: 0deg)
  let stop_i = (stop:  180deg)
  let stop_d = (stop: -180deg)

  let P_t = add(point, (0, height))
  
  let color = blue.lighten(80%)

  let widthDefault = (width, 0)
  let widthR = (radius: add(widthDefault, (0, 0.5)))
  
  let P_i = add(point, widthDefault)
  let P_d = sub(point, widthDefault)
  let P1_i = add(P_t, widthDefault)
  let P1_d = sub(P_t, widthDefault)
  let R_i = add(R1, widthDefault)

  // Окраска водой
  rect(P_d, R_i, fill: color, stroke: none)
  circle(point, ..widthR, stroke: color, fill: blue.lighten(80%))
  circle(R1, ..widthR, fill: color, stroke: none)

  // Уровень воды
  arc(R_i, ..start1, ..stop_i, ..widthR, stroke: (dash: "dashed") )
  arc(R_i, ..start1, ..stop_d, ..widthR)

  // Дно
  arc(P_i, ..start1, ..stop_i, ..widthR, stroke: (dash: "dashed") )
  arc(P_i, ..start1, ..stop_d, ..widthR)

  // Крышка
  circle(P_t, ..widthR)
  
  // Боковые стороны
  line(P_d, P1_d)
  line(P_i, P1_i)
}

#let defaultStyle = ( mark:   ( fill: black )
           , stroke: ( thickness: 0.5pt
                     , cap: "round"
                     , paint: black
                     )
           , angle:  ( radius: 1.5
                     , size: 1pt
                     , label-radius: 2
                     , fill: blue.lighten(80%)
                     , stroke: ( paint: blue.darken(50%))
                     )
           , content: ( padding: 3pt )
           )

