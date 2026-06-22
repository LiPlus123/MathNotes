---
title: 线性齐次常系数递推关系
tags:
  - combinatorics
  - recurrence_relations
refs: "[[first_order_recurrence]]"
---
# 线性齐次常系数递推关系

线性齐次常系数递推关系 Linear Homogeneous Recurrence Relation with Constant Coefficients 是一类结构清晰、求解完整的递推关系，其解的结构完全由**特征方程**的根决定。

<!-- lhcc_recurrence_def -->
> [!Definition]
> **线性齐次常系数递推关系 Linear Homogeneous Recurrence Relation with Constant Coefficients**：形如
> $$a_n = c_1 a_{n-1} + c_2 a_{n-2} + \cdots + c_k a_{n-k}, \quad n \geq k$$
> 的递推关系称为 **$k$ 阶线性齐次常系数递推关系**，其中 $c_1, c_2, \ldots, c_k$ 为实数常数，且 $c_k \neq 0$（保证阶数确实为 $k$）。

<!-- characteristic_equation_def -->
> [!Definition]
> **特征方程与特征根 Characteristic Equation and Characteristic Roots**：$k$ 阶线性齐次常系数递推关系 $a_n = c_1 a_{n-1} + \cdots + c_k a_{n-k}$ 对应的**特征方程 Characteristic Equation** 为
> $$r^k - c_1 r^{k-1} - c_2 r^{k-2} - \cdots - c_k = 0.$$
> 特征方程的根 $r_1, r_2, \ldots, r_k$（含重数，计入复数根）称为该递推关系的**特征根 Characteristic Roots**。

<!-- lhcc_distinct_roots_theorem -->
> [!Theorem]
> **不同特征根的通解 General Solution with Distinct Characteristic Roots**：设 $k$ 阶线性齐次常系数递推关系的特征方程有 $k$ 个两两不同的特征根 $r_1, r_2, \ldots, r_k$，则该递推关系的通解为
> $$a_n = \alpha_1 r_1^n + \alpha_2 r_2^n + \cdots + \alpha_k r_k^n,$$
> 其中 $\alpha_1, \alpha_2, \ldots, \alpha_k$ 为由初始条件 $a_0, a_1, \ldots, a_{k-1}$ 唯一确定的常数。

> **证明思路**：首先验证每个 $r_i^n$ 都是递推关系的解（代入即得，因为 $r_i$ 满足特征方程）。由线性性，其线性组合也是解。$k$ 个不同特征根对应 $k$ 个线性无关解（Vandermonde 行列式非零），故线性组合构成解空间的基，通过初始条件线性方程组唯一确定 $\alpha_i$。

<!-- lhcc_repeated_roots_theorem -->
> [!Theorem]
> **含重特征根的通解 General Solution with Repeated Characteristic Roots**：设特征方程有 $s$ 个两两不同的特征根 $r_1, r_2, \ldots, r_s$，其重数分别为 $m_1, m_2, \ldots, m_s$（$m_1 + m_2 + \cdots + m_s = k$），则通解为
> $$a_n = \sum_{i=1}^{s} \left( \alpha_{i,0} + \alpha_{i,1} n + \alpha_{i,2} n^2 + \cdots + \alpha_{i,m_i - 1} n^{m_i - 1} \right) r_i^n,$$
> 其中各 $\alpha_{i,j}$ 由初始条件唯一确定。

> **证明思路**：对重数为 $m$ 的特征根 $r$，可验证 $r^n, n r^n, n^2 r^n, \ldots, n^{m-1} r^n$ 均满足递推关系，且这 $k$ 个函数构成线性无关的解基，从而由初始条件唯一确定系数。

<!-- example_fibonacci_closed -->
> [!Example]+
> **斐波那契数列封闭解 Binet's Formula**：斐波那契递推 $f_n = f_{n-1} + f_{n-2}$，$f_0 = 0$，$f_1 = 1$ 的特征方程为 $r^2 - r - 1 = 0$，两个不同特征根为
> $$r_1 = \frac{1 + \sqrt{5}}{2} =: \varphi \quad(\text{黄金比例}), \qquad r_2 = \frac{1 - \sqrt{5}}{2}.$$
> 通解为 $f_n = \alpha_1 \varphi^n + \alpha_2 r_2^n$，由 $f_0 = 0$，$f_1 = 1$ 解出 $\alpha_1 = \dfrac{1}{\sqrt{5}}$，$\alpha_2 = -\dfrac{1}{\sqrt{5}}$，得**比内公式 Binet's Formula**：
> $$f_n = \frac{1}{\sqrt{5}} \left[ \left(\frac{1+\sqrt{5}}{2}\right)^n - \left(\frac{1-\sqrt{5}}{2}\right)^n \right].$$

<!-- example_lhcc_degree2 -->
> [!Example]+
> **二阶递推举例**：设 $a_n = 5a_{n-1} - 6a_{n-2}$，$a_0 = 1$，$a_1 = 4$。特征方程 $r^2 - 5r + 6 = 0$ 分解为 $(r-2)(r-3) = 0$，特征根 $r_1 = 2$，$r_2 = 3$。通解为 $a_n = \alpha_1 \cdot 2^n + \alpha_2 \cdot 3^n$。由初始条件：$\alpha_1 + \alpha_2 = 1$，$2\alpha_1 + 3\alpha_2 = 4$，解得 $\alpha_1 = -1$，$\alpha_2 = 2$，故
> $$a_n = -2^n + 2 \cdot 3^n.$$
