## 莫比乌斯函数

<!-- mobius_function_definition -->
> [!Definition]
> **莫比乌斯函数 Möbius Function**：定义数论函数 $\mu: \mathbb{Z}^+ \to \{-1, 0, 1\}$ 如下：
>
> $$\mu(n) = \begin{cases} 1, & n = 1 \\ (-1)^k, & n = p_1 p_2 \cdots p_k,\ p_1, p_2, \ldots, p_k \text{ 为互不相同的素数} \\ 0, & \text{否则（即 } p^2 \mid n \text{ 对某素数 } p \text{ 成立）} \end{cases}$$
>
> 换言之，$\mu(n) = 0$ 当且仅当 $n$ 含有平方因子；$\mu(n) = (-1)^{\omega(n)}$ 当 $n$ 为无平方因子数（squarefree），其中 $\omega(n)$ 为 $n$ 的不同素因子个数。

<!-- mobius_function_multiplicative -->
> [!Theorem]
> **莫比乌斯函数是积性函数 Möbius Function is Multiplicative**：$\mu$ 是积性函数。
>
> **证明思路**：设 $\gcd(m,n)=1$。若 $m$ 或 $n$ 含平方因子，则 $mn$ 也含平方因子，$\mu(mn)=0=\mu(m)\mu(n)$（至少一方为 $0$）。若 $m,n$ 均无平方因子，设 $m = p_1 \cdots p_j$，$n = q_1 \cdots q_k$（互素保证各素因子互不相同），则 $mn = p_1 \cdots p_j q_1 \cdots q_k$ 无平方因子，$\mu(mn) = (-1)^{j+k} = (-1)^j (-1)^k = \mu(m)\mu(n)$。

<!-- mobius_function_sum_property -->
> [!Theorem]
> **莫比乌斯函数的基本求和性质 Basic Summation Property of Möbius Function**：对任意正整数 $n$，有
>
> $$\sum_{d \mid n} \mu(d) = \varepsilon(n) = \begin{cases} 1, & n = 1 \\ 0, & n > 1 \end{cases}$$
>
> **证明思路**：设 $n = p_1^{a_1} \cdots p_k^{a_k}$（$n > 1$）。由 $\mu$ 的积性，对素数幂有 $\sum_{d \mid p^a} \mu(d) = \mu(1) + \mu(p) = 1 - 1 = 0$。由积性推出一般情形：$\sum_{d \mid n} \mu(d) = \prod_{i=1}^k \sum_{d \mid p_i^{a_i}} \mu(d) = \prod_{i=1}^k 0 = 0$（注意 $\mu(p^a) = 0$ 对 $a \geq 2$，故只有 $d=1$ 和 $d=p_i$ 对求和有贡献）。
