#let tag(s) = [#str(" ") #raw(s)\_(#emph("tag")) #str(" ") #label(s)]

#let indent(x) = html.elem("div", attrs: (
  class: "indent",
))[#x] // note: typst not support export variable defined in block to outsite, this is somehow inconvenient. https://github.com/typst/typst/issues/6299

#html.elem("style")[
  #```CSS
  .indent {
  border-left: 1px solid #94828233;
  padding-left: 1em
  }
  ```.text
]
