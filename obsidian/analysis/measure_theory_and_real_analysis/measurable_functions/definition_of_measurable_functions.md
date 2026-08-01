# 可测函数的定义

## 可测函数与等价刻画

<!-- extended_real_valued_measurable_function_definition -->
> [!Definition]
> **广义实值可测函数 Extended-Real-Valued Measurable Function**：设 $(X,\mathcal{A})$ 是可测空间。函数
> $$
> f:X\to\overline{\mathbb{R}}
> $$
> 称为 $\mathcal{A}$-可测的，若对任意 $a\in\mathbb{R}$，有
> $$
> \{x\in X:f(x)>a\}\in\mathcal{A}.
> $$
> 若 $f$ 还取有限实值，则称 $f$ 为实值可测函数。

<!-- equivalent_conditions_for_measurable_functions -->
> [!Theorem]
> **可测函数的等价刻画 Equivalent Characterizations of Measurable Functions**：设 $f:X\to\overline{\mathbb{R}}$。下列条件等价：
> 1. $f$ 可测；
> 2. 对任意 $a\in\mathbb{R}$，$\{x:f(x)>a\}\in\mathcal{A}$；
> 3. 对任意 $a\in\mathbb{R}$，$\{x:f(x)\geq a\}\in\mathcal{A}$；
> 4. 对任意 $a\in\mathbb{R}$，$\{x:f(x)<a\}\in\mathcal{A}$；
> 5. 对任意 $a\in\mathbb{R}$，$\{x:f(x)\leq a\}\in\mathcal{A}$；
> 6. $f:(X,\mathcal{A})\to(\overline{\mathbb{R}},\mathcal{B}(\overline{\mathbb{R}}))$ 是可测映射。
>
> **证明思路**：利用补集将严格不等式化为反向非严格不等式；再使用有理数稠密性，如 $\{f\geq a\}=\bigcap_{n\geq1}\{f>a-1/n\}$。开半直线生成 $\mathcal{B}(\overline{\mathbb{R}})$，遂得到映射可测性的刻画。

<!-- measurable_function_level_set_example -->
> [!Example]+
> **示性函数 Indicator Function**：对 $E\subseteq X$，示性函数
> $$
> \mathbf{1}_E(x)=
> \begin{cases}
> 1, & x\in E,\\
> 0, & x\notin E
> \end{cases}
> $$
> 可测，当且仅当 $E\in\mathcal{A}$。事实上，当 $0\leq a<1$ 时，$\{\mathbf{1}_E>a\}=E$；其余阈值的原像为 $X$ 或 $\varnothing$。

## 可测函数的运算

<!-- measurable_functions_closed_under_limits -->
> [!Theorem]
> **可测函数列的点态极限 Pointwise Limits of Measurable Functions**：若 $\{f_n\}_{n\geq1}$ 是可测函数列，则
> $$
> \sup_{n\geq1}f_n,\qquad \inf_{n\geq1}f_n,\qquad \limsup_{n\to\infty}f_n,\qquad \liminf_{n\to\infty}f_n
> $$
> 均可测。特别地，若 $f_n(x)\to f(x)$ 对每个 $x\in X$ 成立，则 $f$ 可测。
>
> **证明思路**：例如 $\{\sup_nf_n>a\}=\bigcup_n\{f_n>a\}$；其余结论借助可数上、下确界表示得到。点态极限存在时等于上极限和下极限的共同值。

<!-- measurable_functions_closed_under_arithmetic -->
> [!Theorem]
> **可测函数的算术运算封闭性 Closure under Arithmetic Operations**：设 $f,g:X\to\mathbb{R}$ 为实值可测函数，$c\in\mathbb{R}$。则
> $$
> f+g,\qquad f-g,\qquad cf,\qquad fg,\qquad |f|,\qquad \max\{f,g\},\qquad \min\{f,g\}
> $$
> 均为可测函数；若 $g$ 处处非零，则 $f/g$ 也可测。
>
> **证明思路**：和可由 $\{f+g>a\}=\bigcup_{q\in\mathbb{Q}}\{f>q\}\cap\{g>a-q\}$ 表示；负数、绝对值、最大与最小值由代数恒等式或序运算得到，积与商再由连续函数复合的可测性得到。

<!-- continuous_composition_of_measurable_function -->
> [!Proposition]
> **连续函数复合保持可测性 Continuous Composition Preserves Measurability**：若 $f:(X,\mathcal{A})\to\mathbb{R}$ 可测，且 $\varphi:\mathbb{R}\to\mathbb{R}$ 连续，则 $\varphi\circ f$ 可测。
>
> **证明思路**：连续函数是 Borel 可测映射，故由可测映射的复合封闭性可知 $\varphi\circ f$ 可测。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 2.1；Donald L. Cohn, *Measure Theory*, 2nd ed., Chapter 2。
