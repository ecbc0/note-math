#import "style.typ": *
#show: style

#let tag(s) = [#text("[" + s + "]", rgb("#c10047"))#label(s)]

#let indent(x) = block(
  stroke: (left: rgb("#9482823f") + 0.6pt),
  inset: (left: 1em),
  x,
) // note: typst not support export variable defined in block/grid to outsite, this is somehow inconvenient. https://github.com/typst/typst/issues/6299
