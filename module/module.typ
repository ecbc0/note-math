#import "style-html.typ": * 
#import "color-symbol.typ": * 
#import "math-var.typ": * 
#import "function-html.typ": *
#import "link-setting-html.typ": * 

#let module(body) = {
  show: style // can be deleted (or comment out)
  show: color-symbol // can be deleted
  show: link-setting // until support link to label in workspace

  body
}

#show: module

to delete color, regex replace in workspace `, fill: (rgb\([\w|#|"]+?\)|[\w]+?)`. _warning_: you may neeed to backup first

you can delete my `.vscode/setting.json`
