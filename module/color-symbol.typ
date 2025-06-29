//#import "style.typ": *
//#show: style

// sample color, see .vscode/color.code-snippets

#text("8534ff purple", fill: rgb("#8534ff"))\
#text("2f00ff purple-blue", fill: rgb("#2f00ff"))\
#text("0056e1 blue", fill: rgb("#0056e1"))\
#text("006dea blue-bright", fill: rgb("#006dea"))\
#text("008690 aqua", fill: rgb("#008690"))\
#text("34a500 green", fill: rgb("#34a500"))\
#text("5ea100 green-yellow", fill: rgb("#5ea100"))\
#text("c3b900 yellow", fill: rgb("#c3b900"))\
#text("a59d00 yellow-dark", fill: rgb("#a59d00")) \
#text("cf9f00 gold", fill: rgb("#cf9f00"))\
#text("d25b00 orange", fill: rgb("#d25b00"))\
#text("e90000 red", fill: rgb("#e90000"))\
#text("d10000 red-dark", fill: rgb("#d10000"))\
#text("c10047 pink", fill: rgb("#c10047"))\
#text("676767 gray", fill: rgb("#676767"))\
#text("919191 silver", fill: rgb("#919191"))

#let color-symbol(body) = {
  // colorized symbol, see .vscode/symbol.code-snippets

  // bracket

  show regex("∀|∃"): it => text(it, fill: rgb("#0056e1"))

  show regex("\(|\)|\[|\]|\{|\}|⟨|⟩"): it => text(it, fill: rgb("#2f00ff"))

  show "|": it => text($|$, fill: rgb("#006dea"))
  show "‖": it => text($‖$, fill: rgb("#006dea"))

  // logic

  show regex("∧|∨|¬"): it => text(
    it,
    fill: rgb("#0056e1"),
  )

  show regex("⇒|⇐|⇔|⟹|⟸|⟺"): it => text(it, fill: rgb("#a59d00"))

  // ⇒ : =>. ⟹ : ==>. warning: no shothand. <= is ⩽

  /*
      ⇒ : =>
      ⟹ : ==>
      warning: ⇐ have no shothand. <= is ⩽
  */

  show regex("=|≠|≡|∈|∉|⊂|⊃|⊄|⊊|⊋"): it => text(it, fill: rgb("#8534ff"))

  show "∖": it => text(it, fill: rgb("#0056e1"))

  show "∅": it => text(it, fill: rgb("#cf9f00"))

  show regex(":|≕|≔"): it => text(it, fill: rgb("#cf9f00"))
  show ",": it => text(it, fill: rgb("#2f00ff"))

  show "≈": it => text(it, fill: rgb("#2f00ff"))

  show regex("∪|∩|⋃|⋂|⊔|⨆"): it => text(it, fill: rgb("#0056e1"))

  show regex(">|<"): it => text(it, fill: rgb("#0056e1"))
  show "≥": it => text(math.gt.slant, fill: rgb("#0056e1")) // >=
  show "≤": it => text(math.lt.slant, fill: rgb("#0056e1")) // <=

  // mathbb

  show regex("ℝ|ℂ|ℍ|𝕆|𝕂|ℕ|ℤ|ℚ|𝕊|ℙ|𝔹|𝕪"): it => text(it, fill: rgb("#2f00ff"))

  show "𝟙": it => text(it, fill: rgb("#e90000"))

  // differential

  show regex("∂|∇|∆"): it => text(it, fill: rgb("#d25b00")) // ∇ : nabla, connection. ∆ : Laplacian

  show "∫": it => text(it, fill: rgb("#0056e1"))

  show regex("∑|∏"): it => text(it, fill: rgb("#0056e1"))

  // arrow

  show regex("→|⟶|←|⟵|⇝|⇜|⟿|⬳|↪|↠|∼|≃|↔|⟷|⇆"): it => text(it, fill: rgb("#0056e1"))

  // dot

  show ".": it => text(it, fill: rgb("#e90000"))
  show "·": it => text(it, fill: rgb("#e90000")) // dot.c, center dot

  show "…": it => $#h(0.05em) . #h(-0.07em) . #h(-0.07em) . #h(0.05em)$

  show "⋯": it => $#h(0.1em) · #h(-0.07em) · #h(-0.07em) · #h(0.1em)$

  show "⋱": it => text(it, fill: rgb("#e90000"))

  show "⋮": it => text(it, fill: rgb("#e90000"))

  // operator

  show regex("×|⨉|⋊|\+|−|⋅|±|∓|∘|⊗|⊙|⨂|⨀|⊕|⨁|⧀"): it => text(it, fill: rgb("#0056e1"))

  show regex("⋀|⋁"): it => text(it, fill: rgb("#0056e1"))

  /*
      ⋊ : semi direct product
      ⋅ : dot.op, operator dot
      ∘ : compose
      ⊗ : tensor
      ⊙ : symmetric tensor
      ∧ : alternating tensor
      ⨂ : Tensor
      ⊕ : direct sum, exclusive or
  */

  // function

  show regex("∗|′|″|⊺|†|‡|∁|◊|⟂|⊤|⋆|♭|♯"): it => text(it, fill: rgb("#006dea"))

  show "Δ": it => text(it, fill: rgb("#0056e1"))

  /*
    ⊺ : transpose
    † : adjoint
    ∁ : complement
    ◊ : parity
    ⟂ : perpendicular, orthogonal_complement
  */

  body
}

