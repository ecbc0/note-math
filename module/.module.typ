#import "style/style.typ": *
#import "style/color-symbol.typ": *
#import "style/math-var.typ": *
#import "style/function.typ": *
#import "style/link-setting.typ": *

#let module(body) = {
  show: style
  show: color-symbol
  show: link-setting // until support link to label in workspace

  body
}