#import "template.typ": *

#show: project.with(
  title: "math-typst",
  authors: (
    "Blezz",
  ),
)

// Документ

#outline(indent: 12pt)

= Справочные материалы

$
sin^2 alpha + cos^2 alpha = 1 \
sin 2alpha = 2 sin alpha dot cos alpha \
cos 2 alpha = cos^2 alpha - sin^2 alpha \
sin (alpha + beta) = sin alpha dot cos beta + cos alpha dot sin beta \
cos (alpha + beta) = cos alpha dot cos beta - sin alpha dot sin beta
$


#include "/Варианты/Демо вариант 2024.typ"