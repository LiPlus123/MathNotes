# 维达定理 Vieta's Formulas

## 初等对称多项式

<!-- elementary_symmetric_polynomial_def -->
> [!Definition]
> **初等对称多项式 Elementary Symmetric Polynomial**：设 $\alpha_1, \alpha_2, \ldots, \alpha_n$ 是 $n$ 个变量。第 $k$ 个**初等对称多项式**（elementary symmetric polynomial，$1 \leq k \leq n$）定义为
> $$e_k(\alpha_1, \ldots, \alpha_n) = \sum_{1 \leq i_1 < i_2 < \cdots < i_k \leq n} \alpha_{i_1} \alpha_{i_2} \cdots \alpha_{i_k}.$$
> 特别地，$e_0 = 1$，$e_1 = \alpha_1 + \cdots + \alpha_n$，$e_n = \alpha_1 \alpha_2 \cdots \alpha_n$。

## 维达定理

<!-- vietas_formulas -->
> [!Theorem]
> **维达定理 Vieta's Formulas**：设 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 \in K[x]$（$a_n \neq 0$）是次数为 $n$ 的多项式，$\alpha_1, \alpha_2, \ldots, \alpha_n$（在某包含 $K$ 的数域中）是 $f(x)$ 的 $n$ 个根（计入重数），则对 $k = 1, 2, \ldots, n$，有
> $$e_k(\alpha_1, \ldots, \alpha_n) = (-1)^k \frac{a_{n-k}}{a_n}.$$
> 展开写出即：
> $$\begin{align*}
> \alpha_1 + \alpha_2 + \cdots + \alpha_n &= -\frac{a_{n-1}}{a_n}, \\
> \sum_{1 \leq i < j \leq n} \alpha_i \alpha_j &= \frac{a_{n-2}}{a_n}, \\
> &\ \vdots \\
> \alpha_1 \alpha_2 \cdots \alpha_n &= (-1)^n \frac{a_0}{a_n}.
> \end{align*}$$

> **证明思路**：由代数学基本定理（在 $\mathbb{C}$ 上），$f(x) = a_n(x - \alpha_1)(x - \alpha_2) \cdots (x - \alpha_n)$。展开右端，$x^{n-k}$ 项的系数为 $a_n \cdot (-1)^k e_k(\alpha_1, \ldots, \alpha_n)$，与原多项式系数 $a_{n-k}$ 相比较，得 $(-1)^k e_k = a_{n-k}/a_n$，即 $e_k = (-1)^k a_{n-k}/a_n$。

> **注**：维达定理建立了多项式系数与根的初等对称函数之间的联系，但其逆命题不成立——满足维达公式的 $n$ 个复数 $\alpha_1, \ldots, \alpha_n$ 是某多项式的根，但不一定在原数域 $K$ 内。

## 二次与三次方程的维达公式

<!-- vieta_quadratic -->
> [!Example]+
> **二次方程的维达公式 Vieta's Formulas for Quadratic**：设 $f(x) = ax^2 + bx + c$（$a \neq 0$），根为 $\alpha_1, \alpha_2$，则
> $$\alpha_1 + \alpha_2 = -\frac{b}{a}, \qquad \alpha_1 \alpha_2 = \frac{c}{a}.$$

<!-- vieta_cubic -->
> [!Example]+
> **三次方程的维达公式 Vieta's Formulas for Cubic**：设 $f(x) = ax^3 + bx^2 + cx + d$（$a \neq 0$），根为 $\alpha_1, \alpha_2, \alpha_3$，则
> $$\alpha_1 + \alpha_2 + \alpha_3 = -\frac{b}{a}, \quad \alpha_1\alpha_2 + \alpha_1\alpha_3 + \alpha_2\alpha_3 = \frac{c}{a}, \quad \alpha_1\alpha_2\alpha_3 = -\frac{d}{a}.$$
