#import "style.typ": *
#show: style

#let tag(s) = [#text("<" + s + ">", fill: rgb("#c10047"))#label(s)]

#let dmat(..x) = math.mat(..x.pos().map(y => y.map(math.display)), ..x.named())

#let dcases(..args) = math.cases(..args.pos().map(math.display), ..args.named())

#let indent(x) = block(
  stroke: (left: rgb("#94828233") + 0.6pt), inset: (left: 1em), x
) // note: typst not support export variable defined in block to outsite, this is somehow inconvenient. https://github.com/typst/typst/issues/6299
