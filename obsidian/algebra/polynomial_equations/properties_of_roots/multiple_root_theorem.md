# 重根判定定理 Multiple Root Theorem

## 形式导数

<!-- formal_derivative_def -->
> [!Definition]
> **形式导数 Formal Derivative**：设 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \in K[x]$，定义 $f(x)$ 的**形式导数**（formal derivative）为
> $$f'(x) = n a_n x^{n-1} + (n-1) a_{n-1} x^{n-2} + \cdots + 2 a_2 x + a_1.$$
> 形式导数仍属于 $K[x]$。若 $\deg f \geq 1$，则 $\deg f' = \deg f - 1$；若 $f$ 为常数，则 $f' = 0$。

> **注**：形式导数通过系数逐项定义，是纯代数概念，不依赖极限。它满足以下运算法则（对任意 $f, g \in K[x]$，$c \in K$）：
> - **线性性**：$(f + g)' = f' + g'$，$(cf)' = cf'$；
> - **乘积法则**：$(fg)' = f'g + fg'$。

## 重根判定定理

<!-- multiple_root_criterion -->
> [!Theorem]
> **重根判定定理 Multiple Root Criterion**：设 $f(x) \in K[x]$ 是次数 $n \geq 1$ 的多项式，$\alpha \in K$。则：
> 1. $\alpha$ 是 $f(x)$ 的 $k$ 重根（$k \geq 1$）当且仅当
>    $$f(\alpha) = f'(\alpha) = \cdots = f^{(k-1)}(\alpha) = 0 \quad \text{且} \quad f^{(k)}(\alpha) \neq 0.$$
> 2. $\alpha$ 是 $f(x)$ 的重根（$k \geq 2$）当且仅当 $f(\alpha) = 0$ 且 $f'(\alpha) = 0$，即 $\alpha$ 是 $f(x)$ 与 $f'(x)$ 的公根。

> **证明思路**：设 $\alpha$ 是 $f$ 的 $k$ 重根，则 $f(x) = (x - \alpha)^k g(x)$，其中 $g(\alpha) \neq 0$。对乘积公式反复求形式导数：第 $j$ 次导数 $f^{(j)}(x)$ 含因子 $(x-\alpha)^{k-j}$（当 $j \leq k$），故 $f^{(j)}(\alpha) = 0$（$j < k$）；当 $j = k$ 时，$f^{(k)}(\alpha) = k!\, g(\alpha) \neq 0$。反之，若 $f(\alpha) = \cdots = f^{(k-1)}(\alpha) = 0$，由余数定理逐步提因子可得 $(x-\alpha)^k \mid f(x)$。

## 重根与最大公因式

<!-- multiple_root_gcd_criterion -->
> [!Corollary]
> **重根与最大公因式 Multiple Roots and GCD**：设 $f(x) \in K[x]$，则：
> - $f(x)$ 有重根当且仅当 $\gcd(f, f') \not\sim 1$（即 $f$ 与 $f'$ 不互素）；
> - $f(x)$ 无重根当且仅当 $\gcd(f, f') \sim 1$（即 $f$ 与 $f'$ 互素）。

> **证明思路**：$\alpha$ 是 $f$ 的重根 $\iff f(\alpha) = 0$ 且 $f'(\alpha) = 0 \iff (x - \alpha) \mid \gcd(f, f')$。故 $f$ 有重根 $\iff \gcd(f, f')$ 有根 $\iff \deg \gcd(f, f') \geq 1 \iff \gcd(f, f') \not\sim 1$。
