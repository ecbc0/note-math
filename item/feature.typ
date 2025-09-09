#import "../module/module.typ": *
#show: module

- logic-topic
#indent[
  - logic
  
    介绍简单的计算机编程, 作为集合论的前置知识
]
- calculus
#indent[
  - real-number
  #indent[
    - 用更一般于闭区间套 $ℕ$ 序列的闭区间 $subset$ 线序链, 用来证明闭区间网定理, 用来在后面证明 $ℝ$ 的有界闭区间 compact
  ]
  - limit-sequence
  #indent[
    - 使用多元微分求极值和二阶微分作为二次型的正定性来证明均值不等式

    - 基于均值不等式, 讨论最优乘法分解, 并给出自然常数 $e$ 的动机
  ]
  - Euclidean-space
  #indent[
    - $ℝ$ 的集合的最优区间分解. 用于证明 $ℝ$ 的有界闭区间 compact, 以及证明 $ℝ$ 的集合的连通 <==> 区间

    - 用网来定义 compact. 用 Riemann 球面 or 球极投影的方法来归纳地证明 Euclidean $ℝ^n$ 的集合 compact <==> 有界闭集

    - Riemann 重排定理在 $ℝ^n$ 的一些推广, 用于说明绝对收敛之外的级数的极限定义不能简单给出
  ]
  - Minkowski-spaces
  #indent[
    尝试不使用 Euclidean metric 来定义 Minkowski 空间 $ℝ^(1,n)$ 的拓扑, 而是使用 $ℝ^(1,n)$ 的 metric, 归纳地使用测地线球
  ]
  - polynomial
  #indent[
    用差分来定义高阶微分
  ] 
  - analytic-Euclidean
  #indent[
    - 尝试定义幂级数空间的距离 (不是 norm) $"dist"(A,B) = sup_(n >= 1) |A_n - B_n|^(1/n)$ 而且这种想法也许能用来定义解析版本的 Sobolev 空间

    - 尝试定义解析函数空间的网和拓扑
  ]
  - analytic-Minkowski
  #indent[
    尝试定义基于 Minkowski 拓扑的幂级数. 但只处理了最简单的类时未来的情况
  ]
  - ordinary-differential-equation
  #indent[
    - 尝试模仿 $exp$, 用微分和级数的方法来定义 ODE 的解, 而不是用积分和级数 (Picard 迭代). 虽然没有证明, 但验算了最简单的两种情况, $vel(x) = f(x)$, $f(x) = a x$ or $x^2$

    - 谐振子方程的特征多项式方程作为复数的动机

    - 向量场作为微分同胚生成元

    - Lie algebra 作为 conjugate-action 生成元
  ]
  - volume
  #indent[
    - 基于一般的 simplex 和平行体 (它们几乎等价) 和多面体, 而不是只限制于一个坐标的 box

    - 讨论低维 simplex or box 的体积的定义的问题, 应该用一次型还是二次型

    - 用对称差定义集合之间相差的测度距离和集合的测度, 而不是用 Carathéodory criterion

    - 讨论低维可测集定义的困难, 如果没有微分子流形结构的话
  ]
  - integral
  #indent[
    - 用类似于定义测度所用的对称差的方法来定义积分, 而不是用可测函数和正实值函数和 $sup$

    - 讨论用转换函数的线性近似的方法来定义流形上的积分的可能性, 类似于变量替换公式中的使用的逼近技术, 而不是用单位分解

    - 讨论低维区域的积分的逼近极限定义的困难. 微分子流形结构是更方便的假设
  ]
  - divergence
  #indent[
    - 先用微分中值定理证明 simplex 和 box 的 Stokes 定理, 类似于微积分基本定理使用的逼近技术 
    
    - 讨论用转换函数的线性近似的方法来证明 Stokes 定理的可能性, 类似于变量替换公式中的使用的逼近技术, 而不是用单位分解
  ]
  - limit-net, compact
  #indent[
    用网来定义拓扑和 compact
  ]
  - connected
  #indent[
    - 闭集即极限点集. 基于极限点集分解的直观来定义连通 or 极限连通. 连通分支是最优极限点集分解, 情况类似于 $ℝ$ 的最优区间分解

    - 讨论将同伦类定义为连续函数空间的极限连通分支可能性
  ]
  - angle

    讨论 Euclidean $ℝ^2$ 的角度的定义的概念问题

    复数乘法的几何意义在于 $SO(2)$ 旋转
]
- geometry
  #indent[
  - metric-connection, geodesic-derivative
  #indent[
    - 用 metric 的测地线来定义 Levi-Civita 联络, 用测地线坐标的导数来定义 Levi-Civita 导数, 而不是用抽象的代数假设或者抽象丛理论. 虽然在应用中还是需要计算一般坐标下的表达式, 并不是只用测地线坐标

    - 一些简化计算
  ]
  ]
  - curvature-of-metric
  #indent[
    - 将曲率的定义的动机作为寻找 flat metric 坐标. 不存在 flate metric 坐标时, 则使用 Einstein-metric 作为最小纯量曲率

    - 在测地线坐标中证明曲率的对称性, 并进行一些简化计算

    - 使用曲率积 $g #cvt-prod$ 及其共轭 $(g #cvt-prod)^†$, 处理代数曲率, 曲率的正交子张量空间分解, 并定义 (trace-free) Ricci 曲率和纯量曲率和共形曲率
  ]
  - Einstein-metric
  #indent[
    - 一些简化计算

    - Schwarzschild-metric 的作用量的变分非相对论极限近似到 Newton 引力的作用量的变分
  ]
  - principal-bundle-connection
  #indent[
    猜测 connection 的概念的意义, 作为 invariant δ isotropy-group & orbit decomposition at every point. 这种直观启发自具体的对称空间相关的具体三元组 $G,H,G/H$ 作为纤维丛
  ]
- field-theory
  #indent[
  - 一些简化计算

  - scalar-field
  #indent[
    - 模仿 ODE 的谐振子, 用 $exp$ 化来定义 Klein--Gordan 方程的解及其平面波形式. ODE 的特征多项式二次方程对应到 $ℝ^(1,3)$ 的 metric 的二次型方程

    - 平面波根据动量所在双曲面空间的测度的 $L^2$ 积分作为 Poincare 群 $SO(1,3) ⋊ ℝ^(1,3)$ 的 unitary representation
  ]
  - scalar-field-non-relativity
    #indent[
      - 相对论 scalar-field (Klein--Gordan) 的作用量变分的非相对论极限近似到非相对论 scalar-field (Schrodinger) 

      - $#U (1)$ 规范变换的 Noether 守恒量的时间分量作为 Schrodinger 方程的粒子数密度或概率密度或电荷密度

      - 量子化的动机, 对应到期望值的经典点粒子方程
            
      - 量子力学的算子及其 Lie bracket 的动机: 来自 Galileo 群的无穷小作用
      
      - 特征值和特征态的动机: 极值 or 一阶微分零稳定的能量期望
    ]
  - projective-lightcone, spacetime-momentum-spinor-representation, spinor-field
  #indent[
    - 基于射影光锥的类空截面 $𝕊^2$ 表示, 复数除法, 复射影空间 $ℂℙ^1$, 来处理 Lorentz 群 $SO(1,3)$ 和时空 $ℝ^(1,3)$ (动量 or 切空间) 的旋量表示, $SL(2,ℂ)$ 和 $ℂ^2$ 的二重 Hermitian 型对称张量

    - 讨论 $ℝ^(1,3)$ 的 metric 和 Lie algebra 的旋量式平方根的来源的可能性, 来自 Hermitian 型二重张量, 来自复射影空间的对称群中的 $ℤ_2$ quotient

    - 旋量场的作用量和 Lagrangian 的可能的概念的意义

    - Dirac eq 给出的谐振子的平方根

    - 讨论 $#U (1)$ 规范理论的可能动机, 作为复射影空间 $ℂℙ^1$ 提升到 $ℂ^2$ 的冗余度的一部分
  ]
  - electromagnetic
  #indent[
    类型 metric 流形的曲率的定义动机问题, 联络的曲率的定义动机可以作为寻找 flat connection 坐标. 不存在 flat connection 坐标时, 则选取基于 metric-volume-form 的最小 $L^2$ 曲率
  ]
  - Laplacian-of-tensor-field
  #indent[
    启发自 Hodge Laplacian, 作用量中可能要加上 adjoint 部分
  ]
  - 谐振子量子化
    #let H = o-color("H", rgb("d25b00"))
    升降算子的动机: 谐振子的特殊 potential 使得 Hamiltonian 算子, 位置算子, 动量算子有很好性质的 Lie bracket, 类似 $so(3)$, 可以复化特征值技术来得到 $[#H,*]$ 的特征算子, 可以得到均匀间隔 $(1/2 + n) ℏ ω$ 的特征值
]