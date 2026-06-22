## 积性函数

<!-- multiplicative_function_definition -->
> [!Definition]
> **积性函数 Multiplicative Function**：设 $f$ 是数论函数，若 $f$ 不恒为零，且对任意满足 $\gcd(m, n) = 1$ 的正整数 $m, n$，均有
>
> $$f(mn) = f(m) f(n)$$
>
> 则称 $f$ 为**积性函数**（或**乘性函数**）。

<!-- completely_multiplicative_definition -->
> [!Definition]
> **完全积性函数 Completely Multiplicative Function**：设 $f$ 是数论函数，若 $f$ 不恒为零，且对**任意**正整数 $m, n$（不要求互素），均有
>
> $$f(mn) = f(m) f(n)$$
>
> 则称 $f$ 为**完全积性函数**。完全积性函数必然是积性函数。

> **注**：常见的完全积性函数有 $\mathbf{1}(n) = 1$ 和 $\mathrm{id}(n) = n$；常见的积性函数（但非完全积性）有 $\varphi(n)$、$\mu(n)$、$d(n)$、$\sigma(n)$。

<!-- multiplicative_function_value_at_1 -->
> [!Theorem]
> **积性函数在 1 处的值 Value at 1**：若 $f$ 是积性函数，则 $f(1) = 1$。
>
> **证明思路**：取 $m = n = 1$，则 $\gcd(1,1)=1$，故 $f(1) = f(1 \cdot 1) = f(1) f(1) = f(1)^2$。因 $f$ 不恒为零，存在某 $n_0$ 使 $f(n_0) \neq 0$，又 $f(n_0) = f(1 \cdot n_0) = f(1) f(n_0)$，故 $f(1) = 1$。

<!-- multiplicative_determined_by_prime_powers -->
> [!Theorem]
> **积性函数由素数幂处的值唯一确定 Multiplicative Function Determined by Prime Powers**：设 $f$ 是积性函数，$n = p_1^{a_1} p_2^{a_2} \cdots p_k^{a_k}$ 是 $n$ 的标准分解式，则
>
> $$f(n) = f(p_1^{a_1}) f(p_2^{a_2}) \cdots f(p_k^{a_k})$$
>
> 特别地，积性函数完全由其在素数幂 $p^a$（$p$ 素数，$a \geq 1$）处的取值唯一确定。
>
> **证明思路**：由于不同素数幂两两互素，反复使用积性条件即得分解式。

<!-- multiplicative_product_multiplicative -->
> [!Theorem]
> **积性函数之积仍是积性函数 Product of Multiplicative Functions**：若 $f$ 和 $g$ 均是积性函数，则其逐点乘积 $h(n) = f(n) g(n)$ 也是积性函数。
>
> **证明思路**：设 $\gcd(m,n)=1$，则 $h(mn) = f(mn)g(mn) = f(m)f(n)g(m)g(n) = h(m)h(n)$。
