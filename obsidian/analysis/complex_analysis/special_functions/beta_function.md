# Beta 函数

## 定义与 Gamma 函数关系

<!-- beta_integral_definition -->
> [!Definition]
> **Beta 函数的 Euler 积分 Euler Integral of the Beta Function**：当 $\operatorname{Re}x>0$ 且 $\operatorname{Re}y>0$ 时，定义
> $$
> B(x,y)=\int_0^1 t^{x-1}(1-t)^{y-1}\,dt.
> $$
> 该积分在上述参数区域内绝对收敛，并且关于 $x,y$ 分别全纯。

<!-- beta_symmetry -->
> [!Theorem]
> **Beta 函数的对称性 Symmetry of the Beta Function**：对定义域内的参数，
> $$
> B(x,y)=B(y,x).
> $$
>
> **证明思路**：在积分中作变量代换 $t\mapsto1-t$。

<!-- beta_gamma_relation -->
> [!Theorem]
> **Beta-Gamma 关系 Beta-Gamma Relation**：当 $\operatorname{Re}x>0$ 且 $\operatorname{Re}y>0$ 时，
> $$
> B(x,y)=\frac{\Gamma(x)\Gamma(y)}{\Gamma(x+y)}.
> $$
>
> **证明思路**：将两个 Gamma 积分的乘积写成第一象限上的二重积分，再作变量变换 $r=s+t$、$u=s/(s+t)$，积分分离为 Gamma 积分与 Beta 积分。

<!-- beta_functional_equations -->
> [!Theorem]
> **Beta 函数的递推关系 Recurrence Relations of the Beta Function**：在参数允许的范围内，
> $$
> B(x+1,y)=\frac{x}{x+y}B(x,y),
> \qquad
> B(x,y+1)=\frac{y}{x+y}B(x,y).
> $$
>
> **证明思路**：使用 $1=t+(1-t)$ 分解被积函数，并分别比较两个积分。

## Beta 函数的性质与应用

<!-- beta_holomorphicity_and_meromorphic_continuation -->
> [!Theorem]
> **Beta 函数的解析性质 Analytic Properties of the Beta Function**：Beta 函数在 $\operatorname{Re}x>0,\operatorname{Re}y>0$ 上全纯，并通过 Gamma 函数关系延拓为关于 $(x,y)$ 的亚纯函数；其可能的极点来自 $\Gamma(x)$、$\Gamma(y)$ 和 $\Gamma(x+y)$ 的极点与零点相互抵消后的剩余部分。
>
> **证明思路**：先使用参数积分的局部一致收敛证明全纯性，再用 Beta-Gamma 关系进行亚纯延拓。

<!-- beta_trigonometric_integral -->
> [!Theorem]
> **Beta 函数的三角积分表示 Trigonometric Integral Representation**：当 $\operatorname{Re}x>0$ 且 $\operatorname{Re}y>0$ 时，
> $$
> B(x,y)=2\int_0^{\pi/2}(\sin\theta)^{2x-1}(\cos\theta)^{2y-1}\,d\theta.
> $$
>
> **证明思路**：在 Euler 积分中令 $t=\sin^2\theta$。

<!-- beta_integer_values -->
> [!Example]+
> **整数参数的 Beta 函数 Integer Values of the Beta Function**：对正整数 $m,n$，
> $$
> B(m,n)=\frac{(m-1)!(n-1)!}{(m+n-1)!}.
> $$
> 这由 Beta-Gamma 关系和 $\Gamma(k)=(k-1)!$ 直接得到。

<!-- beta_probability_connection -->
> [!Example]+
> **Beta 积分的参数积分形式 Parameter Integral Form**：对 $a,b>0$，函数
> $$
> \frac{t^{a-1}(1-t)^{b-1}}{B(a,b)},\qquad 0<t<1,
> $$
> 的积分为 $1$，因此 Beta 函数给出区间 $(0,1)$ 上一族标准化的权函数。其复分析基础是 Euler 积分和 Beta-Gamma 关系。

> **注**：Beta 函数参见 E. T. Whittaker and G. N. Watson, *A Course of Modern Analysis*, Chapter XII，以及 NIST Digital Library of Mathematical Functions §5。
