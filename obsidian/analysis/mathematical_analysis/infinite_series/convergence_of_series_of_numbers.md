# 数项级数的收敛判别

<!-- real_analysis_positive_series_comparison_test -->
> [!Theorem]
> **正项级数比较判别法 Comparison Test for Positive Series**：设 $0\leq a_n\leq b_n$ 从某项起成立。若 $\sum b_n$ 收敛，则 $\sum a_n$ 收敛；若 $\sum a_n$ 发散，则 $\sum b_n$ 发散。
>
> **证明思路**：正项级数的部分和递增，且前者受后者部分和控制。

<!-- real_analysis_limit_comparison_test_for_series -->
> [!Theorem]
> **极限比较判别法 Limit Comparison Test**：设 $a_n,b_n>0$ 从某项起成立，且
> $$
> \lim_{n\to\infty}\frac{a_n}{b_n}=c
> \qquad(0<c<+\infty).
> $$
> 则 $\sum a_n$ 与 $\sum b_n$ 同敛散。
>
> **证明思路**：从某项起 $a_n$ 夹在 $b_n$ 的两个正数倍之间，应用比较判别法。

<!-- real_analysis_ratio_and_root_tests -->
> [!Theorem]
> **比值判别法与根值判别法 Ratio and Root Tests**：设 $a_n\ne0$ 从某项起成立。
> 1. 若 $\limsup|a_{n+1}/a_n|<1$，则 $\sum a_n$ 绝对收敛；若 $\liminf|a_{n+1}/a_n|>1$，则发散。
> 2. 若 $\limsup\sqrt[n]{|a_n|}<1$，则绝对收敛；若 $\limsup\sqrt[n]{|a_n|}>1$，则发散。
>
> **证明思路**：收敛情形中将项估计为某个收敛几何级数的项；发散情形中 $a_n$ 不趋于零。

<!-- real_analysis_integral_test_and_p_series -->
> [!Theorem]
> **积分判别法与 $p$-级数 Integral Test and $p$-Series**：若 $f:[1,+\infty)\to[0,+\infty)$ 连续、单调递减，且 $a_n=f(n)$，则 $\sum a_n$ 与 $\int_1^{+\infty}f(x)\,\mathrm{d}x$ 同敛散。特别地，
> $$
> \sum_{n=1}^\infty\frac1{n^p}
> \begin{cases}
> \text{收敛},&p>1,\\
> \text{发散},&p\leq1.
> \end{cases}
> $$
>
> **证明思路**：用单调性将每个 $f(n)$ 与相邻单位区间上的积分夹逼。

<!-- real_analysis_alternating_series_test -->
> [!Theorem]
> **Leibniz 判别法 Alternating Series Test**：若 $a_n\geq0$ 单调递减且 $a_n\to0$，则交错级数
> $$
> \sum_{n=1}^\infty(-1)^{n-1}a_n
> $$
> 收敛，且余项满足 $|R_n|\leq a_{n+1}$。
>
> **证明思路**：偶数部分和递增、奇数部分和递减，二者夹逼且差为 $a_{2n+1}\to0$。

<!-- real_analysis_dirichlet_and_abel_tests_for_series -->
> [!Theorem]
> **Dirichlet 与 Abel 判别法 Dirichlet and Abel Tests for Series**：若 $a_n$ 单调趋于 $0$，且 $\sum_{k=1}^n b_k$ 的部分和有界，则 $\sum a_nb_n$ 收敛。若 $\sum a_n$ 收敛且 $b_n$ 单调有界，则 $\sum a_nb_n$ 收敛。
>
> **证明思路**：对有限和作 Abel 变换（离散分部求和），再以部分和有界和单调性估计尾项。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 3；Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8。