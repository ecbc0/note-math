#import "style-html.typ": *
#import "color-symbol.typ": *
#import "math-var-html.typ": *
#import "function-html.typ": *
#import "link-setting.typ": *
#import "@local/mathyml:0.1.0"
#import mathyml: to-mathml
#import mathyml.prelude: *

#let module(body) = {
  show: style // can be deleted (or comment out)
  // show: color-symbol // can be deleted
  show: link-setting // until support link to label in workspace
  show math.equation: to-mathml


  body
}

#show: module

to delete color, regex replace in workspace `, fill: (rgb\([\w|#|"]+?\)|[\w]+?)`. _warning_: you may neeed to backup first

for html
- `(#link\(<.+?>\)\[[^\]]*\])` => `#raw("$1")` // html export not support link
- `c-bf\((.+?), *"#.+?"\)` => `c-bf($1)` // mathyml
- `image\("([^\)]*)", *width: *([^\)]*)\)` => `html.elem("img", attrs: (src: "$1", width: "$2"))`
- `image\("([^\)]*)"\)` => `html.elem("img", attrs: (src: "$1"))`
- `#stack\( dir: ltr,` => ` `
- `%")),
    #html` => `%"))
    #html`
- `%"))
  )` => `&"))
  `
- `& *(<==>|==>|<-->|<=|>=|>=|:=|=:|=|\+|-->|->|-|<|>|⟶|↠|↪|⇝|⟿|∼|≃|!=|≠|in |∈|∉|in.not|subset.neq|subset|⊂|⊊|supset.neq|supset|⊃|⊋|quad|≈|"or"|⋅)&` => `&$1`
- `& *(<==>|==>|<-->|<=|>=|>=|:=|=:|=|\+|-->|->|-|<|>|⟶|↠|↪|⇝|⟿|∼|≃|!=|≠|in |∈|∉|in.not|subset.neq|subset|⊂|⊊|supset.neq|supset|⊃|⊋|quad|≈|"or"|⋅)` => `&$1&` 
