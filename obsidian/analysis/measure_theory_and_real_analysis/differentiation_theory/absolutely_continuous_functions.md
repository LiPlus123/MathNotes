# 绝对连续函数

## 绝对连续性

<!-- absolute_continuity_of_function_definition -->
> [!Definition]
> **绝对连续函数 Absolutely Continuous Function**：函数 $F:[a,b]\to\mathbb{R}$ 称为绝对连续的，若对每个 $\varepsilon>0$，存在 $\delta>0$，使得对任意有限个两两不交的开区间 $(x_i,y_i)\subseteq[a,b]$，只要
> $$
> \sum_{i=1}^{n}(y_i-x_i)<\delta,
> $$
> 就有
> $$
> \sum_{i=1}^{n}|F(y_i)-F(x_i)|<\varepsilon.
> $$
> 记所有这样的函数构成的空间为 $AC([a,b])$。

<!-- absolute_continuity_implications -->
> [!Proposition]
> **绝对连续性的基本蕴含 Basic Implications of Absolute Continuity**：若 $F\in AC([a,b])$，则 $F$ 一致连续，因而连续；并且 $F\in BV([a,b])$。反之，连续性加有界变差一般不蕴含绝对连续性。
>
> **证明思路**：取单个区间即可由绝对连续性推出一致连续性。对给定 $\varepsilon=1$ 的 $\delta$，将任意分割的相邻小区间分组，可用有限个长度至少为 $\delta$ 的区间和其余小区间控制总变差。Cantor 函数给出反例。

## 微积分基本定理

<!-- fundamental_theorem_for_absolutely_continuous_functions -->
> [!Theorem]
> **绝对连续函数的微积分基本定理 Fundamental Theorem of Calculus for Absolutely Continuous Functions**：若 $F\in AC([a,b])$，则 $F$ 几乎处处可导，$F'\in L^1([a,b])$，且对每个 $x\in[a,b]$，
> $$
> F(x)=F(a)+\int_a^xF'(t)\,dt.
> $$
>
> **证明思路**：绝对连续性保证 $F$ 的 Stieltjes 测度对 Lebesgue 测度绝对连续。由 Radon-Nikodym 定理存在 $g\in L^1$ 表示该测度；Lebesgue 微分定理给出 $g=F'$ 几乎处处，并以区间增量公式得到积分表示。

<!-- indefinite_integral_is_absolutely_continuous -->
> [!Theorem]
> **不定积分的绝对连续性 Absolute Continuity of Indefinite Integrals**：若 $f\in L^1([a,b])$，定义
> $$
> F(x)=F(a)+\int_a^xf(t)\,dt.
> $$
> 则 $F\in AC([a,b])$，并且
> $$
> F'(x)=f(x)
> \quad\text{a.e.}
> $$
>
> **证明思路**：Lebesgue 积分的绝对连续性给出：当可测集 $E$ 的测度充分小时，$\int_E|f|$ 充分小。将不交区间的端点增量之和用相应区间并上的 $|f|$ 的积分控制，即得绝对连续性；导数结论由 Lebesgue 微分定理给出。

<!-- characterization_of_absolute_continuity -->
> [!Theorem]
> **绝对连续性的积分刻画 Integral Characterization of Absolute Continuity**：对函数 $F:[a,b]\to\mathbb{R}$，下列条件等价：
> 1. $F\in AC([a,b])$；
> 2. 存在 $f\in L^1([a,b])$，使得
> $$
> F(x)=F(a)+\int_a^xf(t)\,dt
> $$
> 对所有 $x\in[a,b]$ 成立；
> 3. $F$ 连续、有界变差，并且其 Stieltjes 测度相对于 Lebesgue 测度绝对连续。
>
> **证明思路**：第一、二项由前两个定理互推。第二项对应的 Stieltjes 测度为 $f\,m$，故推出第三项；第三项用 Radon-Nikodym 定理将 Stieltjes 测度写成 $f\,m$，再由区间增量公式恢复第二项。

<!-- absolute_continuity_and_singular_function_example -->
> [!Example]+
> **绝对连续函数与奇异函数 Absolutely Continuous versus Singular Functions**：函数 $F(x)=x$ 在 $[0,1]$ 上绝对连续，且
> $$
> F(x)-F(0)=\int_0^x1\,dt.
> $$
> Cantor 函数虽连续且有界变差，却不绝对连续：它的导数几乎处处为 $0$，但总增量为 $1$，因而不能由其几乎处处导数的积分恢复。

> **注**：本小节参见 H. L. Royden and P. M. Fitzpatrick, *Real Analysis*, Chapter 7；Gerald B. Folland, *Real Analysis*, 2nd ed., Section 3.5。
