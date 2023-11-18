#import "@preview/showybox:2.0.1": showybox

#let task(term) = box[
  #showybox(
    frame: (
      border-color: blue.darken(50%),
      title-color: blue.lighten(60%),
      body-color: blue.lighten(70%)
    ),
    body-style: (
      color: black,
      weight: "regular",
      align: center
    ),
    [#term]
  )
]

#let answer(term) = box[
  #showybox(
    frame: (
      border-color: green.darken(50%),
      title-color: green.lighten(60%),
      body-color: green.lighten(70%)
    ),
    body-style: (
      color: black,
      weight: "regular",
      align: center
    ),
    [#term]
  )
]