# 数项级数

<!-- real_analysis_numerical_series_definition -->
> [!Definition]
> **数项级数 Numerical Series**：给定实数列 $(a_n)_{n\geq1}$，其部分和为
> $$
> s_n=\sum_{k=1}^na_k.
> $$
> 若数列 $(s_n)$ 收敛到 $s$，则称无穷级数 $\sum_{n=1}^\infty a_n$ 收敛，并定义
> $$
> \sum_{n=1}^\infty a_n=s.
> $$
> 否则称其发散。

<!-- real_analysis_series_cauchy_criterion -->
> [!Theorem]
> **数项级数的 Cauchy 收敛准则 Cauchy Criterion for Series**：级数 $\sum_{n=1}^\infty a_n$ 收敛，当且仅当对任意 $\varepsilon>0$，存在 $N\in\mathbb{N}$，使得任意 $m>n\geq N$ 都有
> $$
> \left|\sum_{k=n+1}^ma_k\right|<\varepsilon.
> $$
>
> **证明思路**：这正是部分和列 $(s_n)$ 为 Cauchy 列的条件；实数的完备性给出其等价于收敛。

<!-- real_analysis_series_term_test -->
> [!Theorem]
> **级数收敛的必要条件 Term Test**：若 $\sum_{n=1}^\infty a_n$ 收敛，则
> $$
> \lim_{n\to\infty}a_n=0.
> $$
>
> **证明思路**：$a_n=s_n-s_{n-1}$，而两个部分和列都趋于同一极限。

<!-- real_analysis_absolute_and_conditional_series_convergence -->
> [!Definition]
> **绝对收敛与条件收敛 Absolute and Conditional Convergence**：若 $\sum|a_n|$ 收敛，则称 $\sum a_n$ 绝对收敛；若 $\sum a_n$ 收敛但 $\sum|a_n|$ 发散，则称其条件收敛。

<!-- real_analysis_absolute_convergence_implies_convergence -->
> [!Theorem]
> **绝对收敛蕴含收敛 Absolute Convergence Implies Convergence**：若 $\sum|a_n|$ 收敛，则 $\sum a_n$ 收敛。
>
> **证明思路**：对任意尾和，三角不等式给出
> $$
> \left|\sum_{k=n+1}^ma_k\right|\leq\sum_{k=n+1}^m|a_k|.
> $$
> 再应用 Cauchy 收敛准则。

<!-- real_analysis_series_algebraic_operations -->
> [!Theorem]
> **级数的四则运算 Operations on Convergent Series**：若 $\sum a_n=A$、$\sum b_n=B$，且 $\alpha,\beta\in\mathbb{R}$，则
> $$
> \sum_{n=1}^\infty(\alpha a_n+\beta b_n)=\alpha A+\beta B.
> $$
> 若两级数绝对收敛，则其 Cauchy 乘积也绝对收敛，且
> $$
> \left(\sum_{n=1}^\infty a_n\right)\left(\sum_{n=1}^\infty b_n\right)
> =\sum_{n=2}^\infty\sum_{k=1}^{n-1}a_kb_{n-k}.
> $$
>
> **证明思路**：线性性来自部分和线性性。绝对收敛时可重排双重非负级数，有限 Cauchy 乘积的极限给出乘积公式。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 3；Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8。