## 约数函数与约数和函数

<!-- divisor_count_definition -->
> [!Definition]
> **约数个数函数 Divisor Count Function**：对正整数 $n$，定义
>
> $$d(n) = \sum_{k \mid n} 1$$
>
> 即 $n$ 的正因数的个数，也记作 $\tau(n)$。

<!-- divisor_sum_definition -->
> [!Definition]
> **约数和函数 Sum of Divisors Function**：对正整数 $n$，定义
>
> $$\sigma(n) = \sum_{k \mid n} k$$
>
> 即 $n$ 的全体正因数之和。更一般地，对实数 $\alpha$，定义
>
> $$\sigma_\alpha(n) = \sum_{k \mid n} k^\alpha$$
>
> 则 $d(n) = \sigma_0(n)$，$\sigma(n) = \sigma_1(n)$。

<!-- divisor_functions_multiplicative -->
> [!Theorem]
> **约数函数的积性 Multiplicativity of Divisor Functions**：$d(n)$ 和 $\sigma(n)$ 均为积性函数。
>
> **证明思路**：设 $\gcd(m,n)=1$。$mn$ 的每个正因数 $k$ 可唯一分解为 $k = k_1 k_2$，其中 $k_1 \mid m$，$k_2 \mid n$，且 $\gcd(k_1,k_2) = 1$（由互素性保证对应关系一一且全）。因此 $d(mn) = d(m)d(n)$，$\sigma(mn) = \sigma(m)\sigma(n)$。

<!-- divisor_count_formula -->
> [!Theorem]
> **约数个数函数的计算公式 Formula for Divisor Count**：设 $n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}$ 为 $n$ 的标准分解式，则
>
> $$d(n) = (a_1 + 1)(a_2 + 1) \cdots (a_k + 1) = \prod_{i=1}^{k}(a_i + 1)$$
>
> **证明思路**：由 $d$ 的积性，$d(n) = \prod_{i=1}^k d(p_i^{a_i})$。而 $p^a$ 的正因数恰好是 $1, p, p^2, \ldots, p^a$，共 $a+1$ 个，故 $d(p^a) = a+1$。

<!-- divisor_sum_formula -->
> [!Theorem]
> **约数和函数的计算公式 Formula for Sum of Divisors**：设 $n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}$ 为 $n$ 的标准分解式，则
>
> $$\sigma(n) = \prod_{i=1}^{k} \frac{p_i^{a_i+1} - 1}{p_i - 1} = \prod_{i=1}^{k} (1 + p_i + p_i^2 + \cdots + p_i^{a_i})$$
>
> **证明思路**：由 $\sigma$ 的积性，$\sigma(n) = \prod_{i=1}^k \sigma(p_i^{a_i})$。而 $\sigma(p^a) = 1 + p + \cdots + p^a = \dfrac{p^{a+1}-1}{p-1}$（等比数列求和）。

<!-- perfect_number_definition -->
> [!Definition]
> **完全数 Perfect Number**：若正整数 $n$ 满足 $\sigma(n) = 2n$，则称 $n$ 为**完全数**（亦称**完美数**）。

> **注**：前几个完全数为 $6, 28, 496, 8128$。欧拉证明，所有偶完全数形如 $2^{p-1}(2^p - 1)$，其中 $2^p - 1$ 为梅森素数。奇完全数是否存在至今未知。
