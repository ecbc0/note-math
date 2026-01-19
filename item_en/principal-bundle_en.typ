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

The connection on the tangent bundle is considered a generalization of the translation structure. The clue is that, It's said that, the maximum dimension of the diffeomorphism that preserves the tangent bundle connection is the dimension of the affine group. One way to understand connections is the Ehresmann connection, viewed as a vertical-horizontal decomposition of the second-order tangent bundle $⊤ ⊤ M$, where the horizontal part might be a generalization of the "parallel transport" of the tangent space during translation $p + v$ (and thus not just translation alone), in an infinitesimal manner, indicating that when changing infinitesimally, in order for the connection or the associated vector field on $⊤ M$ to generate a local tangent bundle automorphism of the tangent bundle $⊤ M$ rather than a general local diffeomorphism of $⊤ M$, this decomposition must also be linear with respect to the vertical part, or say that the transformation on the hole fiber space is $GL(n, ℝ)$.

Let $Y: M → ⊤ M$ be a tangent vector field. Its differential $#d Y : ⊤_p M -> ⊤_(Y_p) M$ maps $X ∈ ⊤_p M$ to $#d Y_p (X) ∈ ⊤_(Y_p)(⊤M)$. connection gives a projection to the vertical subbundle $P : ⊤(⊤ M) → V$, then after the canonical isomorphism from the vertical subbundle to the tangent bundle, we get covariant derivative $∇_X Y(p)$. A connection is called flat if it satisfies the following equivalent conditions
- the connection makes the horizontal subbundle $H$ #link(<Frobenius-theorem>)[integrable]
- the curvature is zero
- there exists a local coordinate system where $∇_X Y = ∂_X Y$, i.e., in this coordinate system, the connection coefficients are zero and the covariant derivative is the coordinate derivative
The concept of a geodesic is weaker than that of a connection; a geodesic depends only on the symmetrical part of a connection.

"The transformation of the entire fiber space under "parallel transport" is $GL(n, ℝ)$" can be generalized to other non-tangent bundle fiber bundles. For example, in gauge theory, there are cases where the transformation of the entire fiber space under parallel transport is $U(1)$. Or consider a Lie group $G$ acting/represented on a fiber manifold $X$, then the transformation of the entire fiber space under parallel transport is $G$ acting on $X$. All of these can be reduced to principal bundles --- $G$ acting on the fiber $G$ --- and their associated bundles. The concept of flat connection also applies