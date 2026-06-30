---
title: 正交与投影
tags:
  - linear_algebra
  - normed_space_and_inner_product_space
---

# 正交与投影

<!-- orthogonality_definition -->
> [!Definition]
> **正交 Orthogonality**：设 $V$ 为内积空间。若 $\langle x,y\rangle=0$，则称向量 $x$ 与 $y$ **正交**，记作 $x\perp y$。
>
> 若子集 $S\subseteq V$ 中任意两个不同向量两两正交，则称 $S$ 为**正交集**；若再满足每个向量范数为 $1$，则称为**标准正交集**（或正交归一集）。

<!-- orthogonal_complement_definition -->
> [!Definition]
> **正交补 Orthogonal Complement**：设 $W\le V$，定义
> $$
> W^\perp=\{x\in V\mid \langle x,w\rangle=0,\ \forall w\in W\}.
> $$
> 称 $W^\perp$ 为 $W$ 在 $V$ 中的正交补。

<!-- orthogonal_complement_subspace_theorem -->
> [!Theorem]
> **正交补是子空间**：$W^\perp\le V$，且 $W\cap W^\perp=\{\mathbf{0}\}$。

> **证明思路**：由内积线性性可验证 $W^\perp$ 对线性组合封闭；若 $x\in W\cap W^\perp$，则 $\langle x,x\rangle=0$，由正定性得 $x=\mathbf{0}$。

<!-- orthogonal_decomposition_theorem -->
> [!Theorem]
> **正交分解定理 Orthogonal Decomposition**：设 $V$ 为有限维内积空间，$W\le V$，则
> $$
> V=W\oplus W^\perp.
> $$
> 即任意 $x\in V$ 可唯一写成
> $$
> x=w+u,\quad w\in W,\ u\in W^\perp.
> $$

> **证明思路**：取 $W$ 的一组标准正交基并构造候选分量 $w$，令 $u=x-w$，验证 $u\in W^\perp$；唯一性由 $W\cap W^\perp=\{\mathbf{0}\}$ 得到。

<!-- orthogonal_projection_definition -->
> [!Definition]
> **正交投影 Orthogonal Projection**：在上述分解下，定义映射
> $$
> P_W:V\to W,\quad P_W(x)=w,
> $$
> 其中 $x=w+u$、$u\in W^\perp$。称 $P_W(x)$ 为 $x$ 在 $W$ 上的正交投影。

<!-- projection_formula_orthonormal_basis -->
> [!Theorem]
> **正交投影公式**：若 $\{e_1,\ldots,e_k\}$ 是 $W$ 的一组标准正交基，则
> $$
> P_W(x)=\sum_{i=1}^k \langle x,e_i\rangle e_i,
> $$
> 且
> $$
> x-P_W(x)\in W^\perp.
> $$

> **证明思路**：先验证右侧向量属于 $W$，再对任意 $e_j$ 计算
> $$
> \left\langle x-\sum_{i=1}^k\langle x,e_i\rangle e_i,e_j\right\rangle=0,
> $$
> 从而落在 $W^\perp$。

<!-- gram_schmidt_theorem -->
> [!Theorem]
> **Gram-Schmidt 正交化 Gram-Schmidt Orthogonalization**：设 $v_1,\ldots,v_n$ 线性无关，则可递推构造标准正交组 $e_1,\ldots,e_n$，满足
> $$
> \mathrm{span}(e_1,\ldots,e_k)=\mathrm{span}(v_1,\ldots,v_k),\quad k=1,\ldots,n.
> $$

> **证明思路**：定义
> $$
> u_1=v_1,\quad
> u_k=v_k-\sum_{i=1}^{k-1}\frac{\langle v_k,u_i\rangle}{\langle u_i,u_i\rangle}u_i\ (k\ge2),
> $$
> 再令 $e_k=u_k/\|u_k\|$。由构造可得 $u_k$ 与先前向量正交且非零，故可归一化。

> **注**：Gram-Schmidt 过程给出“由任意基到标准正交基”的可计算方法，是最小二乘法与 QR 分解的重要基础。