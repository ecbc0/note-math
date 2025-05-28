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
    }
    it
  }

  show ref: it => {
    if query(it.target).len() == 0 {
      return underline(str(it.target))
    }
    it
  }

  body
}
