## Perron 公式

<!-- analytic_number_theory_perron_inversion_formula -->
> [!Theorem]
> **Perron 反演公式 Perron's Formula**：设
>
> $$F(s)=\sum_{n=1}^{\infty}\frac{a_n}{n^s}$$
>
> 在 $\operatorname{Re}(s)>\sigma_a$ 绝对收敛。若 $c>\sigma_a$ 且 $x>0$ 不是整数，则
>
> $$\sum_{n\leq x}a_n=\frac{1}{2\pi i}\int_{c-i\infty}^{c+i\infty}F(s)\frac{x^s}{s}\,ds,$$
>
> 其中右端是沿直线 $\operatorname{Re}(s)=c$ 的对称截断积分之极限。
>
> **证明思路**：将绝对收敛的 Dirichlet 级数代入积分并逐项积分，再使用 Mellin 型核
>
> $$\frac{1}{2\pi i}\int_{c-i\infty}^{c+i\infty}\frac{y^s}{s}\,ds=\begin{cases}1,&y>1,\\0,&0<y<1.\end{cases}$$
>
> 取 $y=x/n$ 即可筛出 $n\leq x$ 的项。

<!-- analytic_number_theory_truncated_perron_formula -->
> [!Theorem]
> **截断 Perron 公式 Truncated Perron Formula**：在 Perron 公式的条件下，对 $T\geq1$ 有
>
> $$
> \sum_{n\leq x}a_n=
> \frac{1}{2\pi i}\int_{c-iT}^{c+iT}F(s)\frac{x^s}{s}\,ds
> +O\left(\sum_{n=1}^{\infty}|a_n|\left(\frac{x}{n}\right)^c
> \min\left\{1,\frac{1}{T\left|\log(x/n)\right|}\right\}\right).
> $$
>
> **证明思路**：将无限竖直积分与高度 $T$ 的截断积分作差，对 Perron 核的截断误差逐项估计；当 $n$ 接近 $x$ 时保留平凡界，远离 $x$ 时利用振荡积分的界。

<!-- analytic_number_theory_summatory_function_integral_representation -->
> [!Corollary]
> **求和函数的积分表示 Integral Representation of a Summatory Function**：在上述条件下，数论函数 $a(n)$ 的求和函数
>
> $$A(x)=\sum_{n\leq x}a(n)$$
>
> 可由其 Dirichlet 生成函数表示为
>
> $$A(x)=\frac{1}{2\pi i}\int_{c-i\infty}^{c+i\infty}F(s)\frac{x^s}{s}\,ds\qquad(c>\sigma_a),$$
>
> 对非整数 $x$ 成立。移动积分路径并计算所越过奇点的留数，通常可提取 $A(x)$ 的主项；余下积分给出误差项。