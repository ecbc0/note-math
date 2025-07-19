#import "style-html.typ": * 
// #import "color-symbol.typ": * 
#import "math-var.typ": * 
#import "function-html.typ": *
#import "link-setting-html.typ": *
#import "/book.typ": book-page

#let module(body) = {
  show: style // can be deleted (or comment out)
  // show: color-symbol // can be deleted
  show: link-setting // until support link to label in workspace
  show: book-page

  body
}

#show: module

to delete color, regex replace in workspace `, fill: (rgb\((?:[\w|#|"]+?\)|[\w]+?))`. _warning_: you may neeed to backup first

you can delete my `.vscode/setting.json`

HTML ver. is built via #link("https://github.com/Myriad-Dreamin/shiroa")[shiroa] (modified from e7684c1)