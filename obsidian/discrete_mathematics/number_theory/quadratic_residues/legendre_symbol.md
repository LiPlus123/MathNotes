## 勒让德符号

<!-- legendre_symbol_definition -->
> [!Definition]
> **勒让德符号 Legendre Symbol**：设 $p$ 是奇素数，$a \in \mathbb{Z}$。勒让德符号 $\left(\dfrac{a}{p}\right)$ 定义为：
> $$\left(\frac{a}{p}\right) = \begin{cases} 0, & p \mid a \\ 1, & a \text{ 是模 } p \text{ 的二次剩余} \\ -1, & a \text{ 是模 } p \text{ 的二次非剩余} \end{cases}$$

<!-- legendre_symbol_multiplicativity -->
> [!Theorem]
> **勒让德符号的完全积性 Complete Multiplicativity of Legendre Symbol**：设 $p$ 是奇素数，$a, b \in \mathbb{Z}$，则：
> $$\left(\frac{ab}{p}\right) = \left(\frac{a}{p}\right)\left(\frac{b}{p}\right)$$
>
> **证明思路**：若 $p \mid ab$，两边均为 $0$，结论显然成立。否则利用欧拉判别法（$\left(\frac{a}{p}\right) \equiv a^{(p-1)/2} \pmod{p}$），两边各自展开后直接相乘即得。

<!-- legendre_symbol_periodicity -->
> [!Theorem]
> **勒让德符号的周期性 Periodicity of Legendre Symbol**：设 $p$ 是奇素数，若 $a \equiv b \pmod{p}$，则：
> $$\left(\frac{a}{p}\right) = \left(\frac{b}{p}\right)$$
>
> **证明思路**：$a \equiv b \pmod{p}$ 时，$x^2 \equiv a \pmod{p}$ 与 $x^2 \equiv b \pmod{p}$ 同解，故两者的可解性相同。

<!-- legendre_symbol_neg1 -->
> [!Theorem]
> **$-1$ 的勒让德符号 Legendre Symbol of $-1$**：设 $p$ 是奇素数，则：
> $$\left(\frac{-1}{p}\right) = (-1)^{(p-1)/2} = \begin{cases} 1, & p \equiv 1 \pmod{4} \\ -1, & p \equiv 3 \pmod{4} \end{cases}$$
>
> **证明思路**：由欧拉判别法，$\left(\frac{-1}{p}\right) \equiv (-1)^{(p-1)/2} \pmod{p}$。由于两边均为 $\pm 1$，且 $p > 2$，故等号成立。

<!-- legendre_symbol_2 -->
> [!Theorem]
> **$2$ 的勒让德符号 Legendre Symbol of $2$**：设 $p$ 是奇素数，则：
> $$\left(\frac{2}{p}\right) = (-1)^{(p^2-1)/8} = \begin{cases} 1, & p \equiv \pm 1 \pmod{8} \\ -1, & p \equiv \pm 3 \pmod{8} \end{cases}$$
>
> **证明思路**：利用高斯引理，计算 $\{1 \cdot 2, 2 \cdot 2, \ldots, \frac{p-1}{2} \cdot 2\}$ 中落在 $\left(\frac{p}{2}, p\right)$ 区间的元素个数，其奇偶性决定 $\left(\frac{2}{p}\right)$ 的值，整理后得到 $(p^2-1)/8$ 的奇偶性规律。

> **注**：勒让德符号是一个完全积性的数论函数（对固定的 $p$），其值域为 $\{-1, 0, 1\}$。限制在 $\gcd(a,p)=1$ 的情形，它是模 $p$ 的非主特征，也是 $(\mathbb{Z}/p\mathbb{Z})^\times \to \{\pm 1\}$ 的群同态。
