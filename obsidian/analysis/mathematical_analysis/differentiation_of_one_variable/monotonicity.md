# 函数的单调性

<!-- real_analysis_monotone_function_definition -->
> [!Definition]
> **单调函数 Monotone Function**：设 $I\subseteq\mathbb{R}$ 为区间，$f:I\to\mathbb{R}$。若对任意 $x,y\in I$，
> $$
> x\leq y\Longrightarrow f(x)\leq f(y),
> $$
> 则称 $f$ 在 $I$ 上单调递增；若将结论改为 $f(x)\geq f(y)$，则称为单调递减。若对 $x<y$ 有严格不等式，则称为严格单调。

<!-- real_analysis_derivative_monotonicity_criterion -->
> [!Theorem]
> **单调性判定法 Derivative Criterion for Monotonicity**：设 $f$ 在区间 $I$ 的内点处可导。若对每个内点 $x$ 都有 $f'(x)\geq0$，则 $f$ 在 $I$ 上单调递增；若 $f'(x)\leq0$，则单调递减。若处处 $f'(x)>0$，则严格递增；若处处 $f'(x)<0$，则严格递减。
>
> **证明思路**：对任意 $x<y$，Lagrange 中值定理给出 $f(y)-f(x)=f'(c)(y-x)$，其中 $c\in(x,y)$；由导数符号即得结论。

<!-- real_analysis_constant_function_derivative_criterion -->
> [!Corollary]
> **常值函数判别 Constant Function Criterion**：设 $f$ 在区间 $I$ 的内点处可导。则
> $$
> f'\equiv0
> $$
> 当且仅当 $f$ 在 $I$ 上为常值函数。
>
> **证明思路**：常值函数导数显然为零；反向使用单调性判定法，$f'\geq0$ 与 $f'\leq0$ 同时成立，故 $f$ 同时递增和递减。

<!-- real_analysis_monotonicity_example -->
> [!Example]+
> **单调性判定的例子 Example of a Monotonicity Test**：函数 $f(x)=x^3-3x$ 满足
> $$
> f'(x)=3(x-1)(x+1).
> $$
> 因此 $f$ 在 $(-\infty,-1]$ 与 $[1,+\infty)$ 上递增，在 $[-1,1]$ 上递减。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 6。