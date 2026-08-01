# 反函数定理

<!-- real_analysis_inverse_function_existence_conditions -->
> [!Theorem]
> **反函数存在条件 Existence of an Inverse Function**：设 $I$ 为区间，$f:I\to\mathbb{R}$ 连续且严格单调。则 $J=f(I)$ 是区间，$f:I\to J$ 为双射，故存在反函数
> $$
> f^{-1}:J\to I.
> $$
> 此反函数连续，并与 $f$ 具有相同的单调方向。
>
> **证明思路**：严格单调性给出单射；连续函数的介值性表明像集是区间并给出满射。连续性由严格单调函数将相邻区间映为相邻区间的性质得到。

<!-- real_analysis_one_variable_inverse_function_theorem -->
> [!Theorem]
> **一元反函数定理 One-Dimensional Inverse Function Theorem**：设 $I$ 为开区间，$f:I\to\mathbb{R}$ 属于 $C^1(I)$。若
> $$
> f'(a)\ne0,
> $$
> 则存在 $a$ 的开邻域 $U\subseteq I$，使 $f|_U$ 为从 $U$ 到开区间 $f(U)$ 的双射，其反函数属于 $C^1(f(U))$，且对每个 $y\in f(U)$，
> $$
> (f|_U)^{-1}{}'(y)=\frac{1}{f'((f|_U)^{-1}(y))}.
> $$
>
> **证明思路**：导数连续且在 $a$ 非零，故缩小邻域后 $f'$ 保持同号；由单调性判定法得到局部单射。连续性使像为开区间，反函数连续；最后使用反函数求导法则。

<!-- real_analysis_inverse_function_theorem_example -->
> [!Example]+
> **反函数定理的例子 Example of the Inverse Function Theorem**：$f(x)=x^3+x$ 满足
> $$
> f'(x)=3x^2+1>0.
> $$
> 因此 $f:\mathbb{R}\to\mathbb{R}$ 为严格递增双射，其反函数在整个 $\mathbb{R}$ 上属于 $C^1$，并满足
> $$
> (f^{-1})'(y)=\frac{1}{3(f^{-1}(y))^2+1}.
> $$

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9；Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 5。