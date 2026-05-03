#import "@preview/shiroa:0.2.3": *

#show: book

#book-meta(
  title: "note-math",
  repository: "https://github.com/ecbc0/note-math",
  summary: [
    #prefix-chapter("en/notice.typ")[notice]
    = English
    = logic_topic
      - #chapter("en/logic.typ")[logic]
      - #chapter("en/basic.typ")[basic]
      - #chapter("en/map.typ")[map]
      - #chapter("en/order.typ")[order]
      - #chapter("en/combinatorics.typ")[combinatorics]
    = calculus
      - #chapter("en/real_numbers.typ")[real_numbers]
      - #chapter("en/limit_sequence.typ")[limit_sequence]
      - #chapter("en/division_algebra.typ")[division_algebra]
      - #chapter("en/Euclidean_space.typ")[Euclidean_space]
      - #chapter("en/Minkowski_space.typ")[Minkowski_space]
      - #chapter("en/polynomial.typ")[polynomial]
      - #chapter("en/analytic_Euclidean.typ")[analytic_Euclidean]
      - #chapter("en/analytic_struct_operation.typ")[analytic_struct_operation]
      - #chapter("en/ordinary_differential_equation.typ")[ordinary_differential_equation]
      - #chapter("en/convex_hull.typ")[convex_hull]
      - #chapter("en/volume.typ")[volume]
      - #chapter("en/integral.typ")[integral]
      - #chapter("en/divergence.typ")[divergence]
      - #chapter("en/limit_net.typ")[limit_net]
      - #chapter("en/topology.typ")[topology]
      - #chapter("en/compact.typ")[compact]
      - #chapter("en/connected.typ")[connected]
      - #chapter("en/topology_struct_operation.typ")[topology_struct_operation]
      - #chapter("en/exponential.typ")[exponential]
      - #chapter("en/angle.typ")[angle]
    = geometry
      - #chapter("en/manifold.typ")[manifold]
      - #chapter("en/metric.typ")[metric]
      - #chapter("en/metric_connection.typ")[metric_connection]
      - #chapter("en/geodesic_derivative.typ")[geodesic_derivative]
      - #chapter("en/curvature_of_metric.typ")[curvature_of_metric]
      - #chapter("en/Einstein_metric.typ")[Einstein_metric]
      - #chapter("en/constant_sectional_curvature.typ")[constant_sectional_curvature]
      - #chapter("en/simple_symmetric_space.typ")[simple_symmetric_space]
      - #chapter("en/principal_bundle.typ")[principal_bundle]
      - #chapter("en/group.typ")[group]
      - #chapter("en/stereographic_projection.typ")[stereographic_projection]
      - #chapter("en/Hopf_bundle.typ")[Hopf_bundle]
    = field_theory
      - #chapter("en/point_particle_non_relativity.typ")[point_particle_non_relativity]
      - #chapter("en/point_particle_relativity.typ")[point_particle_relativity]
      - #chapter("en/scalar_field.typ")[scalar_field]
      - #chapter("en/scalar_field_current.typ")[scalar_field_current]
      - #chapter("en/scalar_field_non_relativity.typ")[scalar_field_non_relativity]
      - #chapter("en/projective_lightcone.typ")[projective_lightcone]
      - #chapter("en/spacetime_momentum_spinor_representation.typ")[spacetime_momentum_spinor_representation]
      - #chapter("en/Lorentz_group.typ")[Lorentz_group]
      - #chapter("en/spinor_field.typ")[spinor_field]
      - #chapter("en/spinor_field_current.typ")[spinor_field_current]
      - #chapter("en/electromagnetic_field.typ")[electromagnetic_field]
      - #chapter("en/Laplacian_of_tensor_field.typ")[Laplacian_of_tensor_field]
      - #chapter("en/Einstein_metric.typ")[Einstein_metric]
      - #chapter("en/interaction.typ")[interaction]
      - #chapter("en/harmonic_oscillator_quantization.typ")[harmonic_oscillator_quantization]
      - #chapter("en/spinor_field_misc.typ")[spinor_field_misc]
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
      - #chapter("zh/real_numbers.typ")[实数]
      - #chapter("zh/limit_sequence.typ")[数列极限]
      - #chapter("zh/division_algebra.typ")[可除代数]
      - #chapter("zh/Euclidean_space.typ")[Euclidean 空间]
      - #chapter("zh/Minkowski_space.typ")[Minkowski 空间]
      - #chapter("zh/polynomial.typ")[多项式]
      - #chapter("zh/analytic_Euclidean.typ")[解析 (Euclidean)]
      - #chapter("zh/analytic_struct_operation.typ")[解析 struct 的操作]
      - #chapter("zh/ordinary_differential_equation.typ")[常微分方程]
      - #chapter("zh/convex_hull.typ")[convex_hull]
      - #chapter("zh/volume.typ")[体积]
      - #chapter("zh/integral.typ")[积分]
      - #chapter("zh/divergence.typ")[散度]
      - #chapter("zh/limit_net.typ")[网极限]
      - #chapter("zh/topology.typ")[拓扑]
      - #chapter("zh/compact.typ")[紧致]
      - #chapter("zh/connected.typ")[连通]
      - #chapter("zh/topology_struct_operation.typ")[拓扑 struct 的操作]
      - #chapter("zh/exponential.typ")[指数函数]
      - #chapter("zh/angle.typ")[角度]
    = 几何
      - #chapter("zh/manifold.typ")[流形]
      - #chapter("zh/metric.typ")[度规]
      - #chapter("zh/metric_connection.typ")[度规的联络]
      - #chapter("zh/geodesic_derivative.typ")[Levi_Civita 导数]
      - #chapter("zh/curvature_of_metric.typ")[度规的曲率]
      - #chapter("zh/Einstein_metric.typ")[Einstein 度规]
      - #chapter("zh/constant_sectional_curvature.typ")[常截面曲率]
      - #chapter("zh/simple_symmetric_space.typ")[simple_symmetric_space]
      - #chapter("zh/principal_bundle.typ")[主丛]
      - #chapter("zh/group.typ")[群]
      - #chapter("zh/stereographic_projection.typ")[球极投影]
      - #chapter("zh/Hopf_bundle.typ")[Hopf 丛]
    = 场论
      - #chapter("zh/point_particle_non_relativity.typ")[非相对论点粒子]
      - #chapter("zh/point_particle_relativity.typ")[相对论点粒子]
      - #chapter("zh/scalar_field.typ")[纯量场]
      - #chapter("zh/scalar_field_current.typ")[纯量场的守恒流]
      - #chapter("zh/scalar_field_non_relativity.typ")[非相对论纯量场]
      - #chapter("zh/projective_lightcone.typ")[光锥射影]
      - #chapter("zh/spacetime_momentum_spinor_representation.typ")[时空动量的自旋表示]
      - #chapter("zh/Lorentz_group.typ")[Lorentz 群]
      - #chapter("zh/spinor_field.typ")[旋量场]
      - #chapter("zh/spinor_field_current.typ")[旋量场的守恒流]
      - #chapter("zh/electromagnetic_field.typ")[电磁场]
      - #chapter("zh/Laplacian_of_tensor_field.typ")[张量场的 Laplacian]
      - #chapter("zh/Einstein_metric.typ")[Einstein 度规]
      - #chapter("zh/interaction.typ")[相互作用]
      - #chapter("zh/harmonic_oscillator_quantization.typ")[谐振子量子化]
      - #chapter("zh/spinor_field_misc.typ")[旋量场杂项]
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
