# Laurent 级数

## 圆环上的 Laurent 展开

<!-- laurent_series_definition -->
> [!Definition]
> **Laurent 级数 Laurent Series**：以 $a\in\mathbb{C}$ 为中心的 Laurent 级数是形式级数
> $$
> \sum_{n=-\infty}^{\infty}c_n(z-a)^n
> =\sum_{n=0}^{\infty}c_n(z-a)^n+\sum_{n=1}^{\infty}c_{-n}(z-a)^{-n}.
> $$
> 第一部分称为解析部分，第二部分称为主要部分。Laurent 级数通常在某个圆环
> $$
> A(a;r,R)=\{z\in\mathbb{C}:r<|z-a|<R\}
> $$
> 上收敛。

<!-- laurent_expansion_theorem -->
> [!Theorem]
> **圆环上的 Laurent 展开 Laurent Expansion on an Annulus**：若 $f$ 在圆环 $A(a;r,R)$ 上全纯，则存在唯一系数列 $(c_n)_{n\in\mathbb{Z}}$，使得
> $$
> f(z)=\sum_{n=-\infty}^{\infty}c_n(z-a)^n
> $$
> 在该圆环的每个紧子环上绝对且一致收敛。
>
> **证明思路**：选取圆环内两条同心圆，将 Cauchy 积分公式中的核分别按 $|z-a|<|\zeta-a|$ 与 $|z-a|>|\zeta-a|$ 展开；两部分分别产生非负次幂和负次幂。

<!-- laurent_coefficients_integral_formula -->
> [!Theorem]
> **Laurent 系数的积分表达 Integral Formula for Laurent Coefficients**：在上述条件下，任取 $\rho$ 满足 $r<\rho<R$，有
> $$
> c_n=\frac1{2\pi i}\int_{|\zeta-a|=\rho}
> \frac{f(\zeta)}{(\zeta-a)^{n+1}}\,d\zeta,
> \qquad n\in\mathbb{Z}.
> $$
> 该积分值与所选的 $\rho$ 无关。
>
> **证明思路**：在圆环内的两条圆周之间应用 Cauchy 定理；圆周积分不随半径改变，再用参数积分计算系数。

<!-- laurent_series_uniqueness -->
> [!Theorem]
> **Laurent 展开的唯一性 Uniqueness of Laurent Expansion**：若两个 Laurent 级数在同一圆环上收敛并表示同一函数，则对应的每个系数都相等。特别地，系数由上式唯一确定。

## Laurent 级数与幂级数

<!-- laurent_as_two_power_series -->
> [!Theorem]
> **Laurent 级数与两个幂级数 Laurent Series as Two Power Series**：令 $w=z-a$，则 Laurent 级数
> $$
> \sum_{n=-\infty}^{\infty}c_nw^n
> $$
> 可看成正幂级数 $\sum_{n\ge0}c_nw^n$ 与关于 $1/w$ 的正幂级数
> $$
> \sum_{n\ge1}c_{-n}\left(\frac1w\right)^n
> $$
> 之和。前者在 $|w|<R$ 收敛，后者在 $|w|>r$ 收敛，因此共同收敛区域是 $r<|w|<R$。
>
> **证明思路**：分别应用幂级数的收敛半径理论；负幂部分在变量 $1/w$ 下就是普通幂级数。

<!-- laurent_series_special_cases -->
> [!Example]+
> **Laurent 级数的特殊情形 Special Cases of Laurent Series**：
> 1. 当 $r=0$ 且主要部分为零时，Laurent 级数退化为圆盘上的 Taylor 级数；
> 2. 当主要部分只有有限项时，表示函数在 $a$ 处具有极点型的有限负幂展开；
> 3. 在圆环 $0<|z|<1$ 上，
> $$
> \frac1{z(1-z)}=\frac1z+1+z+z^2+\cdots;
> $$
> 这里同时出现了负幂项和非负幂项。

<!-- laurent_series_annulus_compatibility -->
> [!Theorem]
> **不同圆环上的展开 Different Annuli of Expansion**：同一个函数关于同一中心可能在不同圆环上具有不同的 Laurent 展开。展开的形式由该圆环中包含的奇点和边界决定；在两个相交圆环上，若两展开都表示同一函数，则在交集上逐项系数必一致。

> **注**：Laurent 展开和系数公式参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
