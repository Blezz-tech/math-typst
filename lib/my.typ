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

#let emptyset = (normal: $diameter$)

// https://github.com/typst/typst/issues/1595#issuecomment-1609971882
#let ru_alph(pattern: "а)") = {
  let alphabet = "абвгдежзиклмнопрстуфхцчшщэюя".split("")
  let f(i) = {
    let letter = alphabet.at(i)
    let str = ""
    for char in pattern {
      if char == "а" {
        str += letter
      }
      else if char == "А" {
        str += upper(letter)
      }
      else {
        str += char
      }
    }
    str
  }
  f
}