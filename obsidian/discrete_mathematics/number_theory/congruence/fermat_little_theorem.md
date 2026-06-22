## 费马小定理

<!-- fermat_little_theorem -->
> [!Theorem]
> **费马小定理 Fermat's Little Theorem**：设 $p$ 为素数，$a \in \mathbb{Z}$，若 $p \nmid a$（即 $\gcd(a, p) = 1$），则：
> $$a^{p-1} \equiv 1 \pmod{p}$$
> 等价地，对任意整数 $a$：
> $$a^p \equiv a \pmod{p}$$
>
> **证明思路**：因 $p$ 为素数，$\varphi(p) = p - 1$，由欧拉定理直接得到第一个形式。第二个形式：若 $p \nmid a$，则 $a^{p-1} \equiv 1$，两边乘以 $a$ 即得；若 $p \mid a$，则 $a^p \equiv 0 \equiv a \pmod{p}$。

<!-- fermat_little_theorem_corollary -->
> [!Corollary]
> **费马小定理的幂简化推论 Power Reduction via Fermat's Little Theorem**：设 $p$ 为素数，$\gcd(a, p) = 1$，对任意整数 $n$，写 $n = q(p-1) + r$（$0 \leq r < p-1$），则：
> $$a^n \equiv a^r \pmod{p}$$
> 即计算 $a^n \bmod p$ 时，指数 $n$ 可对 $p-1$ 取余。
>
> **证明思路**：$a^n = a^{q(p-1)+r} = (a^{p-1})^q \cdot a^r \equiv 1^q \cdot a^r = a^r \pmod{p}$。

<!-- pseudoprime_note -->
> **注**：费马小定理的逆命题不成立：存在合数 $n$（称为**费马伪素数**）使得 $a^{n-1} \equiv 1 \pmod{n}$ 对某些底 $a$ 成立。满足对所有与 $n$ 互素的 $a$ 都有 $a^{n-1} \equiv 1 \pmod{n}$ 的合数称为**卡迈克尔数**，最小的例子是 $561 = 3 \times 11 \times 17$。
