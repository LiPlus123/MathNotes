# 实系数多项式的复根共轭性 Conjugate Roots of Real Polynomials

## 复共轭的基本性质

> **注**：复数 $z = a + bi$（$a, b \in \mathbb{R}$）的**复共轭**（complex conjugate）记为 $\bar{z} = a - bi$。共轭满足：$\overline{z + w} = \bar{z} + \bar{w}$，$\overline{zw} = \bar{z}\bar{w}$，$\overline{z^n} = \bar{z}^n$（$n \in \mathbb{Z}^+$），以及 $z \in \mathbb{R} \iff \bar{z} = z$。

## 复根共轭定理

<!-- conjugate_root_theorem -->
> [!Theorem]
> **复根共轭定理 Conjugate Root Theorem**：设 $f(x) \in \mathbb{R}[x]$，若 $\alpha \in \mathbb{C}$ 是 $f(x)$ 的 $k$ 重根，则 $\bar{\alpha}$ 也是 $f(x)$ 的 $k$ 重根。特别地，实系数多项式的**非实复根**成共轭对出现。

> **证明思路**：设 $f(x) = \sum_{i=0}^n a_i x^i$，$a_i \in \mathbb{R}$，$f(\alpha) = 0$。对等式取复共轭：
> $$0 = \overline{f(\alpha)} = \overline{\sum_{i=0}^n a_i \alpha^i} = \sum_{i=0}^n \bar{a}_i \bar{\alpha}^i = \sum_{i=0}^n a_i \bar{\alpha}^i = f(\bar{\alpha}),$$
> 利用了 $\bar{a}_i = a_i$（因 $a_i \in \mathbb{R}$）。故 $\bar{\alpha}$ 也是 $f$ 的根。对重数的一致性，类似地对 $f^{(j)}(\alpha) = 0$（$j < k$）各阶导数取共轭可得 $f^{(j)}(\bar{\alpha}) = 0$（$j < k$）且 $f^{(k)}(\bar{\alpha}) = \overline{f^{(k)}(\alpha)} \neq 0$，故 $\bar{\alpha}$ 也是 $k$ 重根。

## 奇次实系数多项式必有实根

<!-- odd_degree_real_root -->
> [!Corollary]
> **奇次实系数多项式有实根 Odd-Degree Real Polynomial Has a Real Root**：次数为奇数 $n$ 的非零实系数多项式 $f(x) \in \mathbb{R}[x]$ 在 $\mathbb{R}$ 中至少有一个实根。

> **证明思路**：由代数学基本定理，$f(x)$ 在 $\mathbb{C}$ 中有 $n$ 个根（计入重数）。由复根共轭定理，非实复根成共轭对出现，每对贡献 $2$ 个根。若 $f$ 无实根，则所有根均为非实复根，根的总数为偶数。但 $n$ 为奇数，矛盾。故 $f$ 在 $\mathbb{R}$ 中至少有一个实根。

## 实系数多项式的实因子分解

<!-- real_polynomial_quadratic_factorization -->
> [!Corollary]
> **实系数多项式的实因子分解 Real Factorization of Real Polynomials**：设 $f(x) \in \mathbb{R}[x]$，次数 $n \geq 1$。则 $f(x)$ 可分解为首项系数相同的一次实系数多项式与二次判别式为负的实系数多项式之积：
> $$f(x) = a_n (x - r_1)^{m_1} \cdots (x - r_s)^{m_s} \cdot (x^2 + p_1 x + q_1)^{l_1} \cdots (x^2 + p_t x + q_t)^{l_t},$$
> 其中 $r_i \in \mathbb{R}$，$p_j^2 - 4q_j < 0$，$m_i, l_j \in \mathbb{Z}^+$，且 $\sum m_i + 2\sum l_j = n$。

> **证明思路**：由代数学基本定理，$f$ 在 $\mathbb{C}$ 中分解为一次因子之积。将每对共轭复根 $\alpha, \bar{\alpha}$（$\alpha \notin \mathbb{R}$）对应的因子 $(x - \alpha)(x - \bar{\alpha}) = x^2 - 2\mathrm{Re}(\alpha) x + |\alpha|^2$ 合并为一个实系数二次因子，其判别式为 $4(\mathrm{Re}(\alpha))^2 - 4|\alpha|^2 = -4(\mathrm{Im}(\alpha))^2 < 0$。
