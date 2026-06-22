## 中国剩余定理

<!-- chinese_remainder_theorem -->
> [!Theorem]
> **中国剩余定理 Chinese Remainder Theorem (CRT)**：设 $m_1, m_2, \ldots, m_k \in \mathbb{Z}^+$ 两两互素，即对任意 $i \neq j$ 有 $\gcd(m_i, m_j) = 1$。令 $M = m_1 m_2 \cdots m_k$，$M_i = M / m_i$（$i = 1, \ldots, k$）。则对任意整数 $a_1, a_2, \ldots, a_k$，方程组
> $$\begin{cases} x \equiv a_1 \pmod{m_1} \\ x \equiv a_2 \pmod{m_2} \\ \quad \vdots \\ x \equiv a_k \pmod{m_k} \end{cases}$$
> 恰好有唯一的模 $M$ 解，其显式公式为
> $$x \equiv \sum_{i=1}^{k} a_i M_i (M_i^{-1} \bmod m_i) \pmod{M}$$
> 其中 $M_i^{-1} \bmod m_i$ 是 $M_i$ 关于模 $m_i$ 的乘法逆元（由 $\gcd(M_i, m_i) = 1$ 保证存在）。
>
> **证明思路**：**存在性**：构造 $e_i = M_i \cdot (M_i^{-1} \bmod m_i)$，则 $e_i \equiv 1 \pmod{m_i}$，$e_i \equiv 0 \pmod{m_j}$（$j \neq i$），从而 $x_0 = \sum_{i=1}^k a_i e_i$ 满足所有方程。**唯一性**：若 $x_1, x_2$ 均为解，则 $m_i \mid (x_1 - x_2)$ 对所有 $i$ 成立，由两两互素得 $M \mid (x_1 - x_2)$，即 $x_1 \equiv x_2 \pmod{M}$。

> **注**：中国剩余定理等价于环同构 $\mathbb{Z}/M\mathbb{Z} \cong \mathbb{Z}/m_1\mathbb{Z} \times \mathbb{Z}/m_2\mathbb{Z} \times \cdots \times \mathbb{Z}/m_k\mathbb{Z}$。该定理早见于中国古代数学著作《孙子算经》中的"物不知数"问题，故得名。

<!-- crt_example_basic -->
> [!Example]+
> **中国剩余定理应用示例 Example of Chinese Remainder Theorem**：求解
> $$\begin{cases} x \equiv 2 \pmod{3} \\ x \equiv 3 \pmod{5} \\ x \equiv 2 \pmod{7} \end{cases}$$
>
> $M = 3 \times 5 \times 7 = 105$，$M_1 = 35$，$M_2 = 21$，$M_3 = 15$。
>
> 求各逆元：$35 \equiv 2 \pmod{3}$，$2^{-1} \equiv 2 \pmod{3}$，故 $e_1 = 35 \times 2 = 70$；$21 \equiv 1 \pmod{5}$，$1^{-1} \equiv 1 \pmod{5}$，故 $e_2 = 21 \times 1 = 21$；$15 \equiv 1 \pmod{7}$，$1^{-1} \equiv 1 \pmod{7}$，故 $e_3 = 15 \times 1 = 15$。
>
> $x_0 = 2 \times 70 + 3 \times 21 + 2 \times 15 = 140 + 63 + 30 = 233 \equiv 233 - 2 \times 105 = 23 \pmod{105}$。
>
> 故方程组的解为 $x \equiv 23 \pmod{105}$。

<!-- crt_application_remainder -->
> [!Example]+
> **物不知数问题 The "Unknown Number" Problem**：有物不知其数，三三数之剩二，五五数之剩三，七七数之剩二，问物几何？
>
> 即求解 $x \equiv 2 \pmod{3}$，$x \equiv 3 \pmod{5}$，$x \equiv 2 \pmod{7}$，由上例得 $x \equiv 23 \pmod{105}$，最小正整数解为 $23$。
