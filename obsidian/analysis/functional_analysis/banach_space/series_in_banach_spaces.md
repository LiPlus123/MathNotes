# 巴拿赫空间中的级数

<!-- functional_analysis_banach_space_series_definition -->
> [!Definition]
> **Banach 空间中的级数 Series in a Banach Space**：设 $X$ 是赋范线性空间，$(x_n)_{n\geq1}\subseteq X$。记第 $N$ 个部分和为
> $$
> s_N=\sum_{n=1}^Nx_n.
> $$
> 若 $(s_N)_{N\geq1}$ 在 $X$ 中收敛到 $s$，则称级数 $\sum_{n=1}^{\infty}x_n$ **收敛 Converges** 到 $s$，并记 $s=\sum_{n=1}^{\infty}x_n$。

<!-- functional_analysis_banach_space_series_cauchy_criterion -->
> [!Theorem]
> **级数收敛的柯西准则 Cauchy Criterion for Series**：设 $X$ 是 Banach 空间。级数 $\sum_{n=1}^{\infty}x_n$ 收敛，当且仅当对任意 $\varepsilon>0$，存在 $N\in\mathbb{Z}^+$，使得任意 $m\geq n\geq N$ 都有
> $$
> \left\|\sum_{k=n}^{m}x_k\right\|<\varepsilon.
> $$
>
> **证明思路**：上式等价于部分和列 $(s_N)$ 为柯西列。由 Banach 空间的完备性，部分和列是柯西列当且仅当它收敛。

<!-- functional_analysis_absolute_convergence_definition -->
> [!Definition]
> **绝对收敛 Absolute Convergence**：若
> $$
> \sum_{n=1}^{\infty}\|x_n\|<+\infty,
> $$
> 则称 Banach 空间中的级数 $\sum_{n=1}^{\infty}x_n$ **绝对收敛 Absolutely Convergent**。

<!-- functional_analysis_absolute_convergence_implies_convergence -->
> [!Theorem]
> **绝对收敛蕴含收敛 Absolute Convergence Implies Convergence**：在 Banach 空间中，绝对收敛的级数必收敛。
>
> **证明思路**：由三角不等式，对 $m\geq n$ 有
> $$
> \left\|\sum_{k=n}^{m}x_k\right\|\leq\sum_{k=n}^{m}\|x_k\|.
> $$
> 标量正项级数的尾和趋于 $0$，故部分和列为柯西列；再应用级数收敛的柯西准则。

<!-- functional_analysis_series_remainder_estimate -->
> [!Corollary]
> **绝对收敛级数的余项估计 Remainder Estimate for Absolutely Convergent Series**：若 $\sum_{n=1}^{\infty}x_n$ 在 Banach 空间中绝对收敛，且和为 $s$，则
> $$
> \left\|s-\sum_{n=1}^Nx_n\right\|\leq\sum_{n=N+1}^{\infty}\|x_n\|.
> $$
>
> **证明思路**：将余项写成尾级数之和，对有限部分和使用三角不等式，再令部分和指标趋于无穷。