## 高斯引理

<!-- gauss_lemma_nt -->
> [!Lemma]
> **高斯引理 Gauss's Lemma**：设 $p$ 是奇素数，$\gcd(a, p) = 1$。考虑集合
> $$S = \left\{a, 2a, 3a, \ldots, \frac{p-1}{2} \cdot a\right\}$$
> 将每个元素取模 $p$ 后归约到 $\left(-\dfrac{p}{2}, \dfrac{p}{2}\right)$ 范围内（即取绝对值最小的余数）。设其中负数的个数为 $\nu$，则：
> $$\left(\frac{a}{p}\right) = (-1)^\nu$$
>
> **证明思路**：设 $r_1, \ldots, r_s$ 为正余数，$-t_1, \ldots, -t_\nu$ 为负余数（$t_i > 0$）。可证 $r_1, \ldots, r_s, t_1, \ldots, t_\nu$ 是 $1, 2, \ldots, \dfrac{p-1}{2}$ 的一个排列：各元素两两不等（若 $r_i = t_j$，则 $ka \equiv \pm la \pmod{p}$ 给出矛盾）。对它们的乘积求等式，与 $a^{(p-1)/2} \cdot \left(\dfrac{p-1}{2}\right)!$ 比较，得 $a^{(p-1)/2} \equiv (-1)^\nu \pmod{p}$，再由欧拉判别法即得结论。

<!-- gauss_lemma_application_neg1 -->
> [!Corollary]
> **$-1$ 是否为二次剩余 When $-1$ is a QR**：设 $p$ 是奇素数，则：
> $$\left(\frac{-1}{p}\right) = (-1)^{(p-1)/2}$$
> 即 $-1$ 是模 $p$ 的二次剩余当且仅当 $p \equiv 1 \pmod{4}$。
>
> **证明思路**：对 $a = -1$ 直接应用欧拉判别法：$(-1)^{(p-1)/2} \equiv (-1)^{(p-1)/2} \pmod p$，当 $(p-1)/2$ 为偶数（即 $p \equiv 1 \pmod 4$）时为 $1$，否则为 $-1$。

<!-- gauss_lemma_application_2 -->
> [!Corollary]
> **$2$ 是否为二次剩余 When $2$ is a QR**：设 $p$ 是奇素数，则：
> $$\left(\frac{2}{p}\right) = (-1)^{(p^2-1)/8}$$
> 即 $2$ 是模 $p$ 的二次剩余当且仅当 $p \equiv \pm 1 \pmod{8}$。
>
> **证明思路**：对 $a = 2$ 应用高斯引理，需计算 $\{2, 4, 6, \ldots, p-1\}$ 中大于 $p/2$ 的元素个数 $\nu$。由初等整数估计，$\nu$ 的奇偶性与 $(p^2-1)/8$ 相同，从而得到结论。

> **注**：高斯引理是计算勒让德符号最直接的工具之一，也是证明二次互反律的关键引理。其核心思想是将"乘法结构"通过最小余数系统转化为"符号计数"问题。
