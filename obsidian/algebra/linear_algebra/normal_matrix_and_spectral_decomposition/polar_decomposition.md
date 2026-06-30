---
title: 极分解
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 极分解

<!-- polar_decomposition_definition -->
> [!Definition]
> **极分解 Polar Decomposition**：设 $A \in M_n(\mathbb{C})$。若存在酉矩阵 $U \in M_n(\mathbb{C})$ 与 Hermitian 半正定矩阵 $P \in M_n(\mathbb{C})$，使得
> $$
> A = UP,
> $$
> 则称该分解为 $A$ 的**右极分解**。若存在 Hermitian 半正定矩阵 $P'$ 与酉矩阵 $U$ 使得
> $$
> A = P'U,
> $$
> 则称为**左极分解**。

<!-- polar_decomposition_existence -->
> [!Theorem]
> **极分解的存在性与构造 Existence and Construction of Polar Decomposition**：任意复方阵 $A \in M_n(\mathbb{C})$ 都存在极分解
> $$
> A = UP,
> $$
> 其中
> $$
> P = (A^*A)^{1/2}
> $$
> 是 Hermitian 半正定矩阵。类似地，也存在
> $$
> A = P'U, \quad P' = (AA^*)^{1/2}.
> $$
>
> **证明思路**：取 $A$ 的 SVD 为 $A = W\Sigma V^*$，令
> $$
> U = WV^*, \quad P = V\Sigma V^*.
> $$
> 则 $U$ 为酉矩阵，$P$ 为 Hermitian 半正定矩阵，且 $UP = W\Sigma V^* = A$。同理可取 $P' = W\Sigma W^*$ 得到左极分解。

<!-- polar_decomposition_uniqueness -->
> [!Proposition]
> **极分解的唯一性 Uniqueness of Polar Factors**：在右极分解 $A = UP$ 中，正因子
> $$
> P = (A^*A)^{1/2}
> $$
> 总是唯一的；若 $A$ 可逆，则酉因子也唯一，并且
> $$
> U = A(A^*A)^{-1/2}.
> $$
>
> **证明思路**：由 $A = UP$ 可得
> $$
> A^*A = P U^* U P = P^2.
> $$
> 因此 $P$ 必为 $A^*A$ 的唯一 Hermitian 半正定平方根。若 $A$ 可逆，则 $P$ 可逆，于是 $U = AP^{-1}$ 唯一确定。

<!-- polar_decomposition_from_svd -->
> [!Corollary]
> **极分解与奇异值分解的关系 Relation Between Polar Decomposition and SVD**：若
> $$
> A = W\Sigma V^*
> $$
> 是 $A$ 的 SVD，则其右极分解可写为
> $$
> A = (WV^*)(V\Sigma V^*),
> $$
> 左极分解可写为
> $$
> A = (W\Sigma W^*)(WV^*).
> $$
> 因而极分解可以看作“酉变换”和“沿正交方向伸缩”的分离。

<!-- polar_decomposition_normal_commutation -->
> [!Theorem]
> **正规矩阵与极分解中的交换性**：设 $A = UP$ 是方阵 $A$ 的极分解，则以下条件等价：
> 1. $A$ 是正规矩阵；
> 2. $U$ 与 $P$ 可交换，即
> $$
> UP = PU.
> $$
>
> **证明思路**：若 $UP = PU$，则
> $$
> A^*A = P^2 = AA^*.
> $$
> 反向若 $A$ 正规，则由正规矩阵谱定理可写成 $A = V\Lambda V^*$。把 $\Lambda$ 的每个对角元写成“模长 $\times$ 相位”，即可得到 $U$ 与 $P$ 在同一组标准正交基下同时对角化，因此可交换。

<!-- polar_decomposition_geometric_example -->
> [!Example]+
> **几何意义 Geometric Meaning**：对实可逆矩阵 $A \in M_n(\mathbb{R})$，极分解
> $$
> A = QP
> $$
> 中，$Q$ 是正交矩阵，表示旋转或反射；$P$ 是实对称半正定矩阵，表示沿若干互相正交方向的伸缩。因此极分解把一般线性变换分解为“刚性部分”和“伸缩部分”。
