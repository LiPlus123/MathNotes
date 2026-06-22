## 数论函数的定义

<!-- arithmetic_function_definition -->
> [!Definition]
> **数论函数 Arithmetic Function**：定义在正整数集 $\mathbb{Z}^+$ 上、取值为复数（通常为实数或整数）的函数 $f: \mathbb{Z}^+ \to \mathbb{C}$，称为**数论函数**，又称**算术函数**。

> **注**：数论函数的定义域是全体正整数，其取值可以是整数、有理数乃至复数，视具体函数而定。数论函数并不要求满足任何代数性质，但实践中研究最多的是具有乘法性质或加法性质的数论函数。

<!-- arithmetic_function_examples -->
> [!Definition]
> **常见数论函数举例 Common Arithmetic Functions**：以下是若干重要的数论函数：
>
> 1. **单位函数（Dirichlet 单位元）**：$\varepsilon(n) = \begin{cases} 1, & n = 1 \\ 0, & n > 1 \end{cases}$
>
> 2. **常数函数**：$\mathbf{1}(n) = 1$（对一切正整数 $n$）；
>
> 3. **恒等函数**：$\mathrm{id}(n) = n$；
>
> 4. **约数个数函数**：$d(n) = \sum_{k \mid n} 1$，即 $n$ 的正因数个数；
>
> 5. **约数和函数**：$\sigma(n) = \sum_{k \mid n} k$，即 $n$ 的全体正因数之和；
>
> 6. **欧拉函数**：$\varphi(n) = \#\{k \in \mathbb{Z}^+ : 1 \leq k \leq n,\ \gcd(k, n) = 1\}$，即不超过 $n$ 且与 $n$ 互素的正整数个数；
>
> 7. **莫比乌斯函数**：$\mu(n) = \begin{cases} 1, & n = 1 \\ (-1)^k, & n = p_1 p_2 \cdots p_k\ (\text{互不相同的素数之积}) \\ 0, & p^2 \mid n \text{ 对某个素数 } p \end{cases}$
>
> 8. **不同素因子个数函数**：$\omega(n)$ 为 $n$ 的不同素因子的个数；
>
> 9. **素因子个数函数（计重数）**：$\Omega(n)$ 为 $n$ 的素因子个数（按重数计）；
>
> 10. **冯·曼戈尔特函数**：$\Lambda(n) = \begin{cases} \ln p, & n = p^k,\ p \text{ 为素数},\ k \geq 1 \\ 0, & \text{否则} \end{cases}$
