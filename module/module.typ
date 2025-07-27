/* 
  default no style
  
  to use my style settings, cancel comment out, i.e. delete the leading `//`. for example 
  change

  `// #import "style.typ": *`

  to 

  `#import "style.typ": *`

  for consistence, used with my vscode `.vscode/.settings.json` (rename `.settings.json` to `settings.json`) based on vscode theme Solarized Dark
*/

// #import "style.typ": * 
// #import "color-symbol.typ": * 
#import "math-var.typ": * 
// #import "math-var-color.typ": * 
#import "function.typ": *
#import "link-setting.typ": * 

#let module(body) = {
  // show: style 
  // show: color-symbol 
  show: link-setting // until support link to label in workspace

  body
}

#show: module

to delete all remaining color of symbol, regex replace in workspace `,[ ]*fill:[ ]*(rgb\((?:[\w|#|"]+?\)|[\w]+?))`