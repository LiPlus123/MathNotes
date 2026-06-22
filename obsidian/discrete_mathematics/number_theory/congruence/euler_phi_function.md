## 欧拉函数

<!-- euler_phi_definition -->
> [!Definition]
> **欧拉函数 Euler's Totient Function**：对正整数 $m$，定义**欧拉函数** $\varphi(m)$ 为不超过 $m$ 且与 $m$ 互素的正整数的个数：
> $$\varphi(m) = |\{a \in \mathbb{Z}^+ \mid 1 \leq a \leq m,\ \gcd(a, m) = 1\}|$$
> 特别规定 $\varphi(1) = 1$。

> **注**：$\varphi(m)$ 即为模 $m$ 的简化剩余系的元素个数。

<!-- euler_phi_prime -->
> [!Theorem]
> **素数的欧拉函数值 Euler's Totient of a Prime**：若 $p$ 为素数，则：
> $$\varphi(p) = p - 1$$
> 更一般地，对素数 $p$ 和正整数 $k$：
> $$\varphi(p^k) = p^k - p^{k-1} = p^{k-1}(p-1)$$
>
> **证明思路**：在 $\{1, 2, \ldots, p^k\}$ 中，与 $p^k$ 不互素的整数恰好是 $p$ 的倍数，共 $p^{k-1}$ 个，故 $\varphi(p^k) = p^k - p^{k-1}$。

<!-- euler_phi_multiplicative -->
> [!Theorem]
> **欧拉函数的积性 Multiplicativity of Euler's Totient**：若 $\gcd(m, n) = 1$，则：
> $$\varphi(mn) = \varphi(m)\varphi(n)$$
>
> **证明思路**：将 $\{0, 1, \ldots, mn-1\}$ 排成 $m$ 列 $n$ 行的方阵，$r$ 与 $mn$ 互素当且仅当 $r$ 与 $m$ 互素且 $r$ 与 $n$ 互素（由 $\gcd(m,n)=1$）。利用中国剩余定理，与 $mn$ 互素的剩余类与 $(\mathbb{Z}/m\mathbb{Z})^\times \times (\mathbb{Z}/n\mathbb{Z})^\times$ 一一对应，故 $\varphi(mn) = \varphi(m)\varphi(n)$。

<!-- euler_phi_formula -->
> [!Theorem]
> **欧拉函数的计算公式 Formula for Euler's Totient**：设 $m = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}$ 为 $m$ 的标准分解式，则：
> $$\varphi(m) = m \prod_{p \mid m} \left(1 - \frac{1}{p}\right) = m \cdot \frac{p_1 - 1}{p_1} \cdot \frac{p_2 - 1}{p_2} \cdots \frac{p_k - 1}{p_k}$$
>
> **证明思路**：由欧拉函数的积性和素数幂的公式：
> $$\varphi(m) = \prod_{i=1}^k \varphi(p_i^{a_i}) = \prod_{i=1}^k p_i^{a_i - 1}(p_i - 1) = m \prod_{i=1}^k \frac{p_i - 1}{p_i}$$

<!-- euler_phi_sum -->
> [!Theorem]
> **欧拉函数的求和公式 Summation Formula for Euler's Totient**：对任意正整数 $m$：
> $$\sum_{d \mid m} \varphi(d) = m$$
> 其中求和遍历 $m$ 的所有正因数 $d$。
>
> **证明思路**：将 $\{1, 2, \ldots, m\}$ 按 $\gcd(k, m) = d$ 分组（$d \mid m$），每组中 $\gcd(k/d, m/d) = 1$ 的 $k$ 共 $\varphi(m/d)$ 个，故 $m = \sum_{d \mid m} \varphi(m/d) = \sum_{d \mid m} \varphi(d)$。
