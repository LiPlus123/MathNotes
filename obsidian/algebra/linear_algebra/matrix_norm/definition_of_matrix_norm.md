---
title: 矩阵范数的定义
tags:
  - linear_algebra
  - matrix_norm
---

# 矩阵范数的定义

<!-- matrix_norm_definition -->
> [!Definition]
> **矩阵范数 Matrix Norm**：设 $F$ 为 $\mathbb{R}$ 或 $\mathbb{C}$，$M_{m\times n}(F)$ 为 $F$ 上全体 $m\times n$ 矩阵构成的线性空间。若映射
> $$
> \|\cdot\|: M_{m\times n}(F) \to \mathbb{R}
> $$
> 满足对任意 $A,B\in M_{m\times n}(F)$、$\alpha\in F$：
> 1. **正定性**：$\|A\|\ge 0$，且 $\|A\|=0\iff A=O$；
> 2. **齐次性**：$\|\alpha A\|=|\alpha|\,\|A\|$；
> 3. **三角不等式**：$\|A+B\|\le \|A\|+\|B\|$，
>
> 则称 $\|\cdot\|$ 是 $M_{m\times n}(F)$ 上的一个**矩阵范数**。

> **注**：矩阵范数本质上是将矩阵空间视为线性空间后的向量范数。对于方阵还可额外要求**次乘性**（见矩阵范数的不等式），但本定义不强制要求。

<!-- induced_matrix_norm_definition -->
> [!Definition]
> **向量范数诱导的矩阵范数（算子范数）Operator Norm**：设 $F^n$ 上赋有向量范数 $\|\cdot\|_\alpha$，$F^m$ 上赋有向量范数 $\|\cdot\|_\beta$。对 $A\in M_{m\times n}(F)$，定义
> $$
> \|A\|_{\alpha\to\beta} = \sup_{x\neq\mathbf{0}} \frac{\|Ax\|_\beta}{\|x\|_\alpha} = \max_{\|x\|_\alpha=1} \|Ax\|_\beta,
> $$
> 则 $\|\cdot\|_{\alpha\to\beta}$ 是 $M_{m\times n}(F)$ 上的一个矩阵范数，称为由 $\|\cdot\|_\alpha$ 和 $\|\cdot\|_\beta$ **诱导**的矩阵范数（算子范数）。当 $\|\cdot\|_\alpha=\|\cdot\|_\beta=\|\cdot\|_p$ 时，简记为 $\|A\|_p$。

> **注**：算子范数刻画矩阵作为线性映射对向量的最大放大倍数，因此满足相容性条件 $\|Ax\|_\beta \leq \|A\|_{\alpha\to\beta}\|x\|_\alpha$。

<!-- row_norm_definition -->
> [!Definition]
> **行范数（$\infty$-范数）Row Norm**：由向量无穷范数 $\|\cdot\|_\infty$ 诱导的矩阵范数称为**行范数**，对 $A\in M_{m\times n}(F)$：
> $$
> \|A\|_\infty = \max_{1\le i\le m} \sum_{j=1}^n |a_{ij}|,
> $$
> 即矩阵各行元素绝对值之和的最大值。

> **证明思路**：对 $\|x\|_\infty=1$ 的 $x$，$\|Ax\|_\infty = \max_i|\sum_j a_{ij}x_j|\leq \max_i\sum_j|a_{ij}|$；取 $x^*$ 使第 $i^*$ 行达到最大且各分量符号与 $a_{i^*j}$ 一致，则等号成立。

<!-- column_norm_definition -->
> [!Definition]
> **列范数（$1$-范数）Column Norm**：由向量 $1$-范数 $\|\cdot\|_1$ 诱导的矩阵范数称为**列范数**，对 $A\in M_{m\times n}(F)$：
> $$
> \|A\|_1 = \max_{1\le j\le n} \sum_{i=1}^m |a_{ij}|,
> $$
> 即矩阵各列元素绝对值之和的最大值。

> **证明思路**：对 $\|x\|_1=1$ 的 $x$，$\|Ax\|_1=\sum_i|\sum_j a_{ij}x_j|\leq\sum_j|x_j|\sum_i|a_{ij}|\leq\max_j\sum_i|a_{ij}|$；取 $x=e_{j^*}$ 即可取等。

<!-- spectral_norm_definition -->
> [!Definition]
> **谱范数（$2$-范数）Spectral Norm**：由向量 $2$-范数 $\|\cdot\|_2$ 诱导的矩阵范数称为**谱范数**，对 $A\in M_{m\times n}(F)$：
> $$
> \|A\|_2 = \sqrt{\lambda_{\max}(A^*A)},
> $$
> 其中 $\lambda_{\max}(A^*A)$ 是半正定矩阵 $A^*A\in M_n(F)$ 的最大特征值。

> **注**：$\|A\|_2$ 也等于 $A$ 的最大奇异值。

<!-- frobenius_norm_definition -->
> [!Definition]
> **Frobenius 范数 Frobenius Norm**：对 $A\in M_{m\times n}(F)$，定义
> $$
> \|A\|_F = \sqrt{\sum_{i=1}^m\sum_{j=1}^n |a_{ij}|^2} = \sqrt{\mathrm{tr}(A^*A)},
> $$
> 称为 $A$ 的 **Frobenius 范数**（也称 F-范数或 Hilbert–Schmidt 范数）。

> **注**：Frobenius 范数不是任何向量范数诱导的算子范数，但它满足次乘性 $\|AB\|_F\leq\|A\|_F\|B\|_F$（见矩阵范数的不等式）。它可视为将 $M_{m\times n}(F)$ 与 $F^{mn}$ 等同后赋予的 Euclid 范数。
