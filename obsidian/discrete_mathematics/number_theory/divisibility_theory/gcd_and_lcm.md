## 最大公约数与最小公倍数

<!-- common_divisor_definition -->
> [!Definition]
> **公因数与最大公因数 Common Divisor and Greatest Common Divisor**：设 $a, b \in \mathbb{Z}$，不全为零。若整数 $d$ 满足 $d \mid a$ 且 $d \mid b$，则称 $d$ 是 $a$ 与 $b$ 的**公因数**（公约数）。所有公因数中最大的正整数称为 $a$ 与 $b$ 的**最大公因数**（最大公约数），记作 $\gcd(a, b)$。

> **注**：$\gcd(a, b)$ 也可记作 $(a, b)$。因 $1 \mid a$ 且 $1 \mid b$，公因数集非空；又当 $a, b$ 不全为零时，公因数有上界（由整除有界性），故最大公因数存在且唯一。

<!-- coprime_definition -->
> [!Definition]
> **互素 Coprime**：若 $\gcd(a, b) = 1$，则称整数 $a$ 与 $b$ **互素**（或**互质**）。

<!-- common_multiple_definition -->
> [!Definition]
> **公倍数与最小公倍数 Common Multiple and Least Common Multiple**：设 $a, b \in \mathbb{Z}^+$。若正整数 $m$ 满足 $a \mid m$ 且 $b \mid m$，则称 $m$ 是 $a$ 与 $b$ 的**公倍数**。所有公倍数中最小的称为 $a$ 与 $b$ 的**最小公倍数**，记作 $\mathrm{lcm}(a, b)$。

<!-- gcd_properties -->
> [!Theorem]
> **最大公因数的基本性质 Basic Properties of GCD**：设 $a, b \in \mathbb{Z}$ 不全为零，$k \in \mathbb{Z}$，则：
> 1. $\gcd(a, b) = \gcd(b, a)$（交换律）；
> 2. $\gcd(a, b) = \gcd(|a|, |b|)$；
> 3. $\gcd(a, 0) = |a|$（$a \neq 0$）；
> 4. $\gcd(a, b) = \gcd(a, b + ka)$，对任意 $k \in \mathbb{Z}$；
> 5. 若 $d = \gcd(a, b)$，则 $\gcd\!\left(\dfrac{a}{d}, \dfrac{b}{d}\right) = 1$。
>
> **证明思路**：性质 4 最关键：若 $d \mid a$ 且 $d \mid b$，则 $d \mid (b + ka)$；反之若 $d \mid a$ 且 $d \mid (b + ka)$，则 $d \mid b$。故 $\{a, b\}$ 与 $\{a, b+ka\}$ 有相同的公因数集，从而最大公因数相等。

<!-- gcd_lcm_product -->
> [!Theorem]
> **最大公因数与最小公倍数的乘积关系 GCD-LCM Product Formula**：设 $a, b \in \mathbb{Z}^+$，则：
> $$\gcd(a, b) \cdot \mathrm{lcm}(a, b) = ab$$
>
> **证明思路**：令 $d = \gcd(a, b)$，$a = da'$，$b = db'$，其中 $\gcd(a', b') = 1$。令 $L = da'b' = ab/d$。验证 $a \mid L$ 且 $b \mid L$（故 $L$ 是公倍数）；若 $m$ 为公倍数，则 $a' \mid (m/d)$ 且 $b' \mid (m/d)$，由 $\gcd(a', b') = 1$ 得 $a'b' \mid (m/d)$，即 $L \mid m$，故 $L$ 是最小公倍数。
