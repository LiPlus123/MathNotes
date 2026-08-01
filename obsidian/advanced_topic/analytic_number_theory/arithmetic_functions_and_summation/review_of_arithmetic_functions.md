## 数论函数回顾

<!-- analytic_number_theory_arithmetic_function_definition -->
> [!Definition]
> **数论函数 Arithmetic Function**：定义在正整数集 $\mathbb{Z}^+$ 上、取值于 $\mathbb{C}$ 的函数 $f:\mathbb{Z}^+\to\mathbb{C}$ 称为数论函数。实际应用中常考虑取值于 $\mathbb{R}$ 或 $\mathbb{Z}$ 的数论函数。

<!-- analytic_number_theory_multiplicative_function_definition -->
> [!Definition]
> **积性函数 Multiplicative Function**：数论函数 $f$ 若满足 $f(1)=1$，且对任意互素的正整数 $m,n$ 有
>
> $$f(mn)=f(m)f(n),$$
>
> 则称 $f$ 为积性函数。若上式对任意正整数 $m,n$ 都成立，则称 $f$ 为**完全积性函数 Completely Multiplicative Function**。

<!-- arithmetic_functions_determined_by_prime_powers -->
> [!Theorem]
> **积性函数的素数幂分解 Multiplicative Functions and Prime Powers**：若 $f$ 为积性函数，且
>
> $$n=\prod_{j=1}^{r}p_j^{\alpha_j}$$
>
> 是 $n$ 的素因数分解，其中 $p_1,\ldots,p_r$ 两两不同，则
>
> $$f(n)=\prod_{j=1}^{r}f\left(p_j^{\alpha_j}\right).$$
>
> 因而积性函数由其在所有素数幂处的取值唯一确定。
>
> **证明思路**：素数幂 $p_j^{\alpha_j}$ 两两互素，反复应用积性即可。

<!-- analytic_number_theory_mobius_function_definition -->
> [!Definition]
> **Möbius 函数 Möbius Function**：定义
>
> $$
> \mu(n)=
> \begin{cases}
> 1, & n=1,\\
> (-1)^r, & n=p_1\cdots p_r\text{，其中 }p_1,\ldots,p_r\text{ 两两不同},\\
> 0, & p^2\mid n\text{ 对某个素数 }p.
> \end{cases}
> $$
>
> 函数 $\mu$ 是积性函数。

<!-- analytic_number_theory_euler_phi_function_definition -->
> [!Definition]
> **Euler 函数 Euler Totient Function**：对 $n\in\mathbb{Z}^+$，定义
>
> $$\varphi(n)=\#\{a\in\mathbb{Z}^+:1\leq a\leq n,\ \gcd(a,n)=1\}.$$
>
> 它是积性函数；当 $p$ 为素数且 $k\geq1$ 时，$\varphi(p^k)=p^k-p^{k-1}$。

<!-- analytic_number_theory_divisor_functions_definition -->
> [!Definition]
> **除数函数 Divisor Functions**：定义约数个数函数与广义约数幂和函数为
>
> $$d(n)=\sum_{d\mid n}1,\qquad \sigma_\alpha(n)=\sum_{d\mid n}d^\alpha.$$
>
> 特别地，$\sigma(n)=\sigma_1(n)$ 是正约数和函数。它们都是积性函数。若 $n=\prod_{j=1}^{r}p_j^{\alpha_j}$，则
>
> $$d(n)=\prod_{j=1}^{r}(\alpha_j+1),\qquad \sigma(n)=\prod_{j=1}^{r}\frac{p_j^{\alpha_j+1}-1}{p_j-1}.$$

<!-- analytic_number_theory_liouville_function_definition -->
> [!Definition]
> **Liouville 函数 Liouville Function**：令 $\Omega(n)$ 表示 $n$ 的素因子总数（按重数计），定义
>
> $$\lambda(n)=(-1)^{\Omega(n)}.$$
>
> 函数 $\lambda$ 是完全积性函数，且对任意素数 $p$ 与整数 $k\geq0$ 有 $\lambda(p^k)=(-1)^k$。

<!-- analytic_number_theory_von_mangoldt_function_definition -->
> [!Definition]
> **von Mangoldt 函数 von Mangoldt Function**：定义
>
> $$
> \Lambda(n)=
> \begin{cases}
> \log p, & n=p^k\text{，其中 }p\text{ 为素数， }k\geq1,\\
> 0, & \text{否则}.
> \end{cases}
> $$
>
> 它记录素数幂的对数权重，并满足 $\sum_{d\mid n}\Lambda(d)=\log n$。

<!-- analytic_number_theory_chebyshev_functions_definition -->
> [!Definition]
> **Chebyshev 函数 Chebyshev Functions**：对实数 $x\geq1$，定义
>
> $$\theta(x)=\sum_{p\leq x}\log p,\qquad \psi(x)=\sum_{n\leq x}\Lambda(n).$$
>
> 第一和式遍历素数 $p$；第二和式等价于 $\psi(x)=\sum_{p^k\leq x}\log p$，其中 $p$ 遍历素数、$k\geq1$。

> **注**：数论函数通常从离散对象编码算术信息；后续小节将通过卷积和求和公式研究它们的整体行为。