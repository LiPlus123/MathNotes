# 多项式的除法 Polynomial Division

## 带余除法

<!-- polynomial_division_algorithm -->
> [!Theorem]
> **带余除法 Division Algorithm**：设 $f(x), g(x) \in K[x]$ 且 $g(x) \neq 0$，则存在唯一的多项式 $q(x), r(x) \in K[x]$，使得
> $$f(x) = q(x) \cdot g(x) + r(x),$$
> 其中 $r(x) = 0$ 或 $\deg r < \deg g$。称 $q(x)$ 为**商式**（quotient），$r(x)$ 为**余式**（remainder）。

> **证明思路**：**存在性**：对 $\deg f$ 进行归纳。若 $\deg f < \deg g$，取 $q = 0, r = f$ 即可。若 $\deg f \geq \deg g$，设 $f$ 的首项为 $a_n x^n$，$g$ 的首项为 $b_m x^m$（$n \geq m$），令 $f_1 = f - \frac{a_n}{b_m} x^{n-m} g$，则 $\deg f_1 < \deg f$，由归纳假设对 $f_1$ 存在带余除法，从而对 $f$ 也成立。**唯一性**：若 $f = q_1 g + r_1 = q_2 g + r_2$，则 $(q_1 - q_2) g = r_2 - r_1$；若 $q_1 \neq q_2$，则左端次数 $\geq \deg g$，右端次数 $< \deg g$，矛盾。

## 整除

<!-- polynomial_divisibility_def -->
> [!Definition]
> **整除 Divisibility**：设 $f(x), g(x) \in K[x]$，$g(x) \neq 0$。若带余除法中余式 $r(x) = 0$，即存在 $q(x) \in K[x]$ 使得
> $$f(x) = q(x) \cdot g(x),$$
> 则称 $g(x)$ **整除** $f(x)$（$g$ divides $f$），记为 $g(x) \mid f(x)$；否则称 $g(x)$ **不整除** $f(x)$，记为 $g(x) \nmid f(x)$。

> **注**：整除关系满足：
> - **自反性**：$f \mid f$；
> - **传递性**：若 $h \mid g$ 且 $g \mid f$，则 $h \mid f$；
> - **线性组合**：若 $g \mid f_1$ 且 $g \mid f_2$，则对任意 $u, v \in K[x]$，有 $g \mid (u f_1 + v f_2)$。

## 因式

<!-- polynomial_factor_def -->
> [!Definition]
> **因式与倍式 Factor and Multiple**：若 $g(x) \mid f(x)$，则称 $g(x)$ 是 $f(x)$ 的一个**因式**（factor 或 divisor），称 $f(x)$ 是 $g(x)$ 的一个**倍式**（multiple）。特别地，任意非零常数多项式 $c \in K^{\times}$ 都是 $f(x)$ 的因式，称为**平凡因式**（trivial factor）。

## 相伴

<!-- polynomial_associates_def -->
> [!Definition]
> **相伴 Associates**：设 $f(x), g(x) \in K[x]$，若 $f(x) \mid g(x)$ 且 $g(x) \mid f(x)$，则称 $f(x)$ 与 $g(x)$ **相伴**（associate），记为 $f(x) \sim g(x)$。

> **注**：$f(x) \sim g(x)$ 当且仅当存在非零常数 $c \in K^{\times}$，使得 $f(x) = c \cdot g(x)$。相伴关系是 $K[x]$ 上的等价关系。

## 余数定理

<!-- remainder_theorem -->
> [!Theorem]
> **余数定理 Remainder Theorem**：设 $f(x) \in K[x]$，$a \in K$，则 $f(x)$ 除以 $(x - a)$ 所得的余式为常数 $f(a)$，即
> $$f(x) = q(x)(x - a) + f(a)$$
> 对某个 $q(x) \in K[x]$ 成立。

> **证明思路**：由带余除法，$f(x) = q(x)(x-a) + r$，其中余式 $r$ 为常数（因为 $\deg(x-a)=1$）。将 $x = a$ 代入得 $f(a) = r$。

<!-- factor_theorem -->
> [!Corollary]
> **因式定理 Factor Theorem**：$a \in K$ 是 $f(x)$ 的根（即 $f(a) = 0$）当且仅当 $(x - a) \mid f(x)$。

> **证明思路**：由余数定理，$(x-a) \mid f(x) \iff f(a) = 0$。
