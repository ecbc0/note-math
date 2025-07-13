#let style(body) = {
  set page(
    fill: black,
    margin: (x: 1.5em, y: 1em),
  )

  set text(
    font: (
      "Hanken Grotesk",
      "Sarasa Gothic SC"
    ),
    fill: rgb("#0058b1"),
    size: 14pt,
    cjk-latin-spacing: auto,
    kerning: true
  )

  set underline(offset: .1em, stroke: .05em, evade: false)

  show strong: set text(fill: rgb("#2f00ff"))

  show emph: set text(
    fill: rgb("#d10000"),
    /* font: (
      
    ), */
  )

  show raw: set text(
    fill: rgb("#6e6e6e"),
    size: 12.5pt,
    font: "Source Code Pro",
    weight: "medium"
  )

  set table(
    stroke: rgb("#1c1c1c"),
    // align: center
  )

  show heading: set text(fill: rgb("#b30042"))

  show math.equation: set text(
    font: "noto sans math",
    fill: rgb("#2b8900"),
    size: 15pt,
  )

  set math.limits(inline: true)

  show math.equation: math.display

  show math.equation.where(block: true): set align(left)

  show link: set text(fill: rgb("#008690"))

  show link: underline

  show ref: set text(fill: rgb("#008690"))

  set list(marker: [#text("‣", fill: rgb("#e90000"))])

  set enum(full: true)

  //set page(margin: (right: 3em))
  //set par.line(numbering: n => text(rgb("#2e2e2e"))[#n],number-margin: right)

  body
}

#show: style
