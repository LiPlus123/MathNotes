# 多项式环

## 多项式环的定义

<!-- polynomial_ring_def -->
> [!Definition]
> **多项式环 Polynomial Ring**：设 $R$ 为含幺环，$x$ 为形式不定元。$R$ 上关于 $x$ 的**多项式**为形式和
> $$
> f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 = \sum_{i=0}^n a_i x^i
> $$
> 其中 $a_i \in R$（称为**系数**），$n \in \mathbb{Z}_{\geq 0}$。$R$ 上所有多项式的集合 $R[x]$ 关于通常的多项式加法和乘法构成**多项式环**，且 $R$ 通过常数多项式嵌入 $R[x]$。

<!-- polynomial_degree_def -->
> [!Definition]
> **多项式的次数 Degree**：设 $f(x) = \sum_{i=0}^n a_i x^i \in R[x]$，$a_n \neq 0$，称 $n$ 为 $f$ 的**次数**，记作 $\deg f = n$；$a_n$ 称为 $f$ 的**首项系数**（leading coefficient）。零多项式的次数规定为 $-\infty$。若 $a_n = 1_R$，称 $f$ 为**首一多项式**（monic polynomial）。

<!-- polynomial_degree_formula -->
> [!Theorem]
> **次数不等式**：设 $R$ 为环，$f, g \in R[x]$ 均非零，则 $\deg(f + g) \leq \max(\deg f, \deg g)$，且
> $$
> \deg(fg) \leq \deg f + \deg g
> $$
> 若 $R$ 是整环，则等号成立：$\deg(fg) = \deg f + \deg g$。
>
> **证明思路**：乘积 $fg$ 的首项系数是 $f, g$ 首项系数之积，整环中非零元之积非零，故次数等号成立。

<!-- integral_domain_poly -->
> [!Theorem]
> **整环的多项式环仍是整环**：若 $R$ 是整环，则 $R[x]$ 也是整环。
>
> **证明思路**：由次数公式，$R[x]$ 中 $f, g$ 均非零则 $\deg(fg) = \deg f + \deg g \geq 0$，故 $fg \neq 0$，即 $R[x]$ 无零因子。

## 整除与带余除法

<!-- polynomial_divisibility_def -->
> [!Definition]
> **多项式整除 Divisibility**：设 $f, g \in R[x]$，若存在 $h \in R[x]$ 使得 $f = gh$，则称 $g$ **整除** $f$，记作 $g \mid f$；否则记作 $g \nmid f$。

<!-- polynomial_division_algorithm -->
> [!Theorem]
> **多项式带余除法 Division Algorithm**：设 $F$ 为域，$f, g \in F[x]$，$g \neq 0$，则存在唯一的 $q, r \in F[x]$ 使得
> $$
> f = qg + r, \quad \deg r < \deg g \text{（或 } r = 0\text{）}
> $$
>
> **证明思路**：对 $\deg f$ 归纳。若 $\deg f < \deg g$，则 $q = 0, r = f$。否则设 $\deg f = m \geq n = \deg g$，令 $f_1 = f - \dfrac{a_m}{b_n} x^{m-n} g$（$a_m, b_n$ 分别为 $f, g$ 的首项系数，$b_n$ 在 $F$ 中可逆），则 $\deg f_1 < m$，对 $f_1$ 归纳即得。唯一性：若 $qg + r = q'g + r'$，则 $(q - q')g = r' - r$，比较次数得 $q = q'$，$r = r'$。

<!-- polynomial_remainder_theorem -->
> [!Theorem]
> **余式定理 Remainder Theorem**：设 $F$ 为域，$f(x) \in F[x]$，$a \in F$，则
> $$
> f(x) = (x - a)q(x) + f(a)
> $$
> 即 $f(x)$ 除以 $(x - a)$ 的余式为常数 $f(a)$。
>
> **证明思路**：用带余除法，余式 $r$ 满足 $\deg r < 1$，故 $r \in F$；代入 $x = a$ 得 $r = f(a)$。

<!-- polynomial_root_factor -->
> [!Corollary]
> **根与因子定理 Root-Factor Theorem**：$a \in F$ 是 $f(x) \in F[x]$ 的根（即 $f(a) = 0$）当且仅当 $(x - a) \mid f(x)$。

<!-- polynomial_roots_bound -->
> [!Theorem]
> **根的个数上界**：设 $F$ 为域，$0 \neq f(x) \in F[x]$，$\deg f = n$，则 $f$ 在 $F$ 中至多有 $n$ 个根（计重数）。
>
> **证明思路**：对 $n$ 归纳，每提取一个根 $(x - a_i)$ 次数减 $1$，故至多有 $n$ 个根。

## 不可约多项式

<!-- irreducible_polynomial_def -->
> [!Definition]
> **不可约多项式 Irreducible Polynomial**：设 $R$ 为整环，次数 $\geq 1$ 的多项式 $f(x) \in R[x]$ 称为**不可约多项式**，若 $f(x) = g(x)h(x)$（$g, h \in R[x]$）蕴含 $g$ 或 $h$ 为 $R$ 的单位（常数可逆元）。

<!-- eisenstein_criterion -->
> [!Theorem]
> **爱森斯坦判别法 Eisenstein's Criterion**：设 $R$ 为 UFD，$p \in R$ 为素元，$f(x) = a_n x^n + \cdots + a_1 x + a_0 \in R[x]$（$n \geq 1$）。若满足：
> 1. $p \nmid a_n$；
> 2. $p \mid a_i$，对 $i = 0, 1, \ldots, n-1$；
> 3. $p^2 \nmid a_0$；
>
> 则 $f(x)$ 在 $\mathrm{Frac}(R)$ 上不可约（从而 $f$ 本原时在 $R[x]$ 中也不可约）。
>
> **证明思路**：假设 $f = gh$（$g, h$ 均非常数），在 $(R/(p))[x]$ 中 $\bar{f} = \bar{a}_n x^n$，故 $\bar{g} = \bar{c} x^k$，$\bar{h} = \bar{d} x^{n-k}$，则 $g, h$ 的常数项均被 $p$ 整除，故 $p^2 \mid a_0$，矛盾。

## 多项式环的理想结构

<!-- poly_over_field_is_pid -->
> [!Theorem]
> **域上多项式环是 PID**：设 $F$ 为域，则 $F[x]$ 是主理想整环。
>
> **证明思路**：$F[x]$ 是欧几里得环（以 $\deg$ 为欧几里得函数），欧几里得环是 PID。

<!-- poly_quotient_field_structure -->
> [!Theorem]
> **$F[x]/(f(x))$ 的结构**：设 $F$ 为域，$0 \neq f(x) \in F[x]$，则：
> - $(f(x))$ 是 $F[x]$ 的素理想 $\Leftrightarrow$ $f(x)$ 不可约；
> - $(f(x))$ 是 $F[x]$ 的极大理想 $\Leftrightarrow$ $f(x)$ 不可约；
> - $f(x)$ 不可约时，$F[x]/(f(x))$ 是域，且 $[F[x]/(f(x)) : F] = \deg f$。
>
> **证明思路**：$F[x]$ 是 PID，PID 中非零素理想等于极大理想；$f$ 不可约等价于 $(f)$ 是极大理想（因 PID 中不可约元生成极大理想）；商的维数由带余除法中余式次数 $< \deg f$ 给出。

<!-- poly_quotient_example -->
> [!Example]+
> **复数域的构造**：$\mathbb{R}[x]/(x^2 + 1) \cong \mathbb{C}$，因 $x^2 + 1$ 在 $\mathbb{R}[x]$ 中不可约（无实数根），商环是域，以 $x + (x^2+1)$ 对应虚数单位 $i$。
