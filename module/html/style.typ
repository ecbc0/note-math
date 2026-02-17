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

#let style-html(body) = { // this may need to be moved to templates/page.typ (see the line of comment "Put your custom CSS here" in that file) in the newer version of shiroa. otherwise, error
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

// from https://forum.typst.app/t/vertial-alignment-of-inline-math-in-html-export/7647

#let math-bot-label = label("_math_bot_")
#let math-ref-bot-label = label("_math_ref_bot_")

#let y-shifts = state("y-shifts", ())
#let inline-math-count = counter("inline-math-count")

#let shift-inline-math(body) = context {
  let formula-cnt = inline-math-count.get().first()
  inline-math-count.step()
  let begin-loc = here()
  // The wrapper ensures that the viewbox of rendered SVG math matches its bounding box.
  let wrapper = text.with(top-edge: "bounds", bottom-edge: "bounds")
  // For debugging: draw red box around the wrapper
  // let wrapper = it => box(wrapper(it), stroke: red)
  html.elem(
    "span",
    html.frame(wrapper(
      // Add invisible elements below the math body to measure its bottom position.
      math.attach(math.limits(body.body), b: pad([#none#math-bot-label], -1em))
        + sym.wj
        + math.attach(math.limits([#none]), b: pad([#none#math-ref-bot-label], -1em)),
    )),
    attrs: (
      // Rendered SVG defines its width & height in "em" units,
      // so we also convert y-shift relative to text size in "em" units.
      style: "vertical-align: -"
        + str(calc.round(y-shifts.final().at(formula-cnt, default: 0pt) / text.size, digits: 2))
        + "em;",
      class: "typst-inline-math",
    ),
  )
}

#let html-export-template(doc) = context {
  if target() != "html" {
    return doc
  }
  show math.equation.where(block: false): it => {
    // The target() function can be used to apply html.frame selectively only
    // when the export target is HTML.
    // When html.frame is applied to a figure, the target() for all the elements
    // inside will be set to "paged" instead.
    // https://github.com/typst/typst/issues/721#issuecomment-3064895139
    if target() == "html" {
      shift-inline-math(it)
    } else {
      it
    }
  }
  show math.equation.where(block: true): it => {
    html.elem(
      "div",
      html.frame(it),
      attrs: (class: "typst-display-math"),
    )
  }
  // Wrap code blocks in a div for styling
  show raw.where(block: true): it => {
    html.elem(
      "div",
      it,
      attrs: (class: "typst-code-block"),
    )
  }
  doc
  // After the whole document, calculate the y-shift for every inline math.
  // This reduces the number of `query` calls, improving performance.
  context {
    let math-bots = query(math-bot-label)
    let math-ref-bots = query(math-ref-bot-label)
    if math-bots.len() == inline-math-count.get().first() {
      assert(math-bots.len() == math-ref-bots.len())
      let new-y-shifts = math-bots
        .zip(math-ref-bots, exact: true)
        .map(pair => {
          let (math-bot, math-ref-bot) = pair
          let y1 = math-bot.location().position().y
          let y2 = math-ref-bot.location().position().y
          y1 - y2
        })
      y-shifts.update(old => new-y-shifts)
    }
  }
}