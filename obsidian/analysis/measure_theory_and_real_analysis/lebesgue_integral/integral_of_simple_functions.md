# 简单函数的积分

## 非负简单函数的积分

<!-- integral_of_nonnegative_simple_function_definition -->
> [!Definition]
> **非负简单函数的积分 Integral of a Nonnegative Simple Function**：设 $(X,\mathcal{A},\mu)$ 为测度空间，且
> $$
> s=\sum_{i=1}^{n}a_i\mathbf{1}_{E_i}
> $$
> 是非负简单函数，其中 $a_i\geq0$，集合 $E_i\in\mathcal{A}$ 两两不交。定义 $s$ 关于 $\mu$ 的积分为
> $$
> \int_Xs\,d\mu=\sum_{i=1}^{n}a_i\mu(E_i).
> $$
> 右侧的和取值于 $[0,+\infty]$。

<!-- well_definedness_of_simple_function_integral -->
> [!Theorem]
> **简单函数积分的良定义性 Well-Definedness of the Simple-Function Integral**：非负简单函数的积分不依赖于其两两不交可测集表示。
>
> **证明思路**：给定两种表示，取两族集合的所有交集作为共同细分。每个原表示的集合都是细分集合的有限个不交并；应用测度的有限可加性，将两边的积分都化为共同细分上的相同有限和。

<!-- integral_of_indicator_function -->
> [!Proposition]
> **示性函数的积分 Integral of an Indicator Function**：对每个 $E\in\mathcal{A}$，
> $$
> \int_X\mathbf{1}_E\,d\mu=\mu(E).
> $$
> 更一般地，若 $a\geq0$，则
> $$
> \int_Xa\mathbf{1}_E\,d\mu=a\mu(E).
> $$
>
> **证明思路**：将 $\mathbf{1}_E$ 视为仅在 $E$ 上取值 $1$ 的简单函数，直接代入定义。

<!-- linearity_of_nonnegative_simple_function_integral -->
> [!Theorem]
> **非负简单函数积分的线性性 Linearity of the Nonnegative Simple-Function Integral**：若 $s,t$ 是非负简单函数，且 $a,b\geq0$，则
> $$
> \int_X(as+bt)\,d\mu=a\int_Xs\,d\mu+b\int_Xt\,d\mu.
> $$
>
> **证明思路**：对 $s$ 与 $t$ 的可测分割取共同细分；在每个细分块上，$as+bt$ 为常数，再以测度的有限可加性整理求和。

<!-- monotonicity_of_simple_function_integral -->
> [!Proposition]
> **简单函数积分的单调性 Monotonicity of the Simple-Function Integral**：若 $s,t$ 是非负简单函数，且 $s\leq t$ 处处成立，则
> $$
> \int_Xs\,d\mu\leq\int_Xt\,d\mu.
> $$
>
> **证明思路**：取两函数对应的共同细分。在每个细分块上，$s$ 的常值不超过 $t$ 的常值；乘以非负测度并求和即得。

<!-- simple_function_integral_over_set_definition -->
> [!Definition]
> **简单函数在集合上的积分 Integral of a Simple Function over a Set**：若 $s$ 是非负简单函数，$A\in\mathcal{A}$，定义
> $$
> \int_A s\,d\mu=\int_Xs\mathbf{1}_A\,d\mu.
> $$
> 当 $s=\sum_{i=1}^{n}a_i\mathbf{1}_{E_i}$ 为两两不交标准表示时，
> $$
> \int_A s\,d\mu=\sum_{i=1}^{n}a_i\mu(E_i\cap A).
> $$

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 2.1；Elias M. Stein and Rami Shakarchi, *Real Analysis: Measure Theory, Integration, and Hilbert Spaces*, Chapter 1。
