// #import "@preview/shiroa:0.2.3": *

// from typsite
#let to-string(content) = {
  if type(content) == none {
    return ""
  }
  if type(content) == bool {
    return bool-to-str(content)
  }
  if type(content) == str {
    return content
  }
  if content.has("text") {
    if type(content.text) == str {
      content.text
    } else {
      to-string(content.text)
    }
  } else if content.has("children") {
    content.children.map(to-string).join("")
  } else if content.has("body") {
    to-string(content.body)
  } else if content == [ ] {
    ""
  } else {
    "not-supported"
  }
}

#let image(path, width: auto) = html.elem("img", attrs: (src: str(path), width: to-string([#width])))

#let style(body) = {
  html.elem("style")[
    // prefer external css ...
    #```CSS
    .indent {
      border-left: 1px solid #9482823f;
      padding-left: 1em
    }
    a:link {
      text-decoration: underline
    }
    ::selection {
      background: inheritance
    }
    code, pre {
      font-size: 0.9em;
      font-weight: 500
    }
    ol, ul {
      padding-left: 0.7em;
      padding-bottom: 0em;
      padding-top: 0em;
    }
    body {
      font-family: 'Hanken Grotesk','Sarasa Gothic SC'
    }
    ```.text
  ]

  show math.equation: set text(
    font: "noto sans math",
    // fill: rgb("#2b8900"),
    size: 12pt,
  )

  show math.equation: math.display

  show stack: it => {
    html.elem("div", attrs: (class: "stack"), it.children.join(none))
  }

  set text(
    font: (
      "Hanken Grotesk",
      "Sarasa Gothic SC"
    ),
    // fill: rgb("#0058b1"),
    cjk-latin-spacing: auto,
    kerning: true
  )

  set underline(offset: .1em, stroke: .05em, evade: false)

  // show strong: set text(fill: rgb("#2f00ff"))

  show emph: set text(
    // fill: rgb("#d10000"),
    /* font: (

    ), */
  )

  show raw: set text(
    // fill: rgb("#6e6e6e"),
    size: 12.5pt,
    font: "Source Code Pro",
    weight: "medium"
  )

  set table(
    // stroke: rgb("#1c1c1c"),
    // align: center
  )

  // show heading: set text(fill: rgb("#b30042"))

  set math.limits(inline: true)

  show math.equation.where(block: true): set align(left)

  // show link: set text(fill: rgb("#008690"))

  show link: underline

  // show ref: set text(fill: rgb("#008690"))

  // set list(marker: [#text("‣")])

  set enum(full: true)

  body
}