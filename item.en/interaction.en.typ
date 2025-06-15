#import "../module/module.typ": *
#show: module

Spinor fields, scalar fields, gauge fields, gravitational fields (Einstein-metric), or other fields are coupled in the following ways:
- Action summation
- gauge-connection
- metric-volume-form
- metric-connection
$
  integral_(M) #d Vol(g) ( "spin" + "scalar" + "gauge" + "gravity" )
$
Varying with respect to 4 sets of variables gives 4 equations
$
  "spin" \
  "scalar" \
  "gauge" \
  "gravity" \
$
We can set some fields to zero or fix certain fields to obtain partial coupling (for gravity, $Γ = 0$ ==> flat-metric)

In the equation, the 4-current of the field becomes the source of the gauge potential (#link(<current-gauge-spinor>)[spinor field 4-current] #link(<current-gauge-KG>)[scalar field 4-current] #link(<current-gauge-particle>)[point particle 4-current])