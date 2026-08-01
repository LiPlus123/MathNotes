# 微积分基本定理

<!-- real_analysis_variable_upper_limit_integral_theorem -->
> [!Theorem]
> **变上限积分与原函数 Variable-Upper-Limit Integral and Antiderivative**：若 $f:[a,b]\to\mathbb{R}$ 连续，定义
> $$
> F(x)=\int_a^xf(t)\,\mathrm{d}t
> \qquad(x\in[a,b]),
> $$
> 则 $F$ 在 $(a,b)$ 上可导，且
> $$
> F'(x)=f(x).
> $$
>
> **证明思路**：对 $h\ne0$，由区间可加性得
> $$
> \frac{F(x+h)-F(x)}h=\frac1h\int_x^{x+h}f(t)\,\mathrm{d}t.
> $$
> 由积分平均值公式，右端等于某个趋于 $x$ 的点处的 $f$ 值；再由连续性得结论。

<!-- real_analysis_newton_leibniz_formula -->
> [!Theorem]
> **Newton-Leibniz 公式 Newton-Leibniz Formula**：若 $F:[a,b]\to\mathbb{R}$ 可导，且 $F'$ 连续，则
> $$
> \int_a^bF'(x)\,\mathrm{d}x=F(b)-F(a).
> $$
> 更一般地，若 $f$ 连续且 $F'=f$，则
> $$
> \int_a^bf(x)\,\mathrm{d}x=F(b)-F(a).
> $$
>
> **证明思路**：令 $G(x)=\int_a^xf(t)\,\mathrm{d}t$。第一部分说明 $G'=f=F'$，故 $F-G$ 导数恒为零，因而为常数；比较 $x=a,b$ 即得公式。

<!-- real_analysis_definite_integral_integration_by_parts -->
> [!Theorem]
> **定积分分部积分公式 Integration by Parts for Definite Integrals**：若 $u,v\in C^1([a,b])$，则
> $$
> \int_a^bu(x)v'(x)\,\mathrm{d}x
> =u(b)v(b)-u(a)v(a)-\int_a^bu'(x)v(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：对恒等式 $(uv)'=u'v+uv'$ 应用 Newton-Leibniz 公式并移项。

<!-- real_analysis_substitution_formula -->
> [!Theorem]
> **换元积分公式 Change of Variables Formula**：设 $f$ 在包含 $\varphi([\alpha,\beta])$ 的区间上连续，且 $\varphi\in C^1([\alpha,\beta])$。则
> $$
> \int_\alpha^\beta f(\varphi(t))\varphi'(t)\,\mathrm{d}t
> =\int_{\varphi(\alpha)}^{\varphi(\beta)}f(u)\,\mathrm{d}u.
> $$
> 当 $\varphi$ 递减时，右端积分的方向自然给出负号。
>
> **证明思路**：取 $f$ 的原函数 $F$，由链式法则有 $(F\circ\varphi)'=f(\varphi)\varphi'$；再用 Newton-Leibniz 公式。

<!-- real_analysis_fundamental_theorem_calculus_example -->
> [!Example]+
> **微积分基本定理的例子 Example of the Fundamental Theorem of Calculus**：
> $$
> \int_0^1 3x^2\,\mathrm{d}x=[x^3]_0^1=1.
> $$
> 以 $u=x$、$v'=e^x$ 作分部积分，可得
> $$
> \int_0^1xe^x\,\mathrm{d}x=1.
> $$

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 7；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 6。