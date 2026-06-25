# 多项式的最大公因式 GCD of Polynomials

## 公因式与最大公因式

<!-- polynomial_common_factor_def -->
> [!Definition]
> **公因式 Common Factor**：设 $f(x), g(x) \in K[x]$，不全为零。若 $d(x) \in K[x]$ 满足 $d(x) \mid f(x)$ 且 $d(x) \mid g(x)$，则称 $d(x)$ 是 $f(x)$ 与 $g(x)$ 的一个**公因式**（common factor）。

<!-- polynomial_gcd_def -->
> [!Definition]
> **最大公因式 Greatest Common Divisor**：设 $f(x), g(x) \in K[x]$，不全为零。若 $d(x) \in K[x]$ 满足：
> 1. $d(x)$ 是 $f(x)$ 与 $g(x)$ 的公因式；
> 2. 对 $f(x)$ 与 $g(x)$ 的任意公因式 $c(x)$，均有 $c(x) \mid d(x)$，
>
> 则称 $d(x)$ 是 $f(x)$ 与 $g(x)$ 的一个**最大公因式**（greatest common divisor，GCD），记为 $\gcd(f, g)$（或 $(f, g)$）。

> **注**：最大公因式在相伴意义下唯一，即若 $d_1$ 与 $d_2$ 均为 $f, g$ 的最大公因式，则 $d_1 \sim d_2$。通常约定取**首一最大公因式**作为标准形式。若 $f = g = 0$，则约定 $\gcd(0, 0) = 0$。

## 辗转相除法

<!-- polynomial_gcd_existence -->
> [!Theorem]
> **最大公因式的存在性 Existence of GCD**：设 $f(x), g(x) \in K[x]$，不全为零，则 $\gcd(f, g)$ 存在，且可通过**辗转相除法**（Euclidean algorithm）求得。

<!-- polynomial_euclidean_algorithm -->
> [!Definition]
> **辗转相除法 Euclidean Algorithm**：设 $f(x), g(x) \in K[x]$，$g(x) \neq 0$。反复应用带余除法：
> $$\begin{align*}
> f(x) &= q_1(x) g(x) + r_1(x), \\
> g(x) &= q_2(x) r_1(x) + r_2(x), \\
> r_1(x) &= q_3(x) r_2(x) + r_3(x), \\
> &\vdots \\
> r_{k-2}(x) &= q_k(x) r_{k-1}(x) + r_k(x), \\
> r_{k-1}(x) &= q_{k+1}(x) r_k(x),
> \end{align*}$$
> 其中各余式满足 $\deg r_1 > \deg r_2 > \cdots > \deg r_k > -\infty$，故有限步后余式为零。最后一个非零余式 $r_k(x)$（化为首一后）即为 $\gcd(f, g)$。

> **证明思路**：每步带余除法保持公因式集合不变（$\gcd(f, g) = \gcd(g, r_1) = \cdots = \gcd(r_{k-1}, r_k) = r_k$），由于余式次数严格递减，算法必然终止。

## 裴蜀等式

<!-- polynomial_bezout_identity -->
> [!Theorem]
> **裴蜀等式 Bézout's Identity**：设 $f(x), g(x) \in K[x]$，不全为零，$d(x) = \gcd(f, g)$，则存在 $u(x), v(x) \in K[x]$，使得
> $$u(x) f(x) + v(x) g(x) = d(x).$$

> **证明思路**：对辗转相除法的步骤反向回代（辗转消去余式），将每步余式表示为 $f$ 和 $g$ 的线性组合，最终得到 $d = uf + vg$ 的表达式。

> **注**：$u(x), v(x)$ 不唯一。可通过辗转相除法的回代过程显式构造。

## 多项式互素

<!-- polynomial_coprime_def -->
> [!Definition]
> **互素 Coprime**：若 $\gcd(f(x), g(x)) \sim 1$（即最大公因式为非零常数），则称 $f(x)$ 与 $g(x)$ **互素**（coprime 或 relatively prime），记为 $\gcd(f, g) = 1$。

<!-- polynomial_coprime_characterization -->
> [!Theorem]
> **互素的等价刻画 Characterization of Coprimality**：$f(x)$ 与 $g(x)$ 互素当且仅当存在 $u(x), v(x) \in K[x]$，使得
> $$u(x) f(x) + v(x) g(x) = 1.$$

> **证明思路**：（$\Rightarrow$）由裴蜀等式，$\gcd(f,g) = 1$ 时直接得 $uf + vg = 1$。（$\Leftarrow$）若 $c \mid f$ 且 $c \mid g$，则 $c \mid (uf + vg) = 1$，故 $c$ 为非零常数，从而 $\gcd(f,g) \sim 1$。

<!-- polynomial_coprime_product -->
> [!Theorem]
> **互素与整除 Coprimality and Divisibility**：若 $f(x) \mid g(x) h(x)$ 且 $\gcd(f, g) = 1$，则 $f(x) \mid h(x)$。

> **证明思路**：由互素的等价刻画，存在 $u, v$ 使 $uf + vg = 1$，两边乘以 $h$ 得 $ufh + vgh = h$。因为 $f \mid ufh$ 且 $f \mid vgh$（由 $f \mid gh$），故 $f \mid h$。
