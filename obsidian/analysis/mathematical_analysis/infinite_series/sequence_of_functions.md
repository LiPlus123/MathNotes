# 函数列

<!-- real_analysis_sequence_of_functions_definition -->
> [!Definition]
> **函数列 Sequence of Functions**：定义在集合 $E$ 上的一列函数 $(f_n)_{n\geq1}$ 称为函数列。若对每个 $x\in E$，数列 $(f_n(x))$ 收敛到 $f(x)$，则称 $f_n$ 在 $E$ 上逐点收敛到 $f$，记为 $f_n(x)\to f(x)$。

<!-- real_analysis_uniform_convergence_definition -->
> [!Definition]
> **一致收敛 Uniform Convergence**：函数列 $f_n:E\to\mathbb{R}$ 称一致收敛到 $f:E\to\mathbb{R}$，若对任意 $\varepsilon>0$，存在 $N$，使对所有 $n\geq N$ 及所有 $x\in E$，都有
> $$
> |f_n(x)-f(x)|<\varepsilon.
> $$
> 记为 $f_n\rightrightarrows f$。

<!-- real_analysis_uniform_convergence_cauchy_criterion -->
> [!Theorem]
> **函数列一致收敛的 Cauchy 准则 Uniform Cauchy Criterion**：函数列 $f_n:E\to\mathbb{R}$ 一致收敛，当且仅当对任意 $\varepsilon>0$，存在 $N$，使任意 $m,n\geq N$ 及 $x\in E$ 都有
> $$
> |f_m(x)-f_n(x)|<\varepsilon.
> $$
>
> **证明思路**：必要性由三角不等式。充分性中，对每个固定 $x$ 使用实数完备性得到点态极限，再保留对 $x$ 一致的 Cauchy 估计。

<!-- real_analysis_uniform_limit_continuity -->
> [!Theorem]
> **连续函数列的一致极限 Uniform Limit Theorem**：若每个 $f_n$ 在 $E$ 上连续，且 $f_n\rightrightarrows f$，则 $f$ 连续。
>
> **证明思路**：在一点附近先选一个 $f_N$ 一致逼近 $f$，再用 $f_N$ 的连续性控制中间项，以三角不等式完成估计。

<!-- real_analysis_pointwise_not_uniform_example -->
> [!Example]+
> **逐点而非一致收敛的例子 Pointwise but not Uniform Convergence**：在 $[0,1]$ 上，$f_n(x)=x^n$ 逐点收敛到
> $$
> f(x)=\begin{cases}0,&0\leq x<1,\\1,&x=1.\end{cases}
> $$
> 但不一致收敛，因为每个 $f_n$ 连续而极限函数不连续。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 7。