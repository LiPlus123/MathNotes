## 拉格朗日定理

<!-- lagrange_theorem_poly_congruence -->
> [!Theorem]
> **拉格朗日定理 Lagrange's Theorem on Polynomial Congruences**：设 $p$ 为素数，$f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_0 \in \mathbb{Z}[x]$ 为整系数多项式，其中 $p \nmid a_n$（即 $f$ 在 $\mathbb{Z}/p\mathbb{Z}$ 中的次数为 $n$）。则同余方程
> $$f(x) \equiv 0 \pmod{p}$$
> 模 $p$ 不同余的解至多有 $n$ 个。
>
> **证明思路**：在域 $\mathbb{Z}/p\mathbb{Z}$ 中，$n$ 次多项式至多有 $n$ 个根。具体用归纳法：$n = 0$ 时无解（因 $p \nmid a_0$）。设结论对次数 $< n$ 的多项式成立。若 $x_0$ 是 $f(x) \equiv 0 \pmod p$ 的一个解，则在 $\mathbb{Z}/p\mathbb{Z}[x]$ 中可分解 $f(x) = (x - x_0) q(x)$，其中 $q(x)$ 是 $n-1$ 次多项式（首项系数 $\equiv a_n \not\equiv 0 \pmod p$）。其余解必满足 $q(x) \equiv 0 \pmod p$，由归纳假设至多有 $n-1$ 个，故 $f$ 至多有 $n$ 个解。

> **注**：当模数不是素数时，结论一般不成立。例如 $x^2 \equiv 1 \pmod{8}$ 有 $4$ 个解：$x \equiv 1, 3, 5, 7 \pmod{8}$，超过方程次数 $2$。拉格朗日定理的本质是 $\mathbb{Z}/p\mathbb{Z}$ 构成域，不含零因子。

<!-- lagrange_corollary_factored -->
> [!Corollary]
> **$n$ 次多项式有 $n$ 个解时的分解 Factorization When $n$ Solutions Exist**：在拉格朗日定理的条件下，若 $f(x) \equiv 0 \pmod{p}$ 恰好有 $n$ 个不同余的解 $x_1, x_2, \ldots, x_n$，则在 $\mathbb{Z}/p\mathbb{Z}[x]$ 中有
> $$f(x) \equiv a_n (x - x_1)(x - x_2) \cdots (x - x_n) \pmod{p}$$
>
> **证明思路**：记右边为 $g(x)$，则 $f(x) - g(x)$ 是次数小于 $n$ 的多项式，却有 $n$ 个根，由拉格朗日定理知 $f(x) \equiv g(x) \pmod{p}$。

<!-- lagrange_corollary_wilson_proof -->
> [!Corollary]
> **拉格朗日定理与威尔逊定理的联系 Connection with Wilson's Theorem**：由拉格朗日定理，方程 $x^{p-1} - 1 \equiv 0 \pmod{p}$（$p$ 为素数）有 $1, 2, \ldots, p-1$ 共 $p-1$ 个解，故在 $\mathbb{Z}/p\mathbb{Z}[x]$ 中：
> $$x^{p-1} - 1 \equiv (x-1)(x-2)\cdots(x-(p-1)) \pmod{p}$$
> 令 $x = 0$，得 $(-1)^{p-1}(p-1)! \equiv -1 \pmod{p}$，从而 $(p-1)! \equiv -1 \pmod{p}$，即威尔逊定理。
>
> **证明思路**：费马小定理保证 $1, 2, \ldots, p-1$ 均为 $x^{p-1} - 1 \equiv 0 \pmod p$ 的解，共 $p-1$ 个，等于多项式次数，由上一推论得分解式，代入 $x = 0$ 即可。

<!-- lagrange_example_quadratic -->
> [!Example]+
> **二次同余方程的解数 Number of Solutions to Quadratic Congruence**：$x^2 \equiv 1 \pmod{7}$。
>
> $p = 7$，$f(x) = x^2 - 1$，$n = 2$，由拉格朗日定理至多有 $2$ 个解。验算：$x \equiv 1 \pmod 7$ 和 $x \equiv 6 \equiv -1 \pmod 7$ 均满足，共恰好 $2$ 个解。
