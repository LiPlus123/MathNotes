## 勾股数

<!-- pythagorean_triple_definition -->
> [!Definition]
> **勾股数与本原勾股数 Pythagorean Triple and Primitive Pythagorean Triple**：满足
> $$x^2 + y^2 = z^2$$
> 的正整数三元组 $(x, y, z)$ 称为**勾股数**（勾股三元组）。若进一步有 $\gcd(x, y, z) = 1$，则称其为**本原勾股数**（本原毕达哥拉斯三元组）。

> **注**：在本原勾股数中，$x, y, z$ 两两互素，且 $x, y$ 中恰有一个为奇数、另一个为偶数，$z$ 必为奇数。

<!-- pythagorean_triple_parametrization -->
> [!Theorem]
> **本原勾股数的参数化 Parametrization of Primitive Pythagorean Triples**：$(x, y, z)$ 是满足 $x$ 为奇数、$y$ 为偶数的本原勾股数，当且仅当存在正整数 $m > n$，满足 $\gcd(m, n) = 1$，$m \not\equiv n \pmod{2}$（即 $m, n$ 一奇一偶），使得：
> $$x = m^2 - n^2, \quad y = 2mn, \quad z = m^2 + n^2$$
>
> **证明思路**：
> - 由 $y$ 为偶数，设 $y = 2k$，则 $x^2 = z^2 - y^2 = (z-y)(z+y)$。令 $z - x^2/4$ ...
>
>   更系统地：由 $x^2 = z^2 - (2k)^2$ 得 $x^2 + (2k)^2 = z^2$。将等式改写为 $(z - x)(z + x) = (2k)^2$，即 $y^2 = (z-x)(z+x)$。
>   由本原性知 $\gcd(z-x, z+x) = 2$，设 $z - x = 2n^2$，$z + x = 2m^2$（利用 $\gcd(m,n)=1$ 和奇偶性分析），解出 $x = m^2 - n^2$，$z = m^2 + n^2$，$y = 2mn$。
> - 反之，对满足条件的 $m, n$，直接验算 $(m^2-n^2)^2 + (2mn)^2 = (m^2+n^2)^2$，并验证 $\gcd(m^2-n^2, 2mn, m^2+n^2) = 1$。

<!-- all_pythagorean_triples -->
> [!Corollary]
> **所有勾股数的结构 Structure of All Pythagorean Triples**：所有勾股数 $(x, y, z)$（设 $y$ 为偶数）可由本原勾股数乘以正整数倍得到：
> $$x = k(m^2 - n^2), \quad y = 2kmn, \quad z = k(m^2 + n^2)$$
> 其中 $k \in \mathbb{Z}^+$，$m > n > 0$，$\gcd(m, n) = 1$，$m \not\equiv n \pmod{2}$。
>
> **证明思路**：设 $\gcd(x, y, z) = k$，则 $(x/k, y/k, z/k)$ 是本原勾股数，由参数化定理即得。

<!-- pythagorean_triple_example -->
> [!Example]+
> **本原勾股数举例 Examples of Primitive Pythagorean Triples**：
>
> | $m$ | $n$ | $x = m^2-n^2$ | $y = 2mn$ | $z = m^2+n^2$ |
> |-----|-----|--------------|-----------|--------------|
> | 2   | 1   | 3            | 4         | 5            |
> | 3   | 2   | 5            | 12        | 13           |
> | 4   | 1   | 15           | 8         | 17           |
> | 4   | 3   | 7            | 24        | 25           |
> | 5   | 2   | 21           | 20        | 29           |
>
> 验算：$3^2 + 4^2 = 9 + 16 = 25 = 5^2$；$5^2 + 12^2 = 25 + 144 = 169 = 13^2$。
