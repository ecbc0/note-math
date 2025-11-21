#import "../module/module.typ": *
#show: module

- logic-topic
#indent[
  - logic
  
    Introducing simple computer programming as prerequisite knowledge for set theory
]
- calculus
#indent[
  - real-number
  #indent[
    - Prove bounded closed net theorem, which will later be used to prove the compactness of bounded closed intervals in $ℝ$
  ]
  - limit-sequence
  #indent[
    - Using multivariable differentiation to find extrema and second derivatives as positive definiteness of quadratic forms to prove the AM-GM inequality

    - Based on the AM-GM inequality, discuss optimal multiplicative decomposition and provide motivation for the natural constant $e$
  ]
  - Euclidean-space
  #indent[
    - Maximal interval decomposition of sets in $ℝ$. Used to prove that a set in $ℝ$ is connected <==> an interval

    - Defining compact using nets. Using Riemann sphere or stereographic projection method to inductively prove that a set in Euclidean $ℝ^n$ is compact <==> bounded and closed

    - Some generalizations of Riemann rearrangement theorem in $ℝ^n$, used to illustrate that the limit definition of series other than absolute convergence cannot be simply given
  ]
  - Minkowski-spaces
  #indent[
    Attempting to define the topology of Minkowski space $ℝ^(1,n)$ without using Euclidean metric, but instead using the metric of $ℝ^(1,n)$, inductively using geodesic balls
  ]
  - polynomial
  #indent[
    Defining higher order derivatives using differences
  ] 
  - analytic-Euclidean
  #indent[
    - Attempting to define distance (not norm) $"dist"(A,B) = sup_(n >= 1) |A_n - B_n|^(1/n)$ in power series spaces, and this idea might be used to define an analytic version of Sobolev spaces

    - Attempting to define nets and topology for analytic function spaces
  ]
  - analytic-Minkowski
  #indent[
    Attempting to define power series based on Minkowski topology. But only dealt with the simplest time-like future case
  ]
  - ordinary-differential-equation
  #indent[
    - Attempting to mimic $exp$, using differentiation and series methods to define solutions to ODEs, instead of using integration and series (Picard iteration). Although not proven, the two simplest cases, $vel(x) = f(x)$, $f(x) = a x$ or $x^2$, have been verified

    - Motivation for the characteristic polynomial equation of the harmonic oscillator equation as a complex number

    - Vector fields as generators of diffeomorphisms

    - Lie algebra as generators of conjugate-action
  ]
  - volume
  #indent[
    - Based on general simplices and parallelepipeds (which are almost equivalent) and polyhedra, instead of being limited to a box of a single coordinate

    - Discuss the problem of defining the volume of low-dimensional simplices or boxes, whether to use linear forms or quadratic forms

    - Define the measure distance between sets and the measure of sets using symmetric difference, instead of using Carathéodory criterion

    - Discuss the difficulty of defining low-dimensional measurable sets, if there is no differentiable submanifold structure
  ]
  - integral
  #indent[
    - Define integrals using a method similar to symmetric difference used in defining measures, instead of using measurable functions and positive real-valued functions and $sup$

    - Discuss the possibility of defining integrals on manifolds using linear approximation of transformation functions, similar to the approximation technique used in the change of variable formula, instead of using partition of unity

    - Discuss the difficulty of defining integrals for low-dimensional regions by approximation limit, if there is no differentiable submanifold structure
  ]
  - divergence
  #indent[
    - First prove Stokes' theorem for simplices and boxes using the Mean Value Theorem for derivatives, similar to the approximation technique used in the Fundamental Theorem of Calculus 
    
    - Discuss the possibility of proving Stokes' theorem using linear approximation of transformation functions, similar to the approximation technique used in the change of variable formula, instead of using partition of unity
  ]
  - limit-net, compact
  #indent[
    Define topology and compact using nets
  ]
  - connected
  #indent[
    - A closed set is a set of limit points. Define connectedness or limit connectedness based on the intuition of decomposing a set of limit points. Connected components are the optimal decomposition of a set of limit points, similar to the optimal interval decomposition of $ℝ$

    - Discuss the possibility of defining homotopy classes as limit connected components of continuous function spaces
  ]
  - angle

    Discuss the conceptual problem of defining angles in Euclidean $ℝ^2$

    the geometric meanning of $ℂ$ multiplication is in $SO(2)$ rotation 
]
- geometry
  #indent[
  - metric-connection, geodesic-derivative
  #indent[
    - Define the Levi-Civita connection using the geodesics of the metric, and define the Levi-Civita derivative using the derivatives of geodesic coordinates, instead of using abstract algebraic assumptions or abstract bundle theory. Although in applications, expressions in general coordinates still need to be calculated, not just geodesic coordinates.

    - simplify some of calculations
  ]
  ]
  - curvature-of-metric
  #indent[
    - The motivation for defining curvature is to find flat metric coordinates. If flat metric coordinates do not exist, then use Einstein-metric as the minimum scalar curvature.

    - Prove the symmetry of curvature in geodesic coordinates and simplify some of calculations.

    - Use the curvature product $g #cvt-prod$ and its conjugate $(g #cvt-prod)^†$ to handle algebraic curvature, the orthogonal subspace decomposition of curvature, and define (trace-free) Ricci curvature, scalar curvature, and conformal curvature.
  ]
  - Einstein-metric
  #indent[
    - simplify some of calculations

    - The variational non-relativistic limit of the Schwarzschild-metric action approximates the variational action of Newton's gravity.
  ]
  - principal-bundle-connection
  #indent[
    Guess the meaning of the concept of connection as an invariant δ isotropy-group & orbit decomposition at every point. This intuition is inspired by the specific triple $G,H,G/H$ related to specific symmetric spaces as fiber bundles.
  ]
- field-theory
  #indent[
  - simplify some of calculations

  - scalar-field
  #indent[
    - Imitate the harmonic oscillator of ODE, and define the solution of the Klein-Gordon equation and its plane wave form by using $exp$. The characteristic polynomial quadratic equation of ODE corresponds to the quadratic form equation of the metric of $ℝ^(1,3)$.

    - The $L^2$ integral of the measure of the hyperbolic space where the momentum of the plane wave is located is used as the unitary representation of the Poincare group $SO(1,3) ⋊ ℝ^(1,3)$.
  ]
  - scalar-field-non-relativity
    #indent[
      - The non-relativistic limit approximation of the action variation of the relativistic scalar-field (Klein-Gordon) to the non-relativistic scalar-field (Schrodinger). 

      - The time component of the Noether conserved quantity of the $#U (1)$ gauge transformation as the particle number density or probability density or charge density in the Schrodinger equation

      - Motivation for quantization, corresponding to the classical point particle equations with expectation values

      - Motivation for operators in quantum mechanics and their Lie brackets: infinitesimal actions from the Galileo group

      - Motivation for eigenvalues ​​and eigenstates: energy expectation of extreme values ​​or stable via first-order differentials vanishing
    ]
  - projective-lightcone, spacetime-momentum-spinor-representation, spinor-field
  #indent[
    - Based on the projective light cone's spacelike cross-section $𝕊^2$ representation, complex division, complex projective space $ℂℙ^1$, to handle the spinor representation of the Lorentz group $SO(1,3)$ and spacetime $ℝ^(1,3)$ (momentum or tangent space), and the double Hermitian type symmetric tensors of $SL(2,ℂ)$ and $ℂ^2$

    - Discuss the possibility of the source of the spinor-form square root of the metric and Lie algebra of $ℝ^(1,3)$, coming from Hermitian type double tensors, from the $ℤ_2$ quotient in the symmetry group of complex projective space

    - The possible conceptual meaning of the action and Lagrangian of a spinor field

    - Discuss the possible motivation for $#U (1)$ gauge theory as part of the redundancy of elevating complex projective space $ℂℙ^1$ to $ℂ^2$

    - Dirac eq give square root of harmonic oscillator
  ]
  - electromagnetic
  #indent[
    The motivating problem for defining the curvature of a type metric manifold, the motivating definition of connection curvature can be seen as finding flat connection coordinates. When flat connection coordinates do not exist, the minimum $L^2$ curvature based on the metric-volume-form is chosen instead
  ]
  - Laplacian-of-tensor-field
  #indent[
    Inspired by the Hodge Laplacian, an adjoint part might need to be added to the action
  ]
  - harmonic-oscillator-quantization
    #let H = o-color("H", rgb("d25b00"))
    Motivation of ladder operators: The special potential of the harmonic oscillator makes the Hamiltonian operator, position operator, and momentum operator have a Lie bracket with good properties, similar to $so(3)$. The complexified eigenvalue technique can be used to obtain the eigenvalue operator of $[#H,*]$, and the uniformly spaced $(1/2 + n) ℏ ω$ eigenvalues ​​of can be obtained.
]