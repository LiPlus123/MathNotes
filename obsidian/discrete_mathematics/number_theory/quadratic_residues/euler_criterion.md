## 欧拉判别法

<!-- euler_criterion -->
> [!Theorem]
> **欧拉判别法 Euler's Criterion**：设 $p$ 是奇素数，$\gcd(a, p) = 1$，则：
> $$\left(\frac{a}{p}\right) \equiv a^{(p-1)/2} \pmod{p}$$
>
> 特别地，$a$ 是模 $p$ 的二次剩余当且仅当 $a^{(p-1)/2} \equiv 1 \pmod{p}$；$a$ 是模 $p$ 的二次非剩余当且仅当 $a^{(p-1)/2} \equiv -1 \pmod{p}$。
>
> **证明思路**：由费马小定理，$(a^{(p-1)/2})^2 \equiv a^{p-1} \equiv 1 \pmod{p}$，故 $a^{(p-1)/2} \equiv \pm 1 \pmod{p}$。若 $a \equiv x^2 \pmod{p}$，则 $a^{(p-1)/2} \equiv x^{p-1} \equiv 1 \pmod{p}$（二次剩余情形）。反之，考虑多项式 $x^{(p-1)/2} - 1$，它在 $\mathbb{Z}/p\mathbb{Z}$ 中至多有 $(p-1)/2$ 个根，而恰好有 $(p-1)/2$ 个二次剩余都是其根，故它们恰好就是全部根，即二次非剩余满足 $a^{(p-1)/2} \equiv -1 \pmod{p}$。
