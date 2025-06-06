#import "/module/module.typ": *
#show: module

$𝕊^3,𝕊^2,𝕊^1$ or complex number $ℂ$ version of Hopf-bundle 

#tag("Hopf-bundle")
#indent[
  Embedding $𝕊^2 ↪ ℝ^3 ↪ ℂ^2$, in $ℝ^3 ≃ ℝ × ℂ$ use $w/z ∈ ℂ$ as #link(<stereographic-projection>)[] coordinates
  $
    dmat( delim: #none , 
      ℂ^2 , ⟶ , ℂ , ⟶ , ℝ × ℂ ;

      z \, w , ↠ , w/z , ⟶ , (1 - abs(w/z)^2, 2 w/z)/(1 + abs(w/z)^2) ;

      ,,, = , (|z|^2 - |w|^2, 2 w z^*)/(|z|^2 + |w|^2) ;

      , ↠ , z^* /w^* , ⟶ , (- (1 - abs(z/w)^2), 2 (z^*)/(w^*))/(1 + abs(z/w)^2)
    )
  $
  The transformation function of the two coordinates of stereographic projection $w/z ⇝ z^* / w^*$ or $ξ ⇝ 1/ξ^*$

  $λ(z,w),λ ∈ GL(1,ℂ)$ does not change the projective result e.g. $(λ z)/(λ w) = z/w$
  
  $ℂ^2 ∖ 0$ is a $GL(1,ℂ)$ bundle on $𝕊^2 = ℂℙ^1$
  
  Construct bundle coordinates with two stereographic projection coordinates
  
  $(z,w) ⇝ (2 w/z, z)$ and $(z,w) ⇝ (2 z/w, w)$
  
  And the transformation function $(2 w/z, z) = (2 (z^*)/(w^*), w^*)$ or $(ξ,λ) ⇝ (1/ξ^*,(1/2 ξ λ)^*)$

  You can first quotient $ℂ^2 / ℝ_(> 0) ≃ 𝕊^3 = {|z|^2 + |w|^2 = 1}$
  
  At this point, the $ℝ^3 ≃ ℝ × ℂ$ representation of stereographic projection
  
  $ (z,w) ↠ (|z|^2 - |w|^2, 2 w z^*) $ 
  
  $λ(z,w),λ ∈ #U (1)$ does not change the projective result
  
  $𝕊^3$ is a $\#U (1)$ bundle on $𝕊^2$
  
  Construct bundle coordinates with two stereographic projection coordinates 
  
  $(z,w) ⇝ (2 w/z, z/(|z|))$ and $(z,w) ⇝ (2 z/w, w/(|w|))$
  
  And the transformation function $(2 w/z, z/(|z|)) = (2 (z^*)/(w^*), (w^*)/(|w^*|))$ or $(ξ,λ) ⇝ (1/ξ^*, (ξ/(|ξ|) λ)^*)$
]