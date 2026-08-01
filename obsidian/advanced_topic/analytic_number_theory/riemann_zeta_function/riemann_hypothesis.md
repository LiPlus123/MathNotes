## Riemann 猜想

<!-- analytic_number_theory_riemann_hypothesis_statement -->
> [!Definition]
> **Riemann 猜想 Riemann Hypothesis**：Riemann zeta 函数的每个非平凡零点 $\rho$ 都满足
>
> $$\operatorname{Re}(\rho)=\frac12.$$
>
> 这是一个尚未解决的猜想，而非已证定理。

<!-- analytic_number_theory_riemann_hypothesis_prime_error_consequence -->
> [!Theorem]
> **Riemann 猜想的素数分布推论 Prime-Distribution Consequence of the Riemann Hypothesis**：Riemann 猜想等价于：对每个 $\varepsilon>0$，
>
> $$\psi(x)=x+O\left(x^{1/2+\varepsilon}\right).$$
>
> 它还蕴含更精细的估计
>
> $$\psi(x)=x+O\left(\sqrt{x}(\log x)^2\right).$$
>
> **证明思路**：显式公式将 $\psi(x)-x$ 表示为非平凡零点贡献之和。若零点实部均为 $1/2$，则各项的大小受 $x^{1/2}$ 控制；反向蕴含由显式公式或 Mellin 变换的解析延拓性质获得。

<!-- analytic_number_theory_riemann_hypothesis_partial_results -->
> [!Theorem]
> **Riemann 猜想的部分结果 Partial Results toward the Riemann Hypothesis**：已知所有非平凡零点位于临界带内，且临界线 $\operatorname{Re}(s)=1/2$ 上有无穷多个零点；更强地，已知有正比例的非平凡零点位于临界线上。但目前尚未证明所有非平凡零点都位于该直线。
>
> **证明思路**：临界带位置来自 Euler 乘积与函数方程；临界线结果使用 Hardy 函数及其矩方法。证明全部零点在临界线上的关键困难尚未解决。

<!-- analytic_number_theory_riemann_hypothesis_numerical_verification_note -->
> [!Example]+
> **Riemann 猜想的数值验证 Numerical Verification of the Riemann Hypothesis**：通过高精度计算，已对临界线上高度很大的有限范围内全部零点作过验证；这为猜想提供强有力的数值证据，但任意有限次验证都不能证明关于全部零点的陈述。