#outline(indent: 12pt)

= 1. tikz

#import "@preview/cetz:0.1.2"

#show math.equation: block.with(fill: white, inset: 1pt)

#cetz.canvas(length: 4cm, {
  import cetz.draw: *

  set-style(
    mark: (fill: black),
    stroke: (thickness: 0.4pt, cap: "round"),
    angle: (
      radius: 0.3,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    content: (padding: 1pt)
  )

  grid((-1.5, -1.5), (1.4, 1.4), step: 0.5, stroke: gray + 0.2pt)

  circle((0,0), radius: 1)

  line((-1.5, 0), (1.5, 0), mark: (end: ">"))
  content((), $ x $, anchor: "left")
  line((0, -1.5), (0, 1.5), mark: (end: ">"))
  content((), $ y $, anchor: "bottom")

  for (x, ct) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (1, $ 1 $)) {
    line((x, 3pt), (x, -3pt))
    content((), anchor: "above", ct)
  }

  for (y, ct) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (0.5, $ 1/2 $), (1, $ 1 $)) {
    line((3pt, y), (-3pt, y))
    content((), anchor: "right", ct)
  }

  // Draw the green angle
  cetz.angle.angle((0,0), (1,0), (1, calc.tan(30deg)),
    label: text(green, [#sym.alpha]))

  line((0,0), (1, calc.tan(30deg)))

  set-style(stroke: (thickness: 1.2pt))

  line((30deg, 1), ((), "|-", (0,0)), stroke: (paint: red), name: "sin")
  content("sin", text(red)[$ sin alpha $], anchor: "right")
  line("sin.end", (0,0), stroke: (paint: blue), name: "cos")
  content("cos", text(blue)[$ cos alpha $], anchor: "top")
  line((1, 0), (1, calc.tan(30deg)), name: "tan", stroke: (paint: orange))
  content("tan", $ text(#orange, tan alpha) = text(#red, sin alpha) / text(#blue, cos alpha) $, anchor: "left")
})

= 2. Code

#import "@preview/codelst:1.0.0": sourcecode

#sourcecode[```hs

main :: IO
main = putStreLn "Hello world!"
```]

= 3. Таблицы истинности

#import "@preview/truthfy:0.2.0": generate-table, generate-empty

#generate-table($A and B$, $B or A$, $A => B$, $(A => B) <=> A$, $ A xor B$)

#generate-table($p => q$, $not p => (q => p)$, $p or q$, $not p or q$)

= 4. gviz

#import "@preview/gviz:0.1.0": *

#show raw.where(lang: "dot-render"): it => render-image(it.text)

```dot-render
digraph mygraph {
  node [shape=box];
  A -> B;
  B -> C;
  B -> D;
  C -> E;
  D -> E;
  E -> F;
  A -> F [label="one"];
  A -> F [label="two"];
  A -> F [label="three"];
  A -> F [label="four"];
  A -> F [label="five"];
}```

#let my-graph = "digraph {A -> B}"

= 5. easy-pinyin

#set text(font: "Noto Sans CJK SC")

#import "@preview/easy-pinyin:0.1.0": pinyin, zhuyin

汉（#pinyin[ha4n]）语（#pinyin[yu3]）拼（#pinyin[pi1n]）音（#pinyin[yi1n]）。

#let per-char(f) = [#f(delimiter: "|")[汉|语|拼|音][ha4n|yu3|pi1n|yi1n]]
#let per-word(f) = [#f(delimiter: "|")[汉语|拼音][ha4nyu3|pi1nyi1n]]
#let all-in-one(f) = [#f[汉语拼音][ha4nyu3pi1nyi1n]]
#let example(f) = (per-char(f), per-word(f), all-in-one(f))

// argument of scale and spacing
#let arguments = ((0.5, none), (0.7, none), (0.7, 0.1em), (1.0, none), (1.0, 0.2em))

#table(
  columns: (auto, auto, auto, auto),
  align: (center + horizon, center, center, center),
  [arguments], [per char], [per word], [all in one],
  ..arguments.map(((scale, spacing)) => (
    text(size: 0.7em)[#scale,#repr(spacing)], 
    ..example(zhuyin.with(scale: scale, spacing: spacing))
  )).flatten(),
)


= 6. IMBA

#import "@preview/bob-draw:0.1.0": *
#show raw.where(lang: "bob"): it => render(it)

#let svg = bob2svg("<--->")
#render("<--->")
#render(
    ```
      0       3  
       *-------* 
    1 /|    2 /| 
     *-+-----* | 
     | |4    | |7
     | *-----|-*
     |/      |/
     *-------*
    5       6
    ```,
    width: 25%,
)

```bob
"cats:"
 /\_/\  /\_/\  /\_/\  /\_/\ 
( o.o )( o.o )( o.o )( o.o )
```


```bob
 /\_/\  /\_/\  /\_/\  /\_/\ 
( o.o )( o.o )( o.o )( o.o )
```

= 7. Collout

#import "@preview/babble-bubbles:0.1.0": *

// #info[This is information]

// #success[I'm making a note here: huge success]

// #check[This is checked!]

// #warning[First warning...]

// #note[My incredibly useful note]

// #question[Question?]

// #example[An example make things interesting]

// #quote[To be or not to be]

= 8. math



$
a &=b & quad c&=d \
e &=f & g&=h
$

= 9. 