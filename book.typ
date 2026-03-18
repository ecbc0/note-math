#import "@preview/shiroa:0.2.3": *

#show: book

#book-meta(
  title: "note-math",
  repository: "https://github.com/ecbc0/note-math",
  summary: [
    #prefix-chapter("en/notice.typ")[notice]
    = English
    = logic-topic
      - #chapter("en/logic.typ")[logic]
      - #chapter("en/basic.typ")[basic]
      - #chapter("en/map.typ")[map]
      - #chapter("en/order.typ")[order]
      - #chapter("en/combinatorics.typ")[combinatorics]
    = calculus
      - #chapter("en/real-numbers.typ")[real-numbers]
      - #chapter("en/limit-sequence.typ")[limit-sequence]
      - #chapter("en/division-algebra.typ")[division-algebra]
      - #chapter("en/Euclidean-space.typ")[Euclidean-space]
      - #chapter("en/Minkowski-space.typ")[Minkowski-space]
      - #chapter("en/polynomial.typ")[polynomial]
      - #chapter("en/analytic-Euclidean.typ")[analytic-Euclidean]
      - #chapter("en/analytic-struct-operation.typ")[analytic-struct-operation]
      - #chapter("en/ordinary-differential-equation.typ")[ordinary-differential-equation]
      - #chapter("en/volume.typ")[volume]
      - #chapter("en/integral.typ")[integral]
      - #chapter("en/divergence.typ")[divergence]
      - #chapter("en/limit-net.typ")[limit-net]
      - #chapter("en/topology.typ")[topology]
      - #chapter("en/compact.typ")[compact]
      - #chapter("en/connected.typ")[connected]
      - #chapter("en/topology-struct-operation.typ")[topology-struct-operation]
      - #chapter("en/exponential.typ")[exponential]
      - #chapter("en/angle.typ")[angle]
    = geometry
      - #chapter("en/manifold.typ")[manifold]
      - #chapter("en/metric.typ")[metric]
      - #chapter("en/metric-connection.typ")[metric-connection]
      - #chapter("en/geodesic-derivative.typ")[geodesic-derivative]
      - #chapter("en/curvature-of-metric.typ")[curvature-of-metric]
      - #chapter("en/Einstein-metric.typ")[Einstein-metric]
      - #chapter("en/constant-sectional-curvature.typ")[constant-sectional-curvature]
      - #chapter("en/simple-symmetric-space.typ")[simple-symmetric-space]
      - #chapter("en/principal-bundle.typ")[principal-bundle]
      - #chapter("en/group.typ")[group]
      - #chapter("en/stereographic-projection.typ")[stereographic-projection]
      - #chapter("en/Hopf-bundle.typ")[Hopf-bundle]
    = field-theory
      - #chapter("en/point-particle-non-relativity.typ")[point-particle-non-relativity]
      - #chapter("en/point-particle-relativity.typ")[point-particle-relativity]
      - #chapter("en/scalar-field.typ")[scalar-field]
      - #chapter("en/scalar-field-current.typ")[scalar-field-current]
      - #chapter("en/scalar-field-non-relativity.typ")[scalar-field-non-relativity]
      - #chapter("en/projective-lightcone.typ")[projective-lightcone]
      - #chapter("en/spacetime-momentum-spinor-representation.typ")[spacetime-momentum-spinor-representation]
      - #chapter("en/Lorentz-group.typ")[Lorentz-group]
      - #chapter("en/spinor-field.typ")[spinor-field]
      - #chapter("en/spinor-field-current.typ")[spinor-field-current]
      - #chapter("en/electromagnetic-field.typ")[electromagnetic-field]
      - #chapter("en/Laplacian-of-tensor-field.typ")[Laplacian-of-tensor-field]
      - #chapter("en/Einstein-metric.typ")[Einstein-metric]
      - #chapter("en/interaction.typ")[interaction]
      - #chapter("en/harmonic-oscillator-quantization.typ")[harmonic-oscillator-quantization]
      - #chapter("en/spinor-field-misc.typ")[spinor-field-misc]
    - #chapter("reference.typ")[reference]
    = 中文
    #chapter("zh/notice.typ")[notice]
    = 逻辑
      - #chapter("zh/logic.typ")[逻辑]
      - #chapter("zh/basic.typ")[基础]
      - #chapter("zh/map.typ")[映射]
      - #chapter("zh/order.typ")[序]
      - #chapter("zh/combinatorics.typ")[组合]
    = 微积分
      - #chapter("zh/real-numbers.typ")[实数]
      - #chapter("zh/limit-sequence.typ")[数列极限]
      - #chapter("zh/division-algebra.typ")[可除代数]
      - #chapter("zh/Euclidean-space.typ")[Euclidean 空间]
      - #chapter("zh/Minkowski-space.typ")[Minkowski 空间]
      - #chapter("zh/polynomial.typ")[多项式]
      - #chapter("zh/analytic-Euclidean.typ")[解析 (Euclidean)]
      - #chapter("zh/analytic-struct-operation.typ")[解析 struct 的操作]
      - #chapter("zh/ordinary-differential-equation.typ")[常微分方程]
      - #chapter("zh/volume.typ")[体积]
      - #chapter("zh/integral.typ")[积分]
      - #chapter("zh/divergence.typ")[散度]
      - #chapter("zh/limit-net.typ")[网极限]
      - #chapter("zh/topology.typ")[拓扑]
      - #chapter("zh/compact.typ")[紧致]
      - #chapter("zh/connected.typ")[连通]
      - #chapter("zh/topology-struct-operation.typ")[拓扑 struct 的操作]
      - #chapter("zh/exponential.typ")[指数函数]
      - #chapter("zh/angle.typ")[角度]
    = 几何
      - #chapter("zh/manifold.typ")[流形]
      - #chapter("zh/metric.typ")[度规]
      - #chapter("zh/metric-connection.typ")[度规的联络]
      - #chapter("zh/geodesic-derivative.typ")[Levi-Civita 导数]
      - #chapter("zh/curvature-of-metric.typ")[度规的曲率]
      - #chapter("zh/Einstein-metric.typ")[Einstein 度规]
      - #chapter("zh/constant-sectional-curvature.typ")[常截面曲率]
      - #chapter("zh/simple-symmetric-space.typ")[simple-symmetric-space]
      - #chapter("zh/principal-bundle.typ")[主丛]
      - #chapter("zh/group.typ")[群]
      - #chapter("zh/stereographic-projection.typ")[球极投影]
      - #chapter("zh/Hopf-bundle.typ")[Hopf 丛]
    = 场论
      - #chapter("zh/point-particle-non-relativity.typ")[非相对论点粒子]
      - #chapter("zh/point-particle-relativity.typ")[相对论点粒子]
      - #chapter("zh/scalar-field.typ")[纯量场]
      - #chapter("zh/scalar-field-current.typ")[纯量场的守恒流]
      - #chapter("zh/scalar-field-non-relativity.typ")[非相对论纯量场]
      - #chapter("zh/projective-lightcone.typ")[光锥射影]
      - #chapter("zh/spacetime-momentum-spinor-representation.typ")[时空动量的自旋表示]
      - #chapter("zh/Lorentz-group.typ")[Lorentz 群]
      - #chapter("zh/spinor-field.typ")[旋量场]
      - #chapter("zh/spinor-field-current.typ")[旋量场的守恒流]
      - #chapter("zh/electromagnetic-field.typ")[电磁场]
      - #chapter("zh/Laplacian-of-tensor-field.typ")[张量场的 Laplacian]
      - #chapter("zh/Einstein-metric.typ")[Einstein 度规]
      - #chapter("zh/interaction.typ")[相互作用]
      - #chapter("zh/harmonic-oscillator-quantization.typ")[谐振子量子化]
      - #chapter("zh/spinor-field-misc.typ")[旋量场杂项]
    - #chapter("reference.typ")[参考]
  ]
)

#html-meta(
  languages: (
    (code: "en", name: "English", dir: "en"),
    (code: "zh", name: "中文", dir: "zh"),
  ),
  fold: (enable: false, level: 0),  // 明确指定 fold 配置，不要用 auto
)

#build-meta(dest-dir: "./dist")
#get-book-meta()

// re-export page template
#import "/templates/page.typ": project
#let book-page = project
