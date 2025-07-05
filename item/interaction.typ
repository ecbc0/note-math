#import "../module/module.typ": *
#show: module

作用量原理的一种合理性的论据是, 简单性: 只要加上 connection 然后对作用量进行加法, 就能得到相互作用方程, 而不需要去猜物质和电磁场和引力场怎么相互作用

但是, 至于为什么用作用量的加法, 以及, 得到的相互作用方程是不是真的正确对应到现实的现象, 则这里并没有解决 ...

旋量场, 纯量场, 规范场, 引力场 (Einstein-metric), 或者其它场, 通过以下方式耦合
- 作用量相加
- gauge-connection
- metric-volume-form
- metric-connection
$
  integral_(M) #d Vol(g) ( "spin" + "scalar" + "gauge" + "gravity" )
$
对 4 组变量变分得到 4 个方程
$
  "spin" \
  "scalar" \
  "gauge" \
  "gravity" \
$
可以让一些场是零或者固定某些场来得到部分耦合 (引力的情况 $Γ = 0$ ==> flat-metric)

在方程中, 场的 4-电流成为 gauge potential 的源 (#link(<current-gauge-spinor>)[旋量场 4-电流] #link(<current-gauge-KG>)[纯量场 4-电流] #link(<current-gauge-particle>)[点粒子 4-电流])