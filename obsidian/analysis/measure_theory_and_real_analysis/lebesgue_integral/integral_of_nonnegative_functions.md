# 非负可测函数的积分

## 非负可测函数的积分

<!-- integral_of_nonnegative_measurable_function_definition -->
> [!Definition]
> **非负可测函数的 Lebesgue 积分 Lebesgue Integral of a Nonnegative Measurable Function**：设 $(X,\mathcal{A},\mu)$ 为测度空间，$f:X\to[0,+\infty]$ 可测。定义
> $$
> \int_Xf\,d\mu
> =\sup\left\{\int_Xs\,d\mu:0\leq s\leq f,\ s\text{ 为非负简单函数}\right\}.
> $$
> 对 $A\in\mathcal{A}$，定义
> $$
> \int_Af\,d\mu=\int_Xf\mathbf{1}_A\,d\mu.
> $$

<!-- monotonicity_of_nonnegative_integral -->
> [!Proposition]
> **非负积分的单调性 Monotonicity of the Nonnegative Integral**：若 $f,g:X\to[0,+\infty]$ 可测且 $f\leq g$，则
> $$
> \int_Xf\,d\mu\leq\int_Xg\,d\mu.
> $$
>
> **证明思路**：所有满足 $0\leq s\leq f$ 的非负简单函数也满足 $0\leq s\leq g$；比较定义中取上确界的两个集合即可。

<!-- monotone_convergence_theorem -->
> [!Theorem]
> **单调收敛定理 Monotone Convergence Theorem**：设 $f_n:X\to[0,+\infty]$ 可测，且
> $$
> f_1\leq f_2\leq\cdots,
> \qquad
> f_n(x)\uparrow f(x)\quad(x\in X).
> $$
> 则
> $$
> \int_Xf\,d\mu=\lim_{n\to\infty}\int_Xf_n\,d\mu.
> $$
>
> **证明思路**：单调性给出右侧不超过左侧。对任意 $0<\alpha<1$ 与 $f$ 下方的简单函数 $s$，集合 $\{f_n\geq\alpha s\}$ 递增覆盖 $\{s>0\}$；由简单函数积分与测度从下连续性得 $\lim_n\int f_n\geq\alpha\int s$，再取上确界并令 $\alpha\uparrow1$。

<!-- fatou_lemma -->
> [!Theorem]
> **Fatou 引理 Fatou's Lemma**：设 $f_n:X\to[0,+\infty]$ 为可测函数列，则
> $$
> \int_X\liminf_{n\to\infty}f_n\,d\mu
> \leq\liminf_{n\to\infty}\int_Xf_n\,d\mu.
> $$
>
> **证明思路**：令 $g_n=\inf_{k\geq n}f_k$，则 $g_n\uparrow\liminf_nf_n$。由单调收敛定理，$\int g_n\to\int\liminf f_n$；又 $g_n\leq f_k$ 对所有 $k\geq n$ 成立，取下确界即得。

<!-- integral_zero_characterization_nonnegative -->
> [!Proposition]
> **非负函数积分为零的刻画 Characterization of Zero Integral for Nonnegative Functions**：若 $f:X\to[0,+\infty]$ 可测，则
> $$
> \int_Xf\,d\mu=0
> \quad\Longleftrightarrow\quad
> f=0\quad\text{a.e.}
> $$
>
> **证明思路**：若 $f=0$ 几乎处处，则所有下方简单函数的积分为零。反之，对每个 $n\geq1$，有 $\mathbf{1}_{\{f>1/n\}}/n\leq f$，所以 $\mu(\{f>1/n\})=0$；这些集合的并为 $\{f>0\}$。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Section 2.1；Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 3。
