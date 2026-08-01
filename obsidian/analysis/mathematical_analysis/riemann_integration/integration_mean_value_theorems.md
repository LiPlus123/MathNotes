# 积分中值定理

<!-- real_analysis_first_integral_mean_value_theorem -->
> [!Theorem]
> **第一积分中值定理 First Mean Value Theorem for Integrals**：设 $f:[a,b]\to\mathbb{R}$ 连续，$g:[a,b]\to\mathbb{R}$ Riemann 可积且 $g(x)\geq0$。则存在 $\xi\in[a,b]$，使得
> $$
> \int_a^bf(x)g(x)\,\mathrm{d}x
> =f(\xi)\int_a^bg(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：设 $m=\min f$、$M=\max f$。由 $m g\leq fg\leq Mg$ 及积分单调性得到 $m\leq\int fg/\int g\leq M$（积分为零时结论显然），再用连续函数的介值性取到该商。

<!-- real_analysis_first_integral_mean_value_corollary -->
> [!Corollary]
> **积分平均值公式 Integral Average Value Formula**：若 $f:[a,b]\to\mathbb{R}$ 连续，则存在 $\xi\in[a,b]$，使得
> $$
> \int_a^bf(x)\,\mathrm{d}x=f(\xi)(b-a).
> $$
>
> **证明思路**：在第一积分中值定理中取 $g\equiv1$。

<!-- real_analysis_second_integral_mean_value_theorem -->
> [!Theorem]
> **第二积分中值定理 Second Mean Value Theorem for Integrals**：设 $f:[a,b]\to\mathbb{R}$ 单调，$g:[a,b]\to\mathbb{R}$ 连续且非负。则存在 $\xi\in[a,b]$，使得
> $$
> \int_a^bf(x)g(x)\,\mathrm{d}x
> =f(a)\int_a^\xi g(x)\,\mathrm{d}x+f(b)\int_\xi^b g(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：先处理递增函数，并将 $f$ 写为 $f(a)+[f-f(a)]$；利用积分累计函数 $G(t)=\int_a^tg$ 的连续性与单调性，对由 $f$ 的增量诱导的面积作夹逼。递减情形可通过替换 $-f$ 得到。

<!-- real_analysis_second_integral_mean_value_corollary -->
> [!Corollary]
> **第二积分中值定理的界估计 Bound from the Second Mean Value Theorem**：在第二积分中值定理条件下，若 $f$ 单调且 $g\geq0$，则
> $$
> \left|\int_a^bf(x)g(x)\,\mathrm{d}x\right|
> \leq\max\{|f(a)|,|f(b)|\}\int_a^bg(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：使用第二积分中值表示，并注意两个积分系数非负且其和为 $\int_a^b g$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 7。