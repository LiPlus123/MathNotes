# Riemann 积分的性质

<!-- real_analysis_riemann_integral_linearity -->
> [!Theorem]
> **Riemann 积分的线性性 Linearity of the Riemann Integral**：若 $f,g$ 在 $[a,b]$ 上 Riemann 可积，且 $\alpha,\beta\in\mathbb{R}$，则 $\alpha f+\beta g$ 可积，且
> $$
> \int_a^b(\alpha f(x)+\beta g(x))\,\mathrm{d}x
> =\alpha\int_a^bf(x)\,\mathrm{d}x+\beta\int_a^bg(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：对同一带标记分割的 Riemann 和使用线性性，再取网长趋于零的极限。

<!-- real_analysis_riemann_integral_interval_additivity -->
> [!Theorem]
> **区间可加性 Additivity over Intervals**：若 $f$ 在 $[a,b]$ 上 Riemann 可积，且 $c\in[a,b]$，则 $f$ 在 $[a,c]$、$[c,b]$ 上可积，且
> $$
> \int_a^bf(x)\,\mathrm{d}x
> =\int_a^cf(x)\,\mathrm{d}x+\int_c^bf(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：将包含 $c$ 的分割限制到两个子区间，并将两边的 Riemann 和相加；逆向可将两个子区间的分割合并。

<!-- real_analysis_riemann_integral_monotonicity -->
> [!Theorem]
> **Riemann 积分的单调性 Monotonicity of the Riemann Integral**：若 $f,g$ 在 $[a,b]$ 上 Riemann 可积，且对所有 $x\in[a,b]$ 有 $f(x)\leq g(x)$，则
> $$
> \int_a^bf(x)\,\mathrm{d}x\leq\int_a^bg(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：每个带标记分割上都有 $S(f;P,\xi)\leq S(g;P,\xi)$，取极限即可。

<!-- real_analysis_riemann_integral_absolute_value_inequality -->
> [!Theorem]
> **绝对值不等式 Absolute-Value Inequality**：若 $f$ 在 $[a,b]$ 上 Riemann 可积，则 $|f|$ 也可积，且
> $$
> \left|\int_a^bf(x)\,\mathrm{d}x\right|
> \leq\int_a^b|f(x)|\,\mathrm{d}x.
> $$
>
> **证明思路**：绝对值函数连续，故由复合保持 Riemann 可积；再由 $-|f|\leq f\leq|f|$ 与单调性得到结论。

<!-- real_analysis_product_of_riemann_integrable_functions -->
> [!Theorem]
> **可积函数之积仍可积 Product of Riemann Integrable Functions**：若 $f,g$ 在 $[a,b]$ 上 Riemann 可积，则 $fg$ 也 Riemann 可积。
>
> **证明思路**：可积函数有界。由恒等式
> $$
> fg=\frac{(f+g)^2-(f-g)^2}{4}
> $$
> 归结为证明 $h$ 可积时 $h^2$ 可积；这由连续函数 $x\mapsto x^2$ 与有界函数的 Darboux 振幅估计得到。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 7。