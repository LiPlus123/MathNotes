## 威尔逊定理

<!-- wilson_theorem -->
> [!Theorem]
> **威尔逊定理 Wilson's Theorem**：正整数 $p > 1$ 是素数，当且仅当：
> $$(p-1)! \equiv -1 \pmod{p}$$
>
> **证明思路**：
> - **充分性**（$p$ 为素数 $\Rightarrow$ 结论成立）：考虑 $\{1, 2, \ldots, p-1\}$ 中每个元素的模 $p$ 逆元。由费马小定理，每个 $a \in \{1, \ldots, p-1\}$ 的逆元也在 $\{1, \ldots, p-1\}$ 中。满足 $a \equiv a^{-1} \pmod{p}$（即 $a^2 \equiv 1$，即 $p \mid (a-1)(a+1)$）的元素只有 $a = 1$ 和 $a = p-1$。因此 $\{2, 3, \ldots, p-2\}$ 中的元素可两两配对为互逆对，乘积均 $\equiv 1 \pmod{p}$。故 $(p-1)! \equiv 1 \cdot (p-1) \equiv -1 \pmod{p}$。
> - **必要性**（逆命题）：若 $p$ 为合数，$p > 4$，则 $p$ 有因子 $d$，$1 < d < p$，故 $d \mid (p-1)!$，从而 $p \nmid (p-1)! + 1$，即 $(p-1)! \not\equiv -1 \pmod{p}$。（$p = 4$ 时 $3! = 6 \equiv 2 \not\equiv -1 \pmod{4}$。）

<!-- wilson_theorem_corollary -->
> [!Corollary]
> **威尔逊定理的素数判定推论 Wilson's Criterion for Primality**：威尔逊定理提供了一个素数的充要条件：$p$ 是素数当且仅当 $(p-1)! \equiv -1 \pmod{p}$。但由于计算 $(p-1)!$ 需要指数级时间，此判定准则仅有理论意义，不适合实际计算。

<!-- wilson_quadratic_residue -->
> [!Corollary]
> **威尔逊定理与二次剩余的联系 Wilson's Theorem and Quadratic Residues**：设 $p \equiv 1 \pmod{4}$ 为奇素数，则：
> $$\left(\left(\frac{p-1}{2}\right)!\right)^2 \equiv -1 \pmod{p}$$
> 即 $-1$ 是模 $p$ 的二次剩余（当 $p \equiv 1 \pmod 4$）。
>
> **证明思路**：在 $(p-1)! = 1 \cdot 2 \cdots \frac{p-1}{2} \cdot \frac{p+1}{2} \cdots (p-1)$ 中，注意到 $p - k \equiv -k \pmod{p}$，故后半段乘积 $\equiv (-1)^{(p-1)/2} \cdot \left(\frac{p-1}{2}\right)!$。当 $p \equiv 1 \pmod 4$ 时 $(p-1)/2$ 为偶数，因此 $(p-1)! \equiv \left(\left(\frac{p-1}{2}\right)!\right)^2 \equiv -1 \pmod p$。
