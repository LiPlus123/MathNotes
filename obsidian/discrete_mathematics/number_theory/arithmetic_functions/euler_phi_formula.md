## 欧拉函数的计算公式

<!-- euler_phi_multiplicative -->
> [!Theorem]
> **欧拉函数是积性函数 Euler's Totient is Multiplicative**：欧拉函数 $\varphi$ 是积性函数，即对满足 $\gcd(m,n)=1$ 的正整数 $m, n$，有
>
> $$\varphi(mn) = \varphi(m)\varphi(n)$$
>
> **证明思路**：将 $\{1, 2, \ldots, mn\}$ 中的元素写成表格形式 $a = qm + r$（$1 \leq r \leq m$，$0 \leq q \leq n-1$）。可验证 $\gcd(a, mn) = 1$ 当且仅当 $\gcd(r, m) = 1$ 且 $\gcd(q + \text{某修正量}, n) = 1$，利用中国剩余定理可建立一一对应，从而 $\varphi(mn) = \varphi(m)\varphi(n)$。

<!-- euler_phi_at_prime_power -->
> [!Theorem]
> **欧拉函数在素数幂处的值 Value at Prime Powers**：设 $p$ 为素数，$a \geq 1$，则
>
> $$\varphi(p^a) = p^a - p^{a-1} = p^{a-1}(p-1)$$
>
> **证明思路**：在 $\{1, 2, \ldots, p^a\}$ 中，与 $p^a$ 不互素的正整数恰好是 $p$ 的倍数，共 $p^{a-1}$ 个，故 $\varphi(p^a) = p^a - p^{a-1}$。

<!-- euler_phi_formula -->
> [!Theorem]
> **欧拉函数的乘积公式 Multiplicative Formula for Euler's Totient**：设 $n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}$ 为 $n$ 的标准分解式，则
>
> $$\varphi(n) = n \prod_{p \mid n} \left(1 - \frac{1}{p}\right) = \prod_{i=1}^{k} p_i^{a_i - 1}(p_i - 1)$$
>
> **证明思路**：由 $\varphi$ 的积性，$\varphi(n) = \prod_{i=1}^k \varphi(p_i^{a_i}) = \prod_{i=1}^k p_i^{a_i-1}(p_i-1)$。将各因子改写为 $p_i^{a_i}\left(1 - \frac{1}{p_i}\right)$，再乘起来即得 $\varphi(n) = n \prod_{p \mid n}\!\left(1 - \frac{1}{p}\right)$。

<!-- euler_phi_sum_property -->
> [!Theorem]
> **欧拉函数的求和性质 Summation Property of Euler's Totient**：对任意正整数 $n$，有
>
> $$\sum_{d \mid n} \varphi(d) = n$$
>
> **证明思路**（一）：将 $\{1, 2, \ldots, n\}$ 中的整数按 $\gcd(k, n)$ 的值分类：$\gcd(k, n) = d$（$d \mid n$）当且仅当 $k = d \cdot j$，$\gcd(j, n/d) = 1$，$1 \leq j \leq n/d$，这样的 $j$ 共 $\varphi(n/d)$ 个。对所有 $d \mid n$ 求和得 $n = \sum_{d \mid n} \varphi(n/d) = \sum_{d \mid n} \varphi(d)$。
>
> **证明思路**（二）：视为 Dirichlet 卷积 $\varphi * \mathbf{1} = \mathrm{id}$，由双方均为积性函数，只需对素数幂验证即可。
