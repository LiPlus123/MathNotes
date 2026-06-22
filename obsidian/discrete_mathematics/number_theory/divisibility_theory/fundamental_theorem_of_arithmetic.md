## 算术基本定理

<!-- fta_theorem -->
> [!Theorem]
> **算术基本定理 Fundamental Theorem of Arithmetic**：每个大于 $1$ 的正整数 $n$ 都能**唯一地**（不计素因子的顺序）表示为有限个素数之积：
> $$n = p_1 p_2 \cdots p_s$$
> 其中 $p_1, p_2, \ldots, p_s$ 为素数（可重复）。
>
> **证明思路**：
> - **存在性**（强归纳法）：若 $n$ 本身是素数，则 $n$ 即为一个素数之积；若 $n$ 是合数，则 $n = ab$，$1 < a, b < n$，由归纳假设 $a, b$ 各有素因子分解，合并即得 $n$ 的分解。
> - **唯一性**：设 $n = p_1 p_2 \cdots p_s = q_1 q_2 \cdots q_t$ 为两种素分解。则 $p_1 \mid q_1 q_2 \cdots q_t$，由欧几里得引理（逐步应用），$p_1$ 整除某个 $q_j$；因两者均为素数，故 $p_1 = q_j$。对消 $p_1 = q_j$ 后，对 $n / p_1$ 归纳，最终得 $s = t$ 且两组分解完全相同。

<!-- fta_canonical_form -->
> [!Definition]
> **标准分解式 Canonical Prime Factorization**：大于 $1$ 的正整数 $n$ 的**标准分解式**是将 $n$ 的素因子从小到大排列、合并同底幂次后的表示：
> $$n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}$$
> 其中 $p_1 < p_2 < \cdots < p_k$ 为两两不同的素数，$a_i \in \mathbb{Z}^+$。由算术基本定理，标准分解式唯一。

> **注**：对任意正整数 $n$ 和素数 $p$，记 $v_p(n)$ 为 $p$ 在 $n$ 的标准分解式中的指数（若 $p \nmid n$ 则 $v_p(n) = 0$），称为 $n$ 的 **$p$ 进赋值**。

<!-- fta_gcd_lcm_formula -->
> [!Theorem]
> **最大公因数与最小公倍数的素因子表达式 GCD and LCM via Prime Factorization**：设 $a, b \in \mathbb{Z}^+$，对每个素数 $p$，记 $\alpha_p = v_p(a)$，$\beta_p = v_p(b)$（均为非负整数，仅有限个非零），则：
> $$\gcd(a, b) = \prod_{p \text{ 素数}} p^{\min(\alpha_p,\, \beta_p)}, \quad \mathrm{lcm}(a, b) = \prod_{p \text{ 素数}} p^{\max(\alpha_p,\, \beta_p)}$$
>
> **证明思路**：正整数 $d \mid a$ 当且仅当对每个素数 $p$ 均有 $v_p(d) \leq \alpha_p$（由算术基本定理的唯一性）。公因数 $d$ 满足 $v_p(d) \leq \min(\alpha_p, \beta_p)$ 对所有 $p$ 成立，取等号即得最大公因数；公倍数的情形类似，取 $\max$ 得最小公倍数。此公式也再次验证了 $\gcd(a,b) \cdot \mathrm{lcm}(a,b) = ab$（因 $\min + \max = \alpha_p + \beta_p$）。
