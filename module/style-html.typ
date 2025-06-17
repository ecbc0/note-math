#let style(body) = {
  html.elem("style")[
    /*
      #```CSS
      a:link {
        color: #008690;
        text-decoration: underline
      }
      ::selection {
        color: #c83900;
        background: inheritance
      }
      math {
        color: #2b8900;
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
        padding: 0.7em;
      }
      ol ::marker, ul ::marker {
        color: #e90000
      }
      .chapter li.part-title {
        color: #cf9f00
      }
      ```.text
    */
    #```CSS
    .indent {
    border-left: 1px solid #94828233;
    padding-left: 1em
    }
    ```.text
  ]

  body
}

