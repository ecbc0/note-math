#import "style.typ": * 
#import "color-symbol.typ": * 
#import "math-var.typ": * 
#import "function.typ": *
#import "link-setting.typ": * 

#let module(body) = {
  show: style // can be deleted (or comment out)
  show: color-symbol // can be deleted
  show: link-setting // until support link to label in workspace

  body
}

#show: module

to delete color, regex replace in workspace `, fill: (rgb\([\w|#|"]+?\)|[\w]+?)`. _warning_: you may neeed to backup first

you can clear my `.vscode/setting.json` but just leave `"tinymist.rootPath": "path-of-folder-note-math-in-your-system"`
