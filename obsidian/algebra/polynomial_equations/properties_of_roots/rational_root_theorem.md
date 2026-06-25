# 有理根定理 Rational Root Theorem

## 本原多项式

<!-- primitive_polynomial_def -->
> [!Definition]
> **本原多项式 Primitive Polynomial**：设 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_0 \in \mathbb{Z}[x]$。若所有系数的最大公因数为 $1$，即 $\gcd(|a_n|, |a_{n-1}|, \ldots, |a_0|) = 1$，则称 $f(x)$ 为**本原多项式**（primitive polynomial）。

> **注**：任意非零整系数多项式 $f(x)$ 都可以写成 $f(x) = c(f) \cdot f^*(x)$ 的形式，其中 $c(f) \in \mathbb{Z}^+$ 是所有系数的最大公因数（称为 $f$ 的**容度** content），$f^*(x)$ 是本原多项式（称为 $f$ 的**本原部分**）。

## 有理根定理

<!-- rational_root_theorem -->
> [!Theorem]
> **有理根定理 Rational Root Theorem**：设 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \in \mathbb{Z}[x]$（$a_n \neq 0$，$a_0 \neq 0$）。若有理数 $\dfrac{p}{q}$（$p, q \in \mathbb{Z}$，$q > 0$，$\gcd(|p|, q) = 1$）是 $f(x)$ 的根，则
> $$p \mid a_0 \quad \text{且} \quad q \mid a_n.$$

> **证明思路**：将 $f\!\left(\dfrac{p}{q}\right) = 0$ 两边乘以 $q^n$：
> $$a_n p^n + a_{n-1} p^{n-1} q + \cdots + a_1 p q^{n-1} + a_0 q^n = 0.$$
> 移项：$a_0 q^n = -p(a_n p^{n-1} + a_{n-1} p^{n-2} q + \cdots + a_1 q^{n-1})$，故 $p \mid a_0 q^n$。由 $\gcd(|p|, q) = 1$ 得 $\gcd(|p|, q^n) = 1$，从而 $p \mid a_0$。类似地，移项得 $a_n p^n = -q(a_{n-1} p^{n-1} + \cdots + a_0 q^{n-1})$，故 $q \mid a_n p^n$；由 $\gcd(|p|^n, q) = 1$，得 $q \mid a_n$。

> **注**：有理根定理给出了整系数多项式有理根的**必要条件**。它将寻找有理根的范围缩减为有限个候选值 $\dfrac{p}{q}$，其中 $p$ 遍历 $a_0$ 的所有因数（含正负），$q$ 遍历 $a_n$ 的所有正因数，再逐一代入验证即可。

## 应用举例

<!-- rational_root_example -->
> [!Example]+
> **有理根的搜索 Searching for Rational Roots**：求 $f(x) = 2x^3 - 3x^2 - 11x + 6$ 的有理根。

> **证明思路**：$a_0 = 6$ 的因数为 $\pm 1, \pm 2, \pm 3, \pm 6$；$a_n = 2$ 的正因数为 $1, 2$。候选有理根为 $\pm 1, \pm 2, \pm 3, \pm 6, \pm 1/2, \pm 3/2$。逐一代入：$f(3) = 54 - 27 - 33 + 6 = 0$，故 $x = 3$ 是根；$f(-2) = -16 - 12 + 22 + 6 = 0$，故 $x = -2$ 是根；$f(1/2) = 1/4 - 3/4 - 11/2 + 6 = 0$，故 $x = 1/2$ 是根。从而 $f(x) = 2(x-3)(x+2)(x-1/2) = (x-3)(x+2)(2x-1)$。
