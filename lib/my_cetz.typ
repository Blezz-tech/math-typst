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


#let cunstom-circle(point, width, dots: none) = {
  import cetz.draw: *

  let st  = (start: 0deg, stop:  180deg) // (start, stop)
  let st1 = (start: 0deg, stop: -180deg) // (start1, stop1)

  arc(point, ..st,  ..width, stroke: (dash: dots))
  arc(point, ..st1, ..width)
}

#let cilynder( point:  (0, 0)
              , width:  4
              , height: 4
              , water: 50
              , colors: ( top: none
                        , bottom: none
                        , lateral: none
                        )
              ) = {
  import cetz.draw: *
  import cetz.vector: sub, add
  
  let (x, y) = point

  // rectangle cilynder
  let R = ( left:   x - width / 2
          , right:  x + width / 2
          , bottom: y
          , top:    y + height
          )

  // points of cilynder
  let P = ( tr: ( R.right, R.top    )
          , tl: ( R.left , R.top    )
          , tm: ( x      , height   )
          , br: ( R.right, R.bottom )
          , bl: ( R.left , R.bottom )
          , bm: point
          )

  
  let fill1 = height * water / 100

  let width-r = (radius: add((width/2, 0), (0, 0.5)))

  let P1 = (..P
           , tr: sub(P.tr, (0, fill1))
           , tl: sub(P.tl, (0, fill1))
           , tm: sub(P.tm, (0, fill1))
           )


  // paint middle surface
  if colors.lateral != none {
    rect( P1.bl, P1.tr, fill: colors.lateral)
    circle(P.bm, fill: white, ..width-r, stroke: none)
    circle(P.tm, fill: white, ..width-r, stroke: none)
  }

  // paint top surface
  if colors.top    != none { circle(P1.bm, fill: colors.top   , ..width-r, stroke: none) }

  // paint bottom surface
  if colors.bottom != none { circle(P1.tm, fill: colors.bottom, ..width-r, stroke: none) }

  // top surface
  circle(P.tm, ..width-r)

  // bottom surface
  cunstom-circle(P.br, width-r, dots: "dashed")
  
  // middle surface
  if fill != 0 {
    cunstom-circle(P1.tr, width-r, dots: "dashed")
  }

  // lines
  line(P.bl, P.tl)
  line(P.br, P.tr)
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

