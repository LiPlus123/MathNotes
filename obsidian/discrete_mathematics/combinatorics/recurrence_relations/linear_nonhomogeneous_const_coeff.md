---
title: 线性非齐次常系数递推关系
tags:
  - combinatorics
  - recurrence_relations
refs: "[[linear_homogeneous_const_coeff]]"
---
# 线性非齐次常系数递推关系

线性非齐次常系数递推关系 Linear Nonhomogeneous Recurrence Relation with Constant Coefficients 比齐次情形多了一个非零的"强迫项"$f(n)$，其通解由对应齐次递推的通解加上一个特解构成。

<!-- lnhcc_recurrence_def -->
> [!Definition]
> **线性非齐次常系数递推关系 Linear Nonhomogeneous Recurrence Relation with Constant Coefficients**：形如
> $$a_n = c_1 a_{n-1} + c_2 a_{n-2} + \cdots + c_k a_{n-k} + f(n), \quad n \geq k$$
> 的递推关系称为 **$k$ 阶线性非齐次常系数递推关系**，其中 $c_1, \ldots, c_k$ 为实数常数，$c_k \neq 0$，$f(n) \not\equiv 0$。去掉 $f(n)$ 后对应的递推关系 $a_n = c_1 a_{n-1} + \cdots + c_k a_{n-k}$ 称为其**关联齐次递推 Associated Homogeneous Recurrence**。

<!-- lnhcc_structure_theorem -->
> [!Theorem]
> **解的结构定理 Structure Theorem of Solutions**：设 $a_n^{(p)}$ 是线性非齐次常系数递推关系
> $$a_n = c_1 a_{n-1} + \cdots + c_k a_{n-k} + f(n)$$
> 的一个**特解 Particular Solution**，$a_n^{(h)}$ 是其关联齐次递推的**通解 General Solution**，则原非齐次递推关系的通解为
> $$a_n = a_n^{(h)} + a_n^{(p)}.$$

> **证明思路**：设 $a_n$ 是非齐次递推的任一解，则 $a_n - a_n^{(p)}$ 满足关联齐次递推，因此属于齐次通解 $a_n^{(h)}$；反之，$a_n^{(h)} + a_n^{(p)}$ 代入验证确实满足非齐次递推。

<!-- lnhcc_particular_solution_polynomial_exponential -->
> [!Theorem]
> **待定系数法——多项式乘指数型特解 Method of Undetermined Coefficients**：设强迫项为 $f(n) = P(n) \cdot s^n$，其中 $P(n)$ 是 $t$ 次多项式，$s$ 是常数，则：
> 1. 若 $s$ **不是**关联齐次递推特征方程的根，则存在特解 $a_n^{(p)} = Q(n) \cdot s^n$，其中 $Q(n)$ 是待定的 $t$ 次多项式。
> 2. 若 $s$ **是**特征方程的 $m$ 重根（$m \geq 1$），则存在特解 $a_n^{(p)} = n^m \cdot Q(n) \cdot s^n$，其中 $Q(n)$ 是待定的 $t$ 次多项式。

> **证明思路**：将试探特解代入递推关系，比较等式两端同次多项式项的系数，建立关于待定系数的线性方程组。当 $s$ 不是特征根时方程组有唯一解；当 $s$ 是 $m$ 重特征根时，引入因子 $n^m$ 使方程组可解。

<!-- example_lnhcc_exponential -->
> [!Example]+
> **指数型强迫项 Exponential Forcing**：设 $a_n = 6a_{n-1} - 9a_{n-2} + 2^n$，$a_0 = 0$，$a_1 = 1$。
>
> 关联齐次递推特征方程 $r^2 - 6r + 9 = (r-3)^2 = 0$，有二重特征根 $r = 3$，齐次通解为 $a_n^{(h)} = (\alpha_1 + \alpha_2 n) \cdot 3^n$。
>
> 强迫项 $f(n) = 2^n$，即 $s = 2$，$P(n) = 1$（0 次），$s = 2$ 不是特征根，故令 $a_n^{(p)} = A \cdot 2^n$。代入：
> $$A \cdot 2^n = 6A \cdot 2^{n-1} - 9A \cdot 2^{n-2} + 2^n,$$
> 两端除以 $2^{n-2}$：$4A = 12A - 9A + 4$，解得 $A = 4$，故特解 $a_n^{(p)} = 4 \cdot 2^n$。
>
> 通解 $a_n = (\alpha_1 + \alpha_2 n) \cdot 3^n + 4 \cdot 2^n$。由 $a_0 = 0$：$\alpha_1 + 4 = 0$，$\alpha_1 = -4$；由 $a_1 = 1$：$(-4 + \alpha_2) \cdot 3 + 8 = 1$，$\alpha_2 = 3$，故
> $$a_n = (-4 + 3n) \cdot 3^n + 4 \cdot 2^n.$$

<!-- example_lnhcc_polynomial -->
> [!Example]+
> **多项式型强迫项 Polynomial Forcing**：设 $a_n = 2a_{n-1} + n$，$a_0 = 1$。
>
> 关联齐次递推特征方程 $r - 2 = 0$，特征根 $r = 2$，齐次通解 $a_n^{(h)} = \alpha \cdot 2^n$。
>
> 强迫项 $f(n) = n = n \cdot 1^n$，$s = 1$，$P(n) = n$（1 次），$s = 1$ 不是特征根，故令 $a_n^{(p)} = An + B$。代入：
> $$An + B = 2(A(n-1) + B) + n = (2A + 1)n + (-2A + 2B).$$
> 比较系数：$A = 2A + 1 \Rightarrow A = -1$；$B = -2A + 2B \Rightarrow B = 2A = -2$，故 $a_n^{(p)} = -n - 2$。
>
> 通解 $a_n = \alpha \cdot 2^n - n - 2$。由 $a_0 = 1$：$\alpha - 2 = 1$，$\alpha = 3$，故
> $$a_n = 3 \cdot 2^n - n - 2.$$
