# 一般可测函数的积分

## 可积函数与积分定义

<!-- integral_of_general_measurable_function_definition -->
> [!Definition]
> **一般可测函数的积分 Integral of a General Measurable Function**：设 $f:X\to\overline{\mathbb{R}}$ 可测，并定义正部与负部
> $$
> f^+=\max\{f,0\},
> \qquad
> f^-=\max\{-f,0\}.
> $$
> 若 $\int_Xf^+\,d\mu$ 与 $\int_Xf^-\,d\mu$ 至少有一个有限，则定义
> $$
> \int_Xf\,d\mu
> =\int_Xf^+\,d\mu-\int_Xf^-\,d\mu.
> $$
> 此定义避免了 $+\infty-(+\infty)$ 的未定式。

<!-- integrable_function_definition -->
> [!Definition]
> **可积函数 Integrable Function**：可测函数 $f:X\to\overline{\mathbb{R}}$ 称为可积的，若
> $$
> \int_X|f|\,d\mu<+\infty.
> $$
> 此时记为 $f\in L^1(\mu)$，并有
> $$
> \int_X|f|\,d\mu
> =\int_Xf^+\,d\mu+\int_Xf^-\,d\mu<+\infty.
> $$

<!-- linearity_of_integral_for_integrable_functions -->
> [!Theorem]
> **可积函数积分的线性性 Linearity of the Integral for Integrable Functions**：若 $f,g\in L^1(\mu)$，且 $a,b\in\mathbb{R}$，则 $af+bg\in L^1(\mu)$，并且
> $$
> \int_X(af+bg)\,d\mu
> =a\int_Xf\,d\mu+b\int_Xg\,d\mu.
> $$
>
> **证明思路**：先对非负可测函数利用简单函数逼近证明可加性；再将一般可积函数分解为正、负部。由 $|af+bg|\leq|a||f|+|b||g|$ 可知线性组合仍可积。

<!-- monotonicity_of_general_integral -->
> [!Proposition]
> **一般积分的单调性 Monotonicity of the General Integral**：若 $f,g\in L^1(\mu)$ 且 $f\leq g$ 几乎处处，则
> $$
> \int_Xf\,d\mu\leq\int_Xg\,d\mu.
> $$
>
> **证明思路**：$g-f$ 为非负可积函数，故 $\int_X(g-f)\,d\mu\geq0$；再利用积分的线性性。

<!-- absolute_value_integral_inequality -->
> [!Proposition]
> **积分的绝对值不等式 Absolute-Value Inequality for Integrals**：若 $f\in L^1(\mu)$，则
> $$
> \left|\int_Xf\,d\mu\right|\leq\int_X|f|\,d\mu.
> $$
>
> **证明思路**：由 $-|f|\leq f\leq|f|$，对两侧应用单调性，再合并两条不等式。

<!-- dominated_convergence_theorem -->
> [!Theorem]
> **控制收敛定理 Dominated Convergence Theorem**：设 $f_n:X\to\mathbb{R}$ 为可测函数，且 $f_n\to f$ 几乎处处。若存在 $g\in L^1(\mu)$，使得对每个 $n$，
> $$
> |f_n|\leq g\quad\text{a.e.},
> $$
> 则 $f\in L^1(\mu)$，每个 $f_n\in L^1(\mu)$，且
> $$
> \lim_{n\to\infty}\int_X|f_n-f|\,d\mu=0,
> \qquad
> \lim_{n\to\infty}\int_Xf_n\,d\mu=\int_Xf\,d\mu.
> $$
>
> **证明思路**：由 $|f|\leq g$ 知 $f$ 可积。对非负函数 $g+f_n$ 与 $g-f_n$ 分别应用 Fatou 引理，得到积分上、下极限的夹逼；再对 $|f_n-f|$ 使用支配函数 $2g$ 获得 $L^1$ 收敛。

<!-- integral_over_set_for_integrable_function -->
> [!Definition]
> **可积函数在集合上的积分 Integral of an Integrable Function over a Set**：若 $f\in L^1(\mu)$ 且 $A\in\mathcal{A}$，定义
> $$
> \int_Af\,d\mu=\int_Xf\mathbf{1}_A\,d\mu.
> $$
> 此积分满足
> $$
> \left|\int_Af\,d\mu\right|\leq\int_A|f|\,d\mu.
> $$

> **注**：本小节参见 Gerald B. Folland, *Real Analysis*, 2nd ed., Sections 2.1--2.2；Elias M. Stein and Rami Shakarchi, *Real Analysis*, Chapter 2。
