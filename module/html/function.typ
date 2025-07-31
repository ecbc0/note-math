#let tag(s) = [#str(" ")#strong("[")#html.elem("span", attrs:(class: "typst-tag"))[#s]#strong("]")#label(s)#str(" ")] 

#let indent(x) = html.elem("div", attrs: (
  class: "indent",
))[#x] // note: typst not support export variable defined in block to outsite, this is somehow inconvenient. https://github.com/typst/typst/issues/6299
