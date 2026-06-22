## 欧拉定理

<!-- euler_theorem -->
> [!Theorem]
> **欧拉定理 Euler's Theorem**：设 $m \in \mathbb{Z}^+$，$a \in \mathbb{Z}$，若 $\gcd(a, m) = 1$，则：
> $$a^{\varphi(m)} \equiv 1 \pmod{m}$$
>
> **证明思路**：设 $\{r_1, r_2, \ldots, r_{\varphi(m)}\}$ 是模 $m$ 的一个简化剩余系。由简化剩余系在乘法下的封闭性，$\{ar_1, ar_2, \ldots, ar_{\varphi(m)}\}$ 也是模 $m$ 的一个简化剩余系，故两者的乘积模 $m$ 同余：
> $$\prod_{i=1}^{\varphi(m)} (ar_i) \equiv \prod_{i=1}^{\varphi(m)} r_i \pmod{m}$$
> 左边等于 $a^{\varphi(m)} \cdot \prod_{i=1}^{\varphi(m)} r_i$，由 $\gcd\!\left(\prod r_i, m\right) = 1$ 消去得 $a^{\varphi(m)} \equiv 1 \pmod{m}$。

<!-- euler_theorem_application -->
> [!Theorem]
> **模逆元的存在性 Existence of Modular Inverse**：设 $m \in \mathbb{Z}^+$，$a \in \mathbb{Z}$，若 $\gcd(a, m) = 1$，则 $a$ 在模 $m$ 意义下存在**乘法逆元**，即存在整数 $b$ 使得：
> $$ab \equiv 1 \pmod{m}$$
> 且逆元在模 $m$ 意义下唯一，记作 $a^{-1} \pmod{m}$。可取 $b = a^{\varphi(m)-1}$。
>
> **证明思路**：由欧拉定理 $a \cdot a^{\varphi(m)-1} \equiv 1 \pmod{m}$，故取 $b = a^{\varphi(m)-1}$ 即可。唯一性：若 $ab_1 \equiv ab_2 \equiv 1$，则 $a(b_1 - b_2) \equiv 0$，由消去律得 $b_1 \equiv b_2 \pmod{m}$。

> **注**：欧拉定理是数论中的核心定理之一，RSA 加密算法的正确性即基于欧拉定理。对于 $m = p$（素数），欧拉定理退化为费马小定理 $a^{p-1} \equiv 1 \pmod{p}$。
