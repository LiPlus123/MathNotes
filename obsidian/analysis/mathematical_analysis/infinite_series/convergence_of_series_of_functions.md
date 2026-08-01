# 函数项级数的收敛判别

<!-- real_analysis_weierstrass_m_test -->
> [!Theorem]
> **Weierstrass M-判别法 Weierstrass M-Test**：设 $f_n:E\to\mathbb{R}$，且存在非负数列 $(M_n)$ 满足
> $$
> |f_n(x)|\leq M_n
> \qquad(x\in E).
> $$
> 若数项级数 $\sum M_n$ 收敛，则 $\sum f_n$ 在 $E$ 上绝对且一致收敛。
>
> **证明思路**：任一尾和绝对值不超过 $\sum_{k=n+1}^mM_k$，再由数项级数的 Cauchy 准则得到函数项级数的一致 Cauchy 准则。

<!-- real_analysis_dirichlet_test_for_function_series -->
> [!Theorem]
> **函数项级数的 Dirichlet 判别法 Dirichlet Test for Function Series**：设 $\sum a_n(x)b_n(x)$ 定义于 $E$。若 $\sum_{k=1}^na_k(x)$ 的部分和在 $E$ 上一致有界，且对每个 $x$，$b_n(x)$ 单调趋于 $0$ 并且该趋零在 $E$ 上一致，则 $\sum a_n(x)b_n(x)$ 在 $E$ 上一致收敛。
>
> **证明思路**：使用 Abel 变换表达尾和；由部分和的一致有界性、$b_n$ 的单调性与一致趋零控制该表达式。

<!-- real_analysis_abel_test_for_function_series -->
> [!Theorem]
> **函数项级数的 Abel 判别法 Abel Test for Function Series**：若 $\sum a_n(x)$ 在 $E$ 上一致收敛，$b_n(x)$ 在 $E$ 上一致有界，且对每个 $x$ 随 $n$ 单调，并一致收敛到某函数 $b(x)$，则 $\sum a_n(x)b_n(x)$ 在 $E$ 上一致收敛。
>
> **证明思路**：将 $b_n$ 分解为极限 $b$ 与单调趋零部分，再对后者应用函数项级数 Dirichlet 判别法。

> **注**：本小节参见 Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 8。