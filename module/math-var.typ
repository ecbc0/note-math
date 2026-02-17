#import "style.typ": *
#show: style

// sample color, see `.vscode/color.code-snippets`

#text("8534ff purple", rgb("#8534ff"))\
#text("2f00ff purple-blue", rgb("#2f00ff"))\
#text("0056e1 blue", rgb("#0056e1"))\
#text("006dea blue-bright", rgb("#006dea"))\
#text("008690 aqua", rgb("#008690"))\
#text("34a500 green", rgb("#34a500"))\
#text("5ea100 green-yellow", rgb("#5ea100"))\
#text("c3b900 yellow", rgb("#c3b900"))\
#text("a59d00 yellow-dark", rgb("#a59d00")) \
#text("cf9f00 gold", rgb("#cf9f00"))\
#text("d25b00 orange", rgb("#d25b00"))\
#text("e90000 red", rgb("#e90000"))\
#text("d10000 red-dark", rgb("#d10000"))\
#text("c10047 pink", rgb("#c10047"))\
#text("676767 gray", rgb("#676767"))\
#text("919191 silver", rgb("#919191"))

/// prefix 'o' mean "optional"
#let o-color(x, color) = if enable-style {
  text(x, color)
} else {
  text(x)
}

// mathbb

#let ℝℙ = $ℝ ℙ$
#let ℂℙ = $ℂ ℙ$
#let ℍℙ = $ℍ ℙ$
#let 𝕆ℙ = $𝕆 ℙ$
#let 𝕂ℙ = $𝕂 ℙ$

#let ℍ𝕪 = $ℍ 𝕪$

// mathbf

#let bf(x) = $bold(upright(#x))$
#let c-bf(x, color) = o-color(bf(x), color) // prefix "c" represent "color"

#let i = c-bf("i", rgb("#0056e1")) // Im(ℂ) i
#let i-split = if enable-style {
  c-bf("i", rgb("#c10047"))
} else {
  $bf(i)_"split"$
}

/*
  It's tedious

  hope there is something like: bind attribute A to a collection of math variable (x1, x2, …), then set CSS to attribute A (rendered color = …)

  or use code generator i.e. input an array of string, out put a new array of string
*/

// differential

#let c-diff(x) = o-color(x, rgb("#d25b00"))

#let d = c-diff($d$)
#let D = c-diff($D$)

#let grad = c-diff("grad")
#let curl = c-diff("curl")
#let div = c-diff("div")

#let spin-d = math.cancel($∂$)
#let spin-connection = math.cancel($∇$, angle: 35deg)
#let spin(p) = math.cancel(c-diff($#p$), angle: 35deg)

// classical groups

#let c-Lie-group(x) = o-color(x, rgb("#cf9f00"))

#let O = c-Lie-group("O")
#let SO = c-Lie-group("SO")
#let U = c-Lie-group("U")
#let SU = c-Lie-group("SU")
#let Sp = c-Lie-group("Sp")
#let SL = c-Lie-group("SL")
#let GL = c-Lie-group("GL")

#let c-Lie-algebra(x) = math.sans(o-color(x, rgb("#d25b00")))

#let so = c-Lie-algebra("so")
#let su = c-Lie-algebra("su")
#let sp = c-Lie-algebra("sp")
#let sl = c-Lie-algebra("sl")
#let gl = c-Lie-algebra("gl")

#let u = c-Lie-algebra("u") // δ unitary

// function

#let c-fn(x) = o-color(x, rgb("#cf9f00"))

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

#let cvt-prod = rotate(90deg, $⧀$)
#let lim = math.limits(o-color("lim", rgb("#0056e1")))

#let And = math.and.big
#let Or = math.or.big

#let vel(x) = math.dot(x)
#let acc(x) = math.dot.double(x)

#let closed(x) = math.macron(x)
#let Closed(x) = math.overline(x)

#let dmat(..x) = math.mat(..x.pos().map(y => y.map(math.display)), ..x.named())

#let dcases(..args) = math.cases(..args.pos().map(math.display), ..args.named())

#let map(domain, codomain, source, target) = $dmat( delim: #none ,
  domain &⟶ codomain ;
  source &⟿ target,
)$