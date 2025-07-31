#import "html/style.typ": * 
// #import "color-symbol.typ": * 
#import "math-var.typ": * 
#import "html/function.typ": *
#import "html/link-setting.typ": *
#import "/book.typ": book-page

#let module(body) = {
  show: style 
  // show: color-symbol 
  show: link-setting // until support link to label in workspace
  show: book-page

  body
}

#show: module

to delete all remaining color of symbol, regex replace in workspace `,[ ]*fill:[ ]*(rgb\((?:(?:[\w|#|"]+?\)|[\w]+?)))`

HTML ver. is built via #link("https://github.com/Myriad-Dreamin/shiroa")[shiroa] (modified from e7684c1)