# 反常积分

<!-- real_analysis_improper_integral_unbounded_interval_definition -->
> [!Definition]
> **无穷区间反常积分 Improper Integral on an Unbounded Interval**：若 $f$ 在每个 $[a,R]$（$R>a$）上 Riemann 可积，且有限极限
> $$
> \lim_{R\to+\infty}\int_a^Rf(x)\,\mathrm{d}x
> $$
> 存在，则称反常积分 $\int_a^{+\infty}f(x)\,\mathrm{d}x$ 收敛，并将其定义为该极限；否则称其发散。$(-\infty,b]$ 情形对偶。

<!-- real_analysis_improper_integral_singularity_definition -->
> [!Definition]
> **瑕积分 Improper Integral with a Singular Point**：若 $f$ 在 $[a,b)$ 上 Riemann 可积，且 $b$ 为瑕点，则定义
> $$
> \int_a^bf(x)\,\mathrm{d}x
> =\lim_{t\to b^-}\int_a^tf(x)\,\mathrm{d}x
> $$
> （若极限存在且有限）。内部瑕点 $c\in(a,b)$ 时，要求 $\int_a^c f$ 与 $\int_c^b f$ 分别收敛。

<!-- real_analysis_improper_integral_comparison_test -->
> [!Theorem]
> **比较判别法 Comparison Test**：设 $0\leq f(x)\leq g(x)$ 于 $[a,+\infty)$ 上成立，且二者在任意有限闭区间可积。则：
> 1. 若 $\int_a^{+\infty}g(x)\,\mathrm{d}x$ 收敛，则 $\int_a^{+\infty}f(x)\,\mathrm{d}x$ 收敛；
> 2. 若 $\int_a^{+\infty}f(x)\,\mathrm{d}x$ 发散，则 $\int_a^{+\infty}g(x)\,\mathrm{d}x$ 发散。
>
> **证明思路**：截断积分满足 $0\leq\int_a^R f\leq\int_a^R g$，再以单调有界函数的极限存在性处理第一项；第二项为逆否命题。

<!-- real_analysis_improper_integral_limit_comparison_test -->
> [!Theorem]
> **极限比较判别法 Limit Comparison Test**：设 $f,g>0$ 于充分大的 $x$ 成立，且
> $$
> \lim_{x\to+\infty}\frac{f(x)}{g(x)}=c
> \qquad(0<c<+\infty).
> $$
> 则 $\int_a^{+\infty}f(x)\,\mathrm{d}x$ 与 $\int_a^{+\infty}g(x)\,\mathrm{d}x$ 同敛散。
>
> **证明思路**：当 $x$ 充分大时，$f$ 夹在 $g$ 的两个正数倍之间，应用比较判别法。

<!-- real_analysis_dirichlet_test_improper_integrals -->
> [!Theorem]
> **Dirichlet 判别法 Dirichlet Test for Improper Integrals**：设 $f$ 在 $[a,+\infty)$ 上单调且 $f(x)\to0$，$g$ 在每个有限闭区间可积，且其原函数
> $$
> G(x)=\int_a^xg(t)\,\mathrm{d}t
> $$
> 有界。则
> $$
> \int_a^{+\infty}f(x)g(x)\,\mathrm{d}x
> $$
> 收敛。
>
> **证明思路**：对截断区间作分部积分，利用 $G$ 有界及 $f$ 单调趋零，证明积分尾部满足 Cauchy 准则。

<!-- real_analysis_abel_test_improper_integrals -->
> [!Theorem]
> **Abel 判别法 Abel Test for Improper Integrals**：设 $\int_a^{+\infty}f(x)\,\mathrm{d}x$ 收敛，且 $g$ 在 $[a,+\infty)$ 上单调有界，则
> $$
> \int_a^{+\infty}f(x)g(x)\,\mathrm{d}x
> $$
> 收敛。
>
> **证明思路**：令 $F(x)=\int_a^xf(t)\,\mathrm{d}t$；$F$ 有有限极限，故有界。将 $g$ 写成其极限与一个单调趋零的函数，再应用 Dirichlet 判别法。

<!-- real_analysis_absolute_and_conditional_convergence_definition -->
> [!Definition]
> **绝对收敛与条件收敛 Absolute and Conditional Convergence**：若
> $$
> \int_a^{+\infty}|f(x)|\,\mathrm{d}x
> $$
> 收敛，则称 $\int_a^{+\infty}f(x)\,\mathrm{d}x$ 绝对收敛；若原积分收敛但绝对值积分发散，则称其条件收敛。绝对收敛必蕴含收敛。

<!-- real_analysis_improper_integral_examples -->
> [!Example]+
> **反常积分的例子 Examples of Improper Integrals**：$p$-积分满足
> $$
> \int_1^{+\infty}\frac{1}{x^p}\,\mathrm{d}x
> \begin{cases}
> \text{收敛},&p>1,\\
> \text{发散},&p\leq1.
> \end{cases}
> $$
> 另一方面，$\int_1^{+\infty}\sin x/x\,\mathrm{d}x$ 由 Dirichlet 判别法收敛，但不绝对收敛，因而条件收敛。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 8。