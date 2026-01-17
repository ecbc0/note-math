#import "../module/module.typ": *
#show: module

Although integration on manifolds considers not being limited to a specific metric, differential manifolds have still not been singled out. 

The situation with fiber bundles is similar; the codomain and its symmetries seem uncertain in the general case.

*Example*

homogeneous space

frame bundle

principal-bundle-connection

Some intuition can be inspired by the specific symmetry space with the triple $G,H,G/H$ as a fiber bundle

Ehresmann connection

The connection on the tangent bundle is considered a generalization of the translation structure. The clue is that, It's said that, the maximum dimension of the diffeomorphism that preserves the tangent bundle connection is the dimension of the affine group. One way to understand connections is the Ehresmann connection, viewed as a vertical-horizontal decomposition of the second-order tangent bundle $⊤ ⊤ M$, where the horizontal part might be a generalization of the "parallel transport" of the tangent space during translation $p + v$ (and thus not just translation alone), in an infinitesimal manner, indicating that when changing infinitesimally, in order for the connection or the associated vector field on $⊤ M$ to generate a local bundle automorphism of the tangent bundle $⊤ M$ rather than a general local diffeomorphism of $⊤ M$, this decomposition must also be linear with respect to the vertical part.

Let $Y: M → ⊤ M$ be a tangent vector field. Its differential $#d Y : ⊤_p M -> ⊤_(Y_p) M$ maps $X ∈ ⊤_p M$ to $#d Y_p (X) ∈ ⊤_(Y_p)(⊤M)$. connection gives a projection $P : ⊤(⊤ M) → V$ (to the vertical subbundle), then $∇_X Y(p)= K(P(#d _(Y_p)(X)))$, where $K : V → ⊤ M$ is the canonical isomorphism from the vertical subbundle to the tangent bundle.