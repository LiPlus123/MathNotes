## 裴蜀定理

<!-- bezout_theorem -->
> [!Theorem]
> **裴蜀定理 Bézout's Identity**：设 $a, b \in \mathbb{Z}$，不全为零，$d = \gcd(a, b)$，则：
> $$\{ax + by \mid x, y \in \mathbb{Z}\} = \{kd \mid k \in \mathbb{Z}\}$$
> 特别地，存在整数 $x_0, y_0$ 使得 $ax_0 + by_0 = d$。
>
> **证明思路**：设 $S = \{ax + by \mid x, y \in \mathbb{Z}\}$，$d'$ 为 $S$ 中的最小正元素。
> - 一方面，对任意 $s = ax + by \in S$，用带余除法令 $s = d' q + r$，$0 \leq r < d'$，则 $r = s - d'q \in S$，由 $d'$ 的最小性知 $r = 0$，故 $d' \mid s$，从而 $d' \mid a$ 且 $d' \mid b$，即 $d' \mid d$。
> - 另一方面，$d \mid a$ 且 $d \mid b$，故 $d \mid (ax_0 + by_0) = d'$，即 $d \mid d'$。
> - 综合得 $d = d'$，$S = \{kd \mid k \in \mathbb{Z}\}$。

<!-- bezout_coprime_corollary -->
> [!Corollary]
> **互素的裴蜀特征 Bézout's Criterion for Coprimality**：设 $a, b \in \mathbb{Z}$，则 $\gcd(a, b) = 1$ 当且仅当存在整数 $x, y$ 使得：
> $$ax + by = 1$$
>
> **证明思路**：由裴蜀定理直接得到。

<!-- linear_diophantine_solvability -->
> [!Corollary]
> **线性不定方程可解性 Solvability of Linear Diophantine Equations**：设 $a, b, c \in \mathbb{Z}$，$a, b$ 不全为零，$d = \gcd(a, b)$，则方程 $ax + by = c$ 有整数解当且仅当 $d \mid c$。若有解，则通解为：
> $$x = x_0 \cdot \frac{c}{d} + \frac{b}{d} t, \quad y = y_0 \cdot \frac{c}{d} - \frac{a}{d} t \quad (t \in \mathbb{Z})$$
> 其中 $(x_0, y_0)$ 是 $ax_0 + by_0 = d$ 的一组特解。
>
> **证明思路**：
> - **可解性**：若 $d \mid c$，由裴蜀定理取 $ax_0 + by_0 = d$，则 $a(x_0 c/d) + b(y_0 c/d) = c$ 是一组解；反之若有解则 $d \mid (ax + by) = c$。
> - **通解**：若 $(x_1, y_1)$ 和 $(x_2, y_2)$ 均为解，则 $a(x_1 - x_2) = b(y_2 - y_1)$，两边除以 $d$ 并利用 $\gcd(a/d, b/d) = 1$ 得 $(b/d) \mid (x_1 - x_2)$，故 $x_1 - x_2 = (b/d)t$，$y_2 - y_1 = (a/d)t$，$t \in \mathbb{Z}$。
