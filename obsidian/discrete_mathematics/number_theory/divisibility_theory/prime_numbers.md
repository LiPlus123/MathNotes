## 素数

<!-- prime_definition -->
> [!Definition]
> **素数与合数 Prime and Composite Numbers**：设 $p$ 为整数，$p > 1$。若 $p$ 的正因数只有 $1$ 和 $p$ 本身，则称 $p$ 为**素数**（或**质数**）；若 $p$ 除 $1$ 和 $p$ 外还有其他正因数，则称 $p$ 为**合数**。整数 $1$ 既不是素数也不是合数。

> **注**：每个合数 $n$ 必有不超过 $\sqrt{n}$ 的素因子。要判断正整数 $n$ 是否为素数，只需验证所有不超过 $\sqrt{n}$ 的素数均不整除 $n$。

<!-- euclid_lemma -->
> [!Lemma]
> **欧几里得引理 Euclid's Lemma**：设 $p$ 为素数，$a, b \in \mathbb{Z}$。若 $p \mid ab$，则 $p \mid a$ 或 $p \mid b$。
>
> **推论**：若素数 $p \mid a_1 a_2 \cdots a_k$，则存在某个 $i$（$1 \leq i \leq k$）使得 $p \mid a_i$。
>
> **证明思路**：若 $p \nmid a$，则因 $p$ 为素数，$p$ 的正因数只有 $1$ 和 $p$，故 $\gcd(p, a) = 1$。由裴蜀定理存在整数 $x, y$ 使 $px + ay = 1$，两边乘以 $b$ 得 $pbx + aby = b$。因 $p \mid ab$，故 $p \mid aby$，又 $p \mid pbx$，从而 $p \mid b$。推论由对 $k$ 归纳得到。

<!-- infinitely_many_primes -->
> [!Theorem]
> **素数无穷定理 Infinitude of Primes**：素数有无穷多个。
>
> **证明思路**（欧几里得证明）：反证法。设素数只有有限个：$p_1, p_2, \ldots, p_k$。构造正整数：
> $$N = p_1 p_2 \cdots p_k + 1$$
> 由于 $N > 1$，$N$ 至少有一个素因子 $p$。但对每个 $p_i$，均有 $p_i \mid p_1 p_2 \cdots p_k$，故 $p_i \nmid N$（否则 $p_i \mid 1$，矛盾）。因此 $p \notin \{p_1, \ldots, p_k\}$，与假设矛盾。
