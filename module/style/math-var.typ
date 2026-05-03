#import "style.typ": *
#show: style

// sample color, see `.vscode/color.code-snippets`

#text("8534ff purple", rgb("#8534ff"))\
#text("2f00ff purple blue", rgb("#2f00ff"))\
#text("0056e1 blue", rgb("#0056e1"))\
#text("006dea blue bright", rgb("#006dea"))\
#text("008690 aqua", rgb("#008690"))\
#text("34a500 green", rgb("#34a500"))\
#text("5ea100 green yellow", rgb("#5ea100"))\
#text("c3b900 yellow", rgb("#c3b900"))\
#text("a59d00 yellow dark", rgb("#a59d00")) \
#text("cf9f00 gold", rgb("#cf9f00"))\
#text("d25b00 orange", rgb("#d25b00"))\
#text("e90000 red", rgb("#e90000"))\
#text("d10000 red dark", rgb("#d10000"))\
#text("c10047 pink", rgb("#c10047"))\
#text("676767 gray", rgb("#676767"))\
#text("919191 silver", rgb("#919191"))

// mathbb

#let ℝℙ = $ℝ ℙ$
#let ℂℙ = $ℂ ℙ$
#let ℍℙ = $ℍ ℙ$
#let 𝕆ℙ = $𝕆 ℙ$
#let 𝕂ℙ = $𝕂 ℙ$

#let ℍ𝕪 = $ℍ 𝕪$

// mathbf

#let bf(x) = $bold(upright(#x))$
#let c_bf(x, color) = text(bf(x), color) // prefix "c" represent "color"

#let i = c_bf("i", rgb("#0056e1")) // Im(ℂ) i
#let i-split = c_bf("i", rgb("#c10047"))

/*
  It's tedious

  hope there is something like: bind attribute A to a collection of math variable (x1, x2, …), then set CSS to attribute A (rendered color = …)

  or use code generator i.e. input an array of string, out put a new array of string
*/

// differential

#let c_diff(x) = text(x, rgb("#d25b00"))

#let d = c_diff($d$)
#let D = c_diff($D$)

#let grad = c_diff("grad")
#let curl = c_diff("curl")
#let div = c_diff("div")

#let spin-d = math.cancel($∂$)
#let spin-connection = math.cancel($∇$, angle: 35deg)
#let spin(p) = math.cancel(c_diff($#p$), angle: 35deg)

// classical groups

#let c_Lie_group(x) = text(x, rgb("#cf9f00"))

#let O = c_Lie_group("O")
#let SO = c_Lie_group("SO")
#let U = c_Lie_group("U")
#let SU = c_Lie_group("SU")
#let Sp = c_Lie_group("Sp")
#let SL = c_Lie_group("SL")
#let GL = c_Lie_group("GL")
#let Spin = c_Lie_group("Spin")

#let c_Lie_algebra(x) = math.sans(text(x, rgb("#d25b00")))

#let so = c_Lie_algebra("so")
#let su = c_Lie_algebra("su")
#let sp = c_Lie_algebra("sp")
#let sl = c_Lie_algebra("sl")
#let gl = c_Lie_algebra("gl")

#let u = c_Lie_algebra("u") // δ unitary

// function

#let c_fn(x) = text(x, rgb("#cf9f00"))

#let Re = c_fn("Re")
#let Im = c_fn("Im")

#let Lin = c_fn("Lin")
#let span = c_fn("span")

#let det = c_fn("det")
#let tr = c_fn("tr")
#let dim = c_fn("dim")
#let codim = c_fn("codim")

#let Aut = c_fn("Aut")
#let coker = c_fn("coker")
#let ker = c_fn("ker")
#let im = c_fn("im")

#let sign = c_fn("sign")

#let Subset = c_fn("Subset")
#let Set = c_fn("Set")
#let Type = c_fn("Type")

#let Vol = c_fn("Vol")

#let sin = c_fn("sin")
#let cos = c_fn("cos")
#let log = c_fn("log")
#let exp = c_fn("exp")
#let arg = c_fn("arg")

#let sinh = c_fn("sinh")
#let cosh = c_fn("cosh")
#let tanh = c_fn("tanh")
#let exph = c_fn("exph")
#let logh = c_fn("logh")
#let argh = c_fn("argh")

#let bra(x) = $lr(\⟨ #x |)$
#let ket(x) = $lr(| #x ⟩)$ // for , use escape \, *Example* not use $ket(p , #i)$, use $ket(p \, #i)$

// other

#let cvt-prod = rotate(90deg, $⧀$)
#let lim = math.limits(text("lim", rgb("#0056e1")))

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