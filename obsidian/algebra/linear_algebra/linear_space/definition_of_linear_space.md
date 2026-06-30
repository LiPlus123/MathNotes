---
title: 线性空间的定义
tags:
  - linear_algebra
  - linear_space
---

# 线性空间的定义

<!-- linear_space_definition -->
> [!Definition]
> **线性空间 Linear Space**（又称**向量空间 Vector Space**）：设 $F$ 为数域，$V$ 为非空集合，$V$ 上定义了两种运算：
> - **加法**：$+: V \times V \to V$，$(u, v) \mapsto u + v$
> - **数乘**：$\cdot: F \times V \to V$，$(\lambda, v) \mapsto \lambda v$
>
> 若以下八条公理成立，则称 $V$ 是数域 $F$ 上的**线性空间**，$V$ 中的元素称为**向量**：
>
> *加法公理*：
> 1. **交换律**：$\forall u, v \in V,\ u + v = v + u$
> 2. **结合律**：$\forall u, v, w \in V,\ (u + v) + w = u + (v + w)$
> 3. **零元存在**：$\exists\, \mathbf{0} \in V,\ \forall v \in V,\ v + \mathbf{0} = v$
> 4. **负元存在**：$\forall v \in V,\ \exists\, {-v} \in V,\ v + (-v) = \mathbf{0}$
>
> *数乘公理*：
> 5. **单位元**：$\forall v \in V,\ 1 \cdot v = v$
> 6. **结合律**：$\forall \lambda, \mu \in F,\ \forall v \in V,\ (\lambda \mu) v = \lambda (\mu v)$
> 7. **对数的加法分配律**：$\forall \lambda, \mu \in F,\ \forall v \in V,\ (\lambda + \mu) v = \lambda v + \mu v$
> 8. **对向量的加法分配律**：$\forall \lambda \in F,\ \forall u, v \in V,\ \lambda (u + v) = \lambda u + \lambda v$

> **注**：
> - 实数域 $\mathbb{R}$ 上的线性空间称为**实线性空间**，复数域 $\mathbb{C}$ 上的线性空间称为**复线性空间**。
> - 常见例子：$\mathbb{R}^n$（$n$ 维实向量空间）、$\mathbb{C}^n$（$n$ 维复向量空间）、$F[x]_{\leq n}$（次数不超过 $n$ 的多项式全体）、$M_{m \times n}(F)$（$m \times n$ 矩阵全体）。

<!-- linear_space_zero_vector_unique -->
> [!Theorem]
> **零向量唯一性**：线性空间 $V$ 中满足公理 3 的零元 $\mathbf{0}$ 是唯一的。

> **证明思路**：设 $\mathbf{0}'$ 也满足零元条件，则 $\mathbf{0} = \mathbf{0} + \mathbf{0}' = \mathbf{0}'$。

<!-- linear_space_negative_vector_unique -->
> [!Theorem]
> **负向量唯一性**：线性空间 $V$ 中每个向量 $v$ 的负元 $-v$ 是唯一的。

> **证明思路**：设 $v + w = \mathbf{0}$ 且 $v + w' = \mathbf{0}$，则 $w = w + \mathbf{0} = w + (v + w') = (w + v) + w' = \mathbf{0} + w' = w'$。

<!-- linear_space_basic_properties -->
> [!Theorem]
> **线性空间的基本运算性质**：设 $V$ 是数域 $F$ 上的线性空间，$\lambda \in F$，$v \in V$，则：
> 1. $0_F \cdot v = \mathbf{0}$（$F$ 中零元的数乘为零向量）
> 2. $\lambda \cdot \mathbf{0} = \mathbf{0}$（任意标量乘零向量为零向量）
> 3. $(-1) \cdot v = -v$（$-1$ 的数乘等于负元）
> 4. $\lambda v = \mathbf{0} \implies \lambda = 0_F \text{ 或 } v = \mathbf{0}$

> **证明思路**：
> 1. $0_F \cdot v = (0_F + 0_F) \cdot v = 0_F \cdot v + 0_F \cdot v$，两边加 $-(0_F \cdot v)$ 得 $\mathbf{0} = 0_F \cdot v$。
> 2. 同理，$\lambda \cdot \mathbf{0} = \lambda(\mathbf{0} + \mathbf{0}) = \lambda \mathbf{0} + \lambda \mathbf{0}$，故 $\lambda \mathbf{0} = \mathbf{0}$。
> 3. $v + (-1) \cdot v = 1 \cdot v + (-1) \cdot v = (1 + (-1)) v = 0_F \cdot v = \mathbf{0}$，故 $(-1) \cdot v = -v$。
> 4. 若 $\lambda \neq 0_F$，则 $v = 1 \cdot v = (\lambda^{-1} \lambda) v = \lambda^{-1}(\lambda v) = \lambda^{-1} \mathbf{0} = \mathbf{0}$。
