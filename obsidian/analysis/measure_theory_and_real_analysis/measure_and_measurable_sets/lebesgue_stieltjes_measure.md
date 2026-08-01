# Lebesgue-Stieltjes 测度

## 有界变差函数

<!-- total_variation_definition -->
> [!Definition]
> **全变差 Total Variation**：设 $F:[a,b]\to\mathbb{R}$。对分割
> $$
> P:a=x_0<x_1<\cdots<x_n=b,
> $$
> 定义 $F$ 关于 $P$ 的变差为
> $$
> V(F;P)=\sum_{i=1}^{n}|F(x_i)-F(x_{i-1})|.
> $$
> $F$ 在 $[a,b]$ 上的全变差定义为
> $$
> V_a^b(F)=\sup_PV(F;P).
> $$

<!-- bounded_variation_definition -->
> [!Definition]
> **有界变差函数 Function of Bounded Variation**：若 $F:[a,b]\to\mathbb{R}$ 满足 $V_a^b(F)<+\infty$，则称 $F$ 在 $[a,b]$ 上为有界变差函数，记为 $F\in BV([a,b])$。局部有界变差函数的定义是：它在每个紧区间上均为有界变差函数。

<!-- jordan_decomposition_bounded_variation -->
> [!Theorem]
> **有界变差函数的 Jordan 分解 Jordan Decomposition of a Function of Bounded Variation**：函数 $F:[a,b]\to\mathbb{R}$ 为有界变差函数，当且仅当存在两个有界单调递增函数 $F_1,F_2$，使
> $$
> F=F_1-F_2.
> $$
>
> **证明思路**：若 $F$ 有界变差，则令 $V(x)=V_a^x(F)$，利用 $V$ 与 $F$ 的增量关系可构造 $F_1=(V+F)/2$、$F_2=(V-F)/2$。反向由单调函数的变差等于端点增量，并使用三角不等式。

## Lebesgue-Stieltjes 测度与分布函数

<!-- lebesgue_stieltjes_measure_definition -->
> [!Theorem]
> **Lebesgue-Stieltjes 测度 Lebesgue-Stieltjes Measure**：设 $F:\mathbb{R}\to\mathbb{R}$ 单调不减且右连续。则存在唯一的 Borel 测度 $\mu_F$，使得对每个 $a<b$，
> $$
> \mu_F((a,b])=F(b)-F(a).
> $$
> 测度 $\mu_F$ 称为由 $F$ 诱导的 Lebesgue-Stieltjes 测度。
>
> **证明思路**：先在半开区间构成的半环上以区间增量定义预测度；右连续性确保其对递减区间列具有所需连续性，从而可由 Carathéodory 扩张定理唯一扩张到 Borel $\sigma$ 代数。

<!-- lebesgue_stieltjes_measure_atom -->
> [!Proposition]
> **Lebesgue-Stieltjes 测度的原子 Atoms of a Lebesgue-Stieltjes Measure**：对单调不减右连续函数 $F$ 及其 Lebesgue-Stieltjes 测度 $\mu_F$，每个 $x\in\mathbb{R}$ 满足
> $$
> \mu_F(\{x\})=F(x)-F(x-),
> $$
> 其中 $F(x-)=\lim_{t\uparrow x}F(t)$。因此，$F$ 在 $x$ 的跳跃大小正是测度在单点 $\{x\}$ 上的质量。
>
> **证明思路**：取 $a_n\uparrow x$、$b_n\downarrow x$，对区间 $(a_n,b_n]$ 应用定义，并用测度的从上连续性及 $F$ 的左右极限性质取极限。

<!-- distribution_function_definition -->
> [!Definition]
> **分布函数 Distribution Function**：设 $\mu$ 是 $\mathbb{R}$ 上的概率测度。定义
> $$
> F_\mu(x)=\mu(( -\infty,x])\qquad(x\in\mathbb{R}).
> $$
> 则 $F_\mu$ 称为 $\mu$ 的分布函数。

<!-- distribution_function_properties -->
> [!Theorem]
> **分布函数的刻画 Characterization of Distribution Functions**：函数 $F:\mathbb{R}\to\mathbb{R}$ 是某个概率测度的分布函数，当且仅当它满足：
> 1. $F$ 单调不减；
> 2. $F$ 右连续；
> 3. $\displaystyle\lim_{x\to-\infty}F(x)=0$，且 $\displaystyle\lim_{x\to+\infty}F(x)=1$。
>
> 在此情形，概率测度唯一，且就是由 $F$ 诱导的 Lebesgue-Stieltjes 测度 $\mu_F$。
>
> **证明思路**：由概率测度的单调性与从上、从下连续性直接得到必要性。反向应用 Lebesgue-Stieltjes 测度构造；两个端点极限分别保证总质量集中于 $\mathbb{R}$ 且总质量为 $1$。

<!-- lebesgue_measure_as_stieltjes_measure_example -->
> [!Example]+
> **Lebesgue 测度作为 Stieltjes 测度 Lebesgue Measure as a Stieltjes Measure**：令 $F(x)=x$。则 $F$ 单调不减且右连续，并且
> $$
> \mu_F((a,b])=F(b)-F(a)=b-a.
> $$
> 因此 $\mu_F$ 正是 $\mathbb{R}$ 上的 Lebesgue 测度。另一方面，分布函数 $F(x)=\mathbf{1}_{[0,+\infty)}(x)$ 对应于在 $0$ 点质量为 $1$ 的 Dirac 概率测度。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Section 3.5；Patrick Billingsley, *Probability and Measure*, 3rd ed., Chapter 2。
