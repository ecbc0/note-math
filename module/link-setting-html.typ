/*
  until typst support link to label in workspace

  or use vscode search/replace in workspace `crtl + shift + f/h` to search label

  or wait for tinymist to support search label
*/

#import "@preview/shiroa:0.2.3": *

#let link-setting(body) = {
  show link: it => {
    context if shiroa-sys-target() == "paged" {
      if type(it.dest) == label {
        if query(it.dest).len() == 0 {
          if it.body == [] {
            return underline(str(it.dest))
          } else {
            return underline(it.body)
          }
        }
        if it.body == [] {
          return link(it.dest)[#str(it.dest)]
        }
      } else { return it }
    }

    context if shiroa-sys-target() == "html" {
      if type(it.dest) == label {
        if it.body == [] {
          return html.elem("a", attrs: (href: "#" + str(it.dest)), str(it.dest))
        } else {
          return html.elem("a", attrs: (href: "#" + str(it.dest)), it.body)
        }
      } else { return it } 
    }
    // how to make a javascript to make it click the underlined text to automatically copy tag name, open mdbook search bar, and input tag name ...
  }

  show ref: it => {
    context if shiroa-sys-target() == "html" {
      return html.elem("a", attrs: (href: "#" + str(it.target)), str(it.target))
    }

    context if shiroa-sys-target() == "paged" {
      if query(it.target).len() == 0 {
        return underline(str(it.target))
      } else { return it }
    }
  }

  body
}
