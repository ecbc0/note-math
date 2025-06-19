#let style(body) = {
  html.elem("style")[
    // prefer external css ...
    #```CSS
    .indent {
    border-left: 1px solid #94828233;
    padding-left: 1em
    }
    ```.text
  ]

  body
}

