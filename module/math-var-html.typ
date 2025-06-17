// see .vscode/color.code-snippets

// mathbb

#let ℝℙ = $ℝ ℙ$
#let ℂℙ = $ℂ ℙ$
#let ℍℙ = $ℍ ℙ$
#let 𝕆ℙ = $𝕆 ℙ$
#let 𝕂ℙ = $𝕂 ℙ$

#let ℍ𝕪 = $ℍ 𝕪$

// mathbf

#let bf(x) = $#x$ // mathyml
#let c-bf(x) = text(bf(x)) // prefix "c" represent "color"

#let i = $"i"$ // Im(ℂ) i
#let i-split = $"i"_"split"$

/*
  It's tedious

  hope there is something like: bind attribute A to a collection of math variable (x1, x2, …), then set CSS to attribute A (rendered color = …),

  or use code generator i.e. input an array of string, out put a new array of string
*/

// differential

#let c-diff(x) = text(x)

#let d = c-diff($d$)
#let D = c-diff($D$)

#let grad = c-diff("grad")
#let curl = c-diff("curl")
#let div = c-diff("div")

#let spin-d = $∂_"spin"$ // mathyml not support cancel
#let spin-connection = $∇_"spin"$ // mathyml
#let spin(p) = $#p _"spin"$ // mathyml

#let L = c-diff($L$)

// classical groups

#let c-Lie-group(x) = text(x)

#let O = c-Lie-group("O")
#let SO = c-Lie-group("SO")
#let U = c-Lie-group("U")
#let SU = c-Lie-group("SU")
#let Sp = c-Lie-group("Sp")
#let SL = c-Lie-group("SL")
#let GL = c-Lie-group("GL")

#let c-Lie-algebra(x) = text(x) // mathyml

#let so = c-Lie-algebra("so")
#let su = c-Lie-algebra("su")
#let sp = c-Lie-algebra("sp")
#let sl = c-Lie-algebra("sl")
#let gl = c-Lie-algebra("gl")

#let u = c-Lie-algebra("u") // δ unitary

// function

#let c-fn(x) = text(x)

#let Re = c-fn("Re")
#let Im = c-fn("Im")

#let Lin = c-fn("Lin")
#let span = c-fn("span")

#let det = c-fn("det")
#let tr = c-fn("tr")
#let dim = c-fn("dim")
#let codim = c-fn("codim")

#let Aut = c-fn("Aut")
#let coker = c-fn("coker")
#let ker = c-fn("ker")
#let im = c-fn("im")

#let sign = c-fn("sign")

#let Subset = c-fn("Subset")
#let Set = c-fn("Set")
#let Type = c-fn("Type")

#let Vol = c-fn("Vol")

#let sin = c-fn("sin")
#let cos = c-fn("cos")
#let log = c-fn("log")
#let exp = c-fn("exp")
#let arg = c-fn("arg")

#let sinh = c-fn("sinh")
#let cosh = c-fn("cosh")
#let tanh = c-fn("tanh")
#let exph = c-fn("exph")
#let logh = c-fn("logh")
#let argh = c-fn("argh")

#let bra(x) = $lr(\⟨ #x |)$
#let ket(x) = $lr(| #x ⟩)$ // for , use escape \, *Example* not use $ket(p , #i)$, use $ket(p \, #i)$

// other

#let cvt-prod = $⧀$ // mathyml not support rotate #let cvt-prod = rotate(90deg, $⧀$)
#let lim = math.limits(text("lim"))

#let And = math.and.big
#let Or = math.or.big

#let vel(x) = math.dot(x)
#let acc(x) = math.dot.double(x)

#let closed(x) = math.macron(x)
#let Closed(x) = math.overline(x)

#let dmat = math.mat // mathyml

#let dcases = math.cases // mathyml