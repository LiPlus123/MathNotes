## Weyl 均匀分布定理

<!-- analytic_number_theory_uniform_distribution_definition -->
> [!Definition]
> **均匀分布 Uniform Distribution**：实数列 $(x_n)_{n\geq1}$ 称为模 $1$ 均匀分布，若对任意区间 $[a,b)\subseteq[0,1)$，有
>
> $$\lim_{N\to\infty}\frac{1}{N}\#\{1\leq n\leq N:\{x_n\}\in[a,b)\}=b-a,$$
>
> 其中 $\{x\}$ 表示 $x$ 的小数部分。

<!-- analytic_number_theory_weyl_criterion_theorem -->
> [!Theorem]
> **Weyl 判别准则 Weyl Criterion**：实数列 $(x_n)$ 模 $1$ 均匀分布，当且仅当对每个非零整数 $h$，
>
> $$\frac1N\sum_{n=1}^{N}e(hx_n)\longrightarrow0\qquad(N\to\infty).$$
>
> **证明思路**：必要性由区间示性函数可由三角多项式逼近得到。充分性先对三角多项式成立，再借助连续函数的一致逼近和区间端点的逼近推出区间频率极限。

<!-- analytic_number_theory_weyl_polynomial_equidistribution_theorem -->
> [!Theorem]
> **多项式序列的均匀分布 Polynomial Equidistribution Theorem**：设
>
> $$P(n)=\alpha_kn^k+\cdots+\alpha_1n+\alpha_0$$
>
> 是实系数多项式。若 $\alpha_1,\ldots,\alpha_k$ 中至少一个系数无理，则序列 $(P(n))_{n\geq1}$ 模 $1$ 均匀分布。
>
> **证明思路**：由 Weyl 判别准则，只需对每个 $h\ne0$ 证明多项式相位和 $\sum_{n\leq N}e(hP(n))=o(N)$。对最高次无理系数作有理逼近，并反复应用 Weyl 差分或 Weyl 不等式即可。

<!-- analytic_number_theory_kronecker_equidistribution_example -->
> [!Example]+
> **无理旋转的均匀分布 Irrational Rotations are Equidistributed**：若 $\alpha\notin\mathbb{Q}$，则 $(n\alpha)_{n\geq1}$ 模 $1$ 均匀分布。
>
> **证明思路**：对 $h\ne0$，$e(h\alpha)\ne1$，故几何级数公式给出 $\sum_{n\leq N}e(hn\alpha)=O_h(1)$；除以 $N$ 后应用 Weyl 判别准则。