## 二次剩余与二次非剩余

<!-- quadratic_residue_definition -->
> [!Definition]
> **二次剩余与二次非剩余 Quadratic Residue and Quadratic Non-residue**：设 $p$ 是奇素数，$\gcd(a, p) = 1$。若同余方程 $x^2 \equiv a \pmod{p}$ 有解，则称 $a$ 是模 $p$ 的**二次剩余**；否则称 $a$ 是模 $p$ 的**二次非剩余**。

<!-- quadratic_residue_count -->
> [!Theorem]
> **二次剩余与二次非剩余的个数 Count of QR and QNR**：设 $p$ 是奇素数。在 $1, 2, \ldots, p-1$ 中，恰有 $\dfrac{p-1}{2}$ 个模 $p$ 的二次剩余，$\dfrac{p-1}{2}$ 个模 $p$ 的二次非剩余。
>
> **证明思路**：设 $g$ 是模 $p$ 的原根，则 $1, g, g^2, \ldots, g^{p-2}$ 遍历所有不被 $p$ 整除的余数类。$a = g^k$ 是二次剩余当且仅当 $k$ 是偶数（方程 $x^2 \equiv g^k \pmod{p}$ 等价于 $2j \equiv k \pmod{p-1}$，可解当且仅当 $2 \mid k$）。$k$ 的奇偶各占一半，故两类各 $\dfrac{p-1}{2}$ 个。

<!-- quadratic_residue_product -->
> [!Theorem]
> **二次剩余的乘法规则 Multiplication Rules for QR and QNR**：设 $p$ 是奇素数，$a, b$ 不被 $p$ 整除，则：
> - 二次剩余 $\times$ 二次剩余 $=$ 二次剩余；
> - 二次剩余 $\times$ 二次非剩余 $=$ 二次非剩余；
> - 二次非剩余 $\times$ 二次非剩余 $=$ 二次剩余。
>
> **证明思路**：利用原根表示 $a = g^i$，$b = g^j$，则 $ab = g^{i+j}$；$ab$ 是二次剩余当且仅当 $i + j$ 是偶数，由 $i, j$ 奇偶性的各种组合即得三条规则。

> **注**：三条规则与整数的奇偶加法（偶+偶=偶，偶+奇=奇，奇+奇=偶）在形式上完全对应，本质上是 $(\mathbb{Z}/(p-1)\mathbb{Z})$ 中指标的模 2 算术。
