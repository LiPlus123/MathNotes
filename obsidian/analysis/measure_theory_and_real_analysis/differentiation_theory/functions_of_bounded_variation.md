# 有界变差函数

## 有界变差与 Jordan 分解

<!-- bounded_variation_on_interval_definition -->
> [!Definition]
> **有界变差函数 Function of Bounded Variation**：设 $F:[a,b]\to\mathbb{R}$。其全变差为
> $$
> V_a^b(F)=\sup\left\{\sum_{i=1}^{n}|F(x_i)-F(x_{i-1})|:a=x_0<x_1<\cdots<x_n=b\right\}.
> $$
> 若 $V_a^b(F)<+\infty$，则称 $F$ 为 $[a,b]$ 上的有界变差函数，记为
> $$
> F\in BV([a,b]).
> $$

<!-- variation_function_definition -->
> [!Definition]
> **变差函数 Variation Function**：若 $F\in BV([a,b])$，定义
> $$
> V_F(x)=V_a^x(F)
> \qquad(a\leq x\leq b).
> $$
> 则 $V_F$ 单调不减，且对 $a\leq s<t\leq b$，
> $$
> |F(t)-F(s)|\leq V_F(t)-V_F(s).
> $$

<!-- jordan_decomposition_bv_detailed -->
> [!Theorem]
> **有界变差函数的 Jordan 分解 Jordan Decomposition of a Function of Bounded Variation**：函数 $F:[a,b]\to\mathbb{R}$ 属于 $BV([a,b])$，当且仅当它可表示为两个单调不减函数之差。具体地，若 $F\in BV([a,b])$，则
> $$
> F_1=\frac{V_F+F}{2},
> \qquad
> F_2=\frac{V_F-F}{2}
> $$
> 都单调不减，并且
> $$
> F=F_1-F_2.
> $$
>
> **证明思路**：变差函数的增量支配 $F$ 的增量，因此 $V_F+F$ 与 $V_F-F$ 都单调不减。反向则由单调函数的总变差等于端点增量，并以三角不等式估计两者之差的变差。

## 可微性与 Stieltjes 测度

<!-- bounded_variation_one_sided_limits -->
> [!Proposition]
> **有界变差函数的单侧极限 One-Sided Limits of Functions of Bounded Variation**：若 $F\in BV([a,b])$，则对每个 $x\in(a,b)$，左右极限
> $$
> F(x-)=\lim_{t\uparrow x}F(t),
> \qquad
> F(x+)=\lim_{t\downarrow x}F(t)
> $$
> 都存在且有限。因此 $F$ 的不连续点至多可数，且每个不连续点均为跳跃不连续点。
>
> **证明思路**：将 $F$ 写成两个单调函数之差。单调函数在每一点都有单侧极限，且不连续点至多可数；该性质对两个单调函数之差仍成立。

<!-- bounded_variation_almost_everywhere_differentiability -->
> [!Theorem]
> **有界变差函数几乎处处可微 Almost-Everywhere Differentiability of Functions of Bounded Variation**：若 $F\in BV([a,b])$，则 $F$ 在 $[a,b]$ 的几乎每一点可导，且
> $$
> \int_a^b|F'(x)|\,dx\leq V_a^b(F).
> $$
>
> **证明思路**：由 Jordan 分解将 $F$ 化为两个单调函数之差；单调函数几乎处处可微，且其导数非负、积分不超过端点增量。分别应用该结论并用三角不等式即可。

<!-- stieltjes_measure_decomposition_for_bv_function -->
> [!Theorem]
> **有界变差函数的 Stieltjes 测度分解 Stieltjes Measure Decomposition for a Function of Bounded Variation**：设 $F:\mathbb{R}\to\mathbb{R}$ 为右连续且局部有界变差函数。其 Jordan 分解 $F=F_1-F_2$ 可取 $F_1,F_2$ 单调不减且右连续，从而诱导带号 Lebesgue-Stieltjes 测度
> $$
> \nu_F=\mu_{F_1}-\mu_{F_2}.
> $$
> 相对于 Lebesgue 测度，$\nu_F$ 有唯一分解
> $$
> \nu_F=F'\,m+\nu_{\mathrm{s}},
> $$
> 其中 $F'$ 是 $F$ 的几乎处处导数，$\nu_{\mathrm{s}}\perp m$。
>
> **证明思路**：由 Jordan 分解分别构造两个 Lebesgue-Stieltjes 测度，再取其差。对带号测度应用 Lebesgue 分解；测度微分定理识别绝对连续部分的密度为 $F'$。

<!-- cantor_function_example -->
> [!Example]+
> **Cantor 函数 Cantor Function**：Cantor 函数 $C:[0,1]\to[0,1]$ 单调不减且连续，因而属于 $BV([0,1])$。它满足
> $$
> C'(x)=0
> \quad\text{a.e.},
> $$
> 但 $C(1)-C(0)=1$。因此，单有几乎处处导数不足以由积分恢复一般有界变差函数；其相应 Stieltjes 测度是相对于 Lebesgue 测度奇异的 Cantor 测度。

> **注**：本小节参见 Gerald B. Folland, *Real Analysis: Modern Techniques and Their Applications*, 2nd ed., Sections 3.5--3.6；H. L. Royden and P. M. Fitzpatrick, *Real Analysis*, Chapter 7。
