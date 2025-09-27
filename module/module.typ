/*
  default no style

  to use my style settings, in `style.typ`, set `enable-style` to `true`

  for consistence, used with my vscode `.vscode/.settings.json` (rename `.settings.json` to `settings.json`) based on vscode theme Solarized Dark
*/

#import "style.typ": *
#import "color-symbol.typ": *
#import "math-var.typ": *
#import "function.typ": *
#import "link-setting.typ": *

#let module(body) = {
  show: body => if enable-style {
    show: style
    show: color-symbol
    body
  } else {
    body
  }

  show: link-setting // until support link to label in workspace

  body
}