#import "@preview/cetz:0.1.2"
#import "/lib/my_cetz.typ": cilynder

#set align(center)


#cetz.canvas(length: 0.5cm, {
  import cetz.draw: *

  let cilynder-color = blue.lighten(80%)
  
  cilynder( width:  4
          , height: 5
          , water: 70
          , colors: ( top: cilynder-color
                    , bottom:  cilynder-color
                    , lateral: cilynder-color
                    )
          )

  cilynder( point:  (6, 0)
          , width:  6
          , height: 5
          , water: 35
          , colors: ( top: cilynder-color
                    , bottom:  cilynder-color
                    , lateral: cilynder-color
                    )
          )

  // cilynder( point:  (6, 0)
  //         , width:  6
  //         , height: 2
  //         , colors: ( top: cilynder-color
  //                   , bottom:  cilynder-color
  //                   , lateral: cilynder-color
  //                   )
  //         , lines: ( top: "dashed"
  //                  , bottom: "dashed"
  //                  )
  //         )
})

