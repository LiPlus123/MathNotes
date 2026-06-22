## 线性丢番图方程

<!-- linear_diophantine_definition -->
> [!Definition]
> **线性丢番图方程 Linear Diophantine Equation**：设 $a_1, a_2, \ldots, a_n, c \in \mathbb{Z}$，不全为零，称方程
> $$a_1 x_1 + a_2 x_2 + \cdots + a_n x_n = c$$
> 为**线性丢番图方程**，其中求整数解 $(x_1, x_2, \ldots, x_n) \in \mathbb{Z}^n$。

<!-- binary_linear_diophantine_solvability -->
> [!Theorem]
> **二元线性丢番图方程的可解性与通解 Solvability and General Solution of Binary Linear Diophantine Equation**：设 $a, b, c \in \mathbb{Z}$，$a, b$ 不全为零，$d = \gcd(a, b)$，则方程 $ax + by = c$ 有整数解当且仅当 $d \mid c$。
>
> 若有解，设 $(x_0, y_0)$ 是方程 $ax + by = d$ 的一组特解（由扩展欧几里得算法求得），则方程 $ax + by = c$ 的通解为：
> $$x = \frac{c}{d} x_0 + \frac{b}{d} t, \quad y = \frac{c}{d} y_0 - \frac{a}{d} t \quad (t \in \mathbb{Z})$$
>
> **证明思路**：
> - **必要性**：若 $(x, y)$ 是解，则 $d \mid a$，$d \mid b$，故 $d \mid (ax + by) = c$。
> - **充分性**：若 $d \mid c$，由裴蜀定理取 $ax_0 + by_0 = d$，则 $(x_0 c/d,\, y_0 c/d)$ 是方程的一组特解。
> - **通解结构**：设 $(x_1, y_1)$ 为任意解，则 $a(x_1 - x_0 c/d) = -b(y_1 - y_0 c/d)$，两边除以 $d$，利用 $\gcd(a/d, b/d) = 1$ 以及整除性，得 $(b/d) \mid (x_1 - x_0 c/d)$，设差为 $(b/d)t$，即得通解。

<!-- multivariable_linear_diophantine_solvability -->
> [!Theorem]
> **多元线性丢番图方程的可解性 Solvability of Multivariable Linear Diophantine Equation**：设 $a_1, a_2, \ldots, a_n, c \in \mathbb{Z}$，$d = \gcd(a_1, a_2, \ldots, a_n)$，则方程
> $$a_1 x_1 + a_2 x_2 + \cdots + a_n x_n = c$$
> 有整数解当且仅当 $d \mid c$。
>
> **证明思路**：对 $n$ 归纳。$n = 2$ 时即二元情形。设 $n \geq 3$，令 $d' = \gcd(a_1, \ldots, a_{n-1})$，先在 $x_1, \ldots, x_{n-1}$ 上解 $a_1 x_1 + \cdots + a_{n-1} x_{n-1} = d'$（由归纳假设），再解 $d' y + a_n x_n = c$（二元情形），其中 $\gcd(d', a_n) = d$，可解当且仅当 $d \mid c$。

> **注**：多元线性丢番图方程的通解包含 $n-1$ 个自由参数，可通过递归地应用二元情形逐步求出。
