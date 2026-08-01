# 函数项级数

<!-- real_analysis_function_series_definition -->
> [!Definition]
> **函数项级数 Series of Functions**：设 $f_n:E\to\mathbb{R}$。形式和
> $$
> \sum_{n=1}^\infty f_n(x)
> $$
> 称为函数项级数，其第 $N$ 个部分和为 $S_N(x)=\sum_{n=1}^Nf_n(x)$。若 $S_N(x)\to S(x)$，则称级数在 $x$ 处收敛；若 $S_N\rightrightarrows S$，则称该级数在 $E$ 上一致收敛。

<!-- real_analysis_uniform_convergence_cauchy_criterion_function_series -->
> [!Theorem]
> **函数项级数一致收敛的 Cauchy 准则 Uniform Cauchy Criterion for Function Series**：$\sum f_n$ 一致收敛，当且仅当对任意 $\varepsilon>0$，存在 $N$，使对任意 $m>n\geq N$ 及 $x\in E$，有
> $$
> \left|\sum_{k=n+1}^mf_k(x)\right|<\varepsilon.
> $$
>
> **证明思路**：直接将函数列 $S_N$ 的一致 Cauchy 准则应用于部分和列。

<!-- real_analysis_remainder_of_function_series_definition -->
> [!Definition]
> **余项 Remainder of a Function Series**：若 $\sum f_n$ 的和函数为 $S$，则第 $N$ 个余项定义为
> $$
> R_N(x)=S(x)-\sum_{n=1}^Nf_n(x)=\sum_{n=N+1}^\infty f_n(x).
> $$
> 一致收敛等价于 $\sup_{x\in E}|R_N(x)|\to0$。

<!-- real_analysis_uniformly_convergent_function_series_properties -->
> [!Theorem]
> **一致收敛函数项级数的性质 Properties of Uniformly Convergent Function Series**：若 $\sum f_n$ 在 $E$ 上一致收敛，则可逐项进行有限线性组合；若每个 $f_n$ 连续，则和函数连续。若 $E=[a,b]$、每个 $f_n$ Riemann 可积且级数一致收敛，则
> $$
> \int_a^b\sum_{n=1}^\infty f_n(x)\,\mathrm{d}x
> =\sum_{n=1}^\infty\int_a^bf_n(x)\,\mathrm{d}x.
> $$
>
> **证明思路**：和函数由部分和一致逼近。对积分，用 $|\int(S-S_N)|\leq(b-a)\sup|S-S_N|$ 控制误差。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 7。