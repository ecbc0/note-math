/*
  until typst support link to label in workspace

  or use vscode search/replace in workspace `crtl + shift + f/h` to search label

  or wait for tinymist to support search label
*/
#let link-setting(body) = {
  show link: it => {
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

  show ref: it => {
    if query(it.target).len() == 0 {
      return underline(str(it.target))
    } else { return it }
  }

  body
}
