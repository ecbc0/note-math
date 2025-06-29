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

#let div-frame(content, attrs: (:), tag: "div") = html.elem(tag, html.frame(content), attrs: attrs)
#let span-frame = div-frame.with(tag: "span")
#let p-frame = div-frame.with(tag: "p")

#let style(body) = {
  html.elem("style")[
    // prefer external css ...
    #```CSS
    .indent {
    border-left: 1px solid #94828233;
    padding-left: 1em
    }  a:link {
    color: #008690;
    text-decoration: underline
    }
    ::selection {
      color: #c83900;
      background: inheritance
    }
    code, pre {
      color: #2f00ff;
      font-size: 1em
    }
    strong {
      color: #2f00ff
    }
    em {
      color: #d10000
    }
    ol, ul {
      padding-left: 0.7em;
      padding-bottom: 0em;
      padding-top: 0em;
    }
    ol ::marker, ul ::marker {
      color: #e90000
    }
    .chapter li.part-title {
      color: #cf9f00
    }

    .coal {
      --bg: hsl(0, 0%, 0%);
      --fg: #0058b1;

      --sidebar-bg: #000000;
      --sidebar-fg: #0058b1;
      --sidebar-non-existant: #505254;
      --sidebar-active: #2b8900;
      --sidebar-spacer: #393939;

      --scrollbar: var(--sidebar-fg);

      --icons: #43484d;
      --icons-hover: #b3c0cc;

      --links: #008690;

      --inline-code-color: #c5c8c6;

      --theme-popup-bg: #000000;
      --theme-popup-border: #43484d;
      --theme-hover: #1f2124;

      --quote-bg: hsl(0, 0%, 0%);
      --quote-border: hsl(234, 21%, 23%);

      --table-border-color: hsl(200, 7%, 13%);
      --table-header-bg: hsl(0, 0%, 0%);
      --table-alternate-bg: hsl(0, 0%, 0%);

      --searchbar-border-color: #aaa;
      --searchbar-bg: #000000;
      --searchbar-fg: #2f00ff;
      --searchbar-shadow-color: #aaa;
      --searchresults-header-fg: #666;
      --searchresults-border-color: #98a3ad;
      --searchresults-li-bg: #000000;
      --search-mark-bg: #355c7d;

      --color-scheme: dark;
    }

    .chapter li a {
      color: #008690;
      text-decoration: underline;
    }
    ```.text
  ]
  show math.equation: set text(
    font: "noto sans math",
    fill: rgb("#2b8900")
  )

  show math.equation: math.display

  show math.equation.where(block: true): it => p-frame(attrs: ("class": "block-equation"), it)

  show math.equation.where(block: false): it => span-frame(attrs: (class: "inline-equation"), it)

  show stack: it => {
    html.elem("div", attrs: (class: "stack"), it.children.join(none))
  }

  body
}