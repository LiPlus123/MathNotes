# 极值与驻点

<!-- real_analysis_local_extremum_definition -->
> [!Definition]
> **局部极值 Local Extremum**：设 $f:D\to\mathbb{R}$，$a\in D$。若存在 $a$ 的邻域 $U$，使得对所有 $x\in U\cap D$ 有 $f(x)\leq f(a)$，则称 $a$ 为局部极大值点；若 $f(x)\geq f(a)$，则称为局部极小值点。二者统称局部极值点。

<!-- real_analysis_global_extremum_definition -->
> [!Definition]
> **最值 Global Extremum**：若对所有 $x\in D$ 有 $f(x)\leq f(a)$（或 $f(x)\geq f(a)$），则称 $f(a)$ 为 $f$ 在 $D$ 上的最大值（或最小值），称 $a$ 为最大值点（或最小值点）。

<!-- real_analysis_stationary_point_definition -->
> [!Definition]
> **驻点 Stationary Point**：若 $f$ 在 $a$ 处可导且
> $$
> f'(a)=0,
> $$
> 则称 $a$ 为 $f$ 的驻点。

<!-- real_analysis_fermat_extremum_necessary_condition -->
> [!Theorem]
> **内点极值的必要条件 Fermat's Necessary Condition**：若 $a$ 是 $f$ 的局部极值点，且 $f$ 在 $a$ 处可导，则 $a$ 是驻点。
>
> **证明思路**：这是 Fermat 引理的直接应用。

<!-- real_analysis_first_derivative_test -->
> [!Theorem]
> **一阶导数判别法 First Derivative Test**：设 $f$ 在 $a$ 的某去心邻域内可导并在 $a$ 处连续。若 $f'$ 在 $a$ 左侧非负、右侧非正，且两侧至少一侧严格，则 $a$ 为局部极大值点；若左侧非正、右侧非负，且两侧至少一侧严格，则 $a$ 为局部极小值点。
>
> **证明思路**：由导数符号判定函数在左右邻域分别单调，从而比较附近函数值与 $f(a)$。

<!-- real_analysis_second_derivative_test -->
> [!Theorem]
> **二阶导数判别法 Second Derivative Test**：若 $f'(a)=0$ 且 $f''(a)$ 存在，则：
> $$
> f''(a)>0\Longrightarrow a\text{ 为局部极小值点},
> $$
> $$
> f''(a)<0\Longrightarrow a\text{ 为局部极大值点}.
> $$
> 当 $f''(a)=0$ 时，该判别法不能确定极值性质。
>
> **证明思路**：由 $f''(a)$ 的符号知 $f'$ 在 $a$ 两侧的符号，从而应用一阶导数判别法。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 6。