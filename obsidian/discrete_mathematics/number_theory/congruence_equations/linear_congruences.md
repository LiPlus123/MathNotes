## 线性同余方程

<!-- linear_congruence_definition -->
> [!Definition]
> **线性同余方程 Linear Congruence**：设 $m \in \mathbb{Z}^+$，$a, b \in \mathbb{Z}$。关于未知整数 $x$ 的方程
> $$ax \equiv b \pmod{m}$$
> 称为**线性同余方程**（一次同余方程）。若存在整数 $x_0$ 满足该方程，则称方程**有解**；所有满足方程的整数中，模 $m$ 互不同余的解称为方程的**不同余解**，不同余解的个数称为**解数**。

<!-- linear_congruence_solvability -->
> [!Theorem]
> **线性同余方程的可解性 Solvability of Linear Congruence**：设 $m \in \mathbb{Z}^+$，$a, b \in \mathbb{Z}$，$d = \gcd(a, m)$。线性同余方程 $ax \equiv b \pmod{m}$ 有解，当且仅当
> $$d \mid b$$
> 若有解，则模 $m$ 恰好有 $d$ 个不同余的解；设 $x_0$ 是一个特解，则全部解为
> $$x \equiv x_0 + k \cdot \frac{m}{d} \pmod{m}, \quad k = 0, 1, \ldots, d-1$$
>
> **证明思路**：$ax \equiv b \pmod{m}$ 等价于存在整数 $y$ 使得 $ax - my = b$，即二元线性不定方程 $ax - my = b$ 有整数解。由裴蜀定理，此不定方程有解当且仅当 $d \mid b$。有解时，将方程除以 $d$，得 $\frac{a}{d} x \equiv \frac{b}{d} \pmod{\frac{m}{d}}$，此时 $\gcd\!\left(\frac{a}{d}, \frac{m}{d}\right) = 1$，模 $\frac{m}{d}$ 下有唯一解 $x_0$。从而模 $m$ 下，$x_0, x_0 + \frac{m}{d}, x_0 + 2\frac{m}{d}, \ldots, x_0 + (d-1)\frac{m}{d}$ 给出 $d$ 个不同余的解。

> **注**：由欧拉定理，当 $\gcd(a, m) = 1$ 时，$ax \equiv b \pmod{m}$ 有唯一解 $x \equiv a^{-1} b \pmod{m}$，其中 $a^{-1} \equiv a^{\varphi(m)-1} \pmod{m}$。实际计算中常用扩展欧几里得算法求 $a^{-1}$。

<!-- linear_congruence_inverse_solution -->
> [!Theorem]
> **利用模逆元求解 Solution via Modular Inverse**：若 $\gcd(a, m) = 1$，则线性同余方程 $ax \equiv b \pmod{m}$ 有唯一解：
> $$x \equiv a^{-1} b \pmod{m}$$
> 其中 $a^{-1}$ 是 $a$ 关于模 $m$ 的乘法逆元，满足 $a \cdot a^{-1} \equiv 1 \pmod{m}$。
>
> **证明思路**：两边乘以 $a^{-1}$ 即得。

<!-- linear_congruence_example_basic -->
> [!Example]+
> **线性同余方程求解示例 Example of Solving Linear Congruence**：求解 $6x \equiv 4 \pmod{10}$。
>
> $d = \gcd(6, 10) = 2$，$2 \mid 4$，方程有解，共 $2$ 个不同余解。
> 化简为 $3x \equiv 2 \pmod{5}$，$\gcd(3, 5) = 1$，由 $3 \times 2 = 6 \equiv 1 \pmod{5}$ 知 $3^{-1} \equiv 2 \pmod{5}$，故 $x \equiv 2 \times 2 = 4 \pmod{5}$，即 $x_0 = 4$。
> 模 $10$ 下两个解为 $x \equiv 4 \pmod{10}$ 和 $x \equiv 4 + 5 = 9 \pmod{10}$。

<!-- linear_congruence_example_no_solution -->
> [!Example]+
> **无解的线性同余方程 Linear Congruence with No Solution**：判断 $6x \equiv 5 \pmod{10}$ 是否有解。
>
> $d = \gcd(6, 10) = 2$，而 $2 \nmid 5$，故方程无解。
