//#import "style.typ": *
//#show: style

// sample color, see .vscode/color.code-snippets

#text("8534ff purple")\
#text("2f00ff purple-blue")\
#text("0056e1 blue")\
#text("006dea blue-bright")\
#text("008690 aqua")\
#text("34a500 green")\
#text("5ea100 green-yellow")\
#text("c3b900 yellow")\
#text("a59d00 yellow-dark") \
#text("cf9f00 gold")\
#text("d25b00 orange")\
#text("e90000 red")\
#text("d10000 red-dark")\
#text("c10047 pink")\
#text("676767 gray")\
#text("919191 silver")

#let color-symbol(body) = {
  // colorized symbol, see .vscode/symbol.code-snippets

  // bracket

  show regex("∀|∃"): it => text(it)

  show regex("\(|\)|\[|\]|\{|\}|⟨|⟩"): it => text(it)

  show "|": it => text($|$)
  show "‖": it => text($‖$)

  // logic

  show regex("∧|∨|¬"): it => text(
    it,
    fill: rgb("#0056e1"),
  )

  show regex("⇒|⇐|⇔|⟹|⟸|⟺"): it => text(it)

  // ⇒ : =>. ⟹ : ==>. warning: no shothand. <= is ⩽

  /*
      ⇒ : =>
      ⟹ : ==>
      warning: ⇐ have no shothand. <= is ⩽
  */

  show regex("=|≠|≡|∈|∉|⊂|⊃|⊄|⊊|⊋"): it => text(it)

  show "∖": it => text(it)

  show "∅": it => text(it)

  show regex(":|≕|≔"): it => text(it)
  show ",": it => text(it)

  show "≈": it => text(it)

  show regex("∪|∩|⋃|⋂|⊔|⨆"): it => text(it)

  show regex(">|<"): it => text(it)
  show "≥": it => text(math.gt.slant) // >=
  show "≤": it => text(math.lt.slant) // <=

  // mathbb

  show regex("ℝ|ℂ|ℍ|𝕆|𝕂|ℕ|ℤ|ℚ|𝕊|ℙ|𝔹|𝕪"): it => text(it)

  show "𝟙": it => text(it)

  // differential

  show regex("∂|∇|∆"): it => text(it) // ∇ : nabla, connection. ∆ : Laplacian

  show "∫": it => text(it)

  show regex("∑|∏"): it => text(it)

  // arrow

  show regex("→|⟶|←|⟵|⇝|⇜|⟿|⬳|↪|↠|∼|≃|↔|⟷|⇆"): it => text(it)

  // dot

  show ".": it => text(it)
  show "·": it => text(it) // dot.c, center dot

  show "…": it => $#h(0.05em) . #h(-0.07em) . #h(-0.07em) . #h(0.05em)$

  show "⋯": it => $#h(0.1em) · #h(-0.07em) · #h(-0.07em) · #h(0.1em)$

  show "⋱": it => text(it)

  show "⋮": it => text(it)

  // operator

  show regex("×|⨉|⋊|\+|−|⋅|±|∓|∘|⊗|⊙|⨂|⨀|⊕|⨁|⧀"): it => text(it)

  show regex("⋀|⋁"): it => text(it)

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

  show regex("∗|′|″|⊺|†|‡|∁|◊|⟂|⊤|⋆|♭|♯"): it => text(it)

  /*
    ⊺ : transpose
    † : adjoint
    ∁ : complement
    ◊ : parity
    ⟂ : perpendicular, orthogonal_complement
  */

  show "♭": it => scale(it,140%) // noto sans mans problem? 

  show "Δ": it => text(it)

  body
}

