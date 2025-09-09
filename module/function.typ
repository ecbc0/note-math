#import "style.typ": *
#show: style

#import "math-var.typ": enable-style, o-color

#let tag(s) = [#o-color("[" + s + "]", rgb("#c10047"))#label(s)]

#let indent-stroke-color = if enable-style {
  rgb("#9482823f")
} else {
  none
}

#let indent(x) = block(
  stroke: (left: indent-stroke-color + 0.6pt),
  inset: (left: 1em),
  x,
) // note: typst not support export variable defined in block/grid to outsite, this is somehow inconvenient. https://github.com/typst/typst/issues/6299
