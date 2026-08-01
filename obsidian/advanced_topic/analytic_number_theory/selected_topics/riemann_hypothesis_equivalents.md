## Riemann 猜想的等价形式

<!-- analytic_number_theory_rh_prime_distribution_equivalent -->
> [!Theorem]
> **Riemann 猜想的素数分布等价形式 Prime-Distribution Equivalent of the Riemann Hypothesis**：Riemann 猜想等价于：对每个 $\varepsilon>0$，
>
> $$\psi(x)=x+O_\varepsilon\left(x^{1/2+\varepsilon}\right).$$
>
> 它亦等价于相应的 Chebyshev 函数误差界，且蕴含
>
> $$\pi(x)=\operatorname{li}(x)+O\left(\sqrt{x}\log x\right).$$
>
> **证明思路**：显式公式将 Chebyshev 函数的误差表示为 zeta 非平凡零点的贡献。零点实部均为 $1/2$ 恰好对应平方根量级的误差控制。

<!-- analytic_number_theory_mertens_conjecture_status -->
> [!Theorem]
> **Mertens 猜想的地位 Status of the Mertens Conjecture**：Mertens 猜想断言对所有 $x\geq1$，
>
> $$|M(x)|\leq\sqrt{x},\qquad M(x)=\sum_{n\leq x}\mu(n).$$
>
> 它蕴含 Riemann 猜想，但已被 Odlyzko 与 te Riele 否证。因此它不是 Riemann 猜想的等价形式。

> **证明思路**：若 Mertens 猜想成立，则 Möbius 函数部分和的增长界会给出 $1/\zeta(s)$ 在 $\operatorname{Re}(s)>1/2$ 的解析性，从而排除该区域中的零点。计算机辅助论证证明上述不等式在某处失效。

<!-- analytic_number_theory_robin_criterion_theorem -->
> [!Theorem]
> **Robin 判别法 Robin Criterion**：Riemann 猜想等价于对所有整数 $n>5040$ 有
>
> $$\sigma(n)<e^\gamma n\log\log n,$$
>
> 其中 $\gamma$ 为 Euler-Mascheroni 常数。
>
> **证明思路**：Robin 将约数和函数的极大阶与 zeta 函数零点的显式公式联系。Riemann 猜想成立时可控制异常大的 $\sigma(n)/n$；反之，任何违反此不等式的整数将导出临界线右侧的零点。

<!-- analytic_number_theory_rh_lindelof_implication -->
> [!Theorem]
> **Riemann 猜想与 Lindelöf 猜想 Riemann Hypothesis and the Lindelöf Hypothesis**：Riemann 猜想蕴含 Lindelöf 猜想，即对每个 $\varepsilon>0$，
>
> $$\zeta\left(\frac12+it\right)=O_\varepsilon\left(|t|^\varepsilon\right)\qquad(|t|\to\infty).$$
>
> Lindelöf 猜想本身也尚未解决，但它不被认为已知等价于 Riemann 猜想。

> **证明思路**：在 Riemann 猜想下，利用零点位置、函数方程和 Phragmén-Lindelöf 原理控制临界线附近的 zeta 函数增长。