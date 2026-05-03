// mathbb

#let ℝℙ = $ℝ ℙ$
#let ℂℙ = $ℂ ℙ$
#let ℍℙ = $ℍ ℙ$
#let 𝕆ℙ = $𝕆 ℙ$
#let 𝕂ℙ = $𝕂 ℙ$

#let ℍ𝕪 = $ℍ 𝕪$

// mathbf

#let bf(x) = $bold(upright(#x))$

#let i = bf("i") // Im(ℂ) i
#let i-split = $bf(i)_"split"$

// differential

#let d = $d$
#let D = $D$

#let grad = "grad"
#let curl = "curl"
#let div = "div"

#let spin-d = math.cancel($∂$)
#let spin-connection = math.cancel($∇$, angle: 35deg)
#let spin(p) = math.cancel($#p$, angle: 35deg)

// classical groups

#let O = "O"
#let SO = "SO"
#let U = "U"
#let SU = "SU"
#let Sp = "Sp"
#let SL = "SL"
#let GL = "GL"
#let Spin = "Spin"

#let c-Lie-algebra(x) = math.sans(x)

#let so = c-Lie-algebra("so")
#let su = c-Lie-algebra("su")
#let sp = c-Lie-algebra("sp")
#let sl = c-Lie-algebra("sl")
#let gl = c-Lie-algebra("gl")

#let u = c-Lie-algebra("u") // δ unitary

// function

#let Re = "Re"
#let Im = "Im"

#let Lin = "Lin"
#let span = "span"

#let codim = "codim"

#let Aut = "Aut"
#let coker = "coker"

#let sign = "sign"

#let Subset = "Subset"
#let Set = "Set"
#let Type = "Type"

#let Vol = "Vol"

#let exph = "exph"
#let logh = "logh"
#let argh = "argh"

#let bra(x) = $lr(\⟨ #x |)$
#let ket(x) = $lr(| #x ⟩)$ // for , use escape \, *Example* not use $ket(p , #i)$, use $ket(p \, #i)$

// other

#let cvt-prod = rotate(90deg, $⧀$)
#let lim = math.limits("lim")

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
