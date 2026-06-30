# 群表示的定义 Definition of Group Representation

<!-- definition_of_group_representation -->
> [!Definition]
> **群表示 Group Representation**：设 $G$ 是一个群，$F$ 是一个域，$V$ 是 $F$ 上的有限维线性空间。$G$ 在 $V$ 上的一个**（线性）表示**是一个群同态
> $$\rho: G \to GL(V),$$
> 其中 $GL(V)$ 是 $V$ 上所有可逆线性变换构成的群（即 $GL(V) = \mathrm{Aut}_F(V)$）。$V$ 称为**表示空间**，$\dim V$ 称为表示的**维数**（或**度**），记为 $\deg \rho$。

> **注**：$\rho$ 是群同态要求 $\rho(gh) = \rho(g)\rho(h)$ 对所有 $g, h \in G$ 成立，由此自动有 $\rho(e) = \mathrm{Id}_V$ 以及 $\rho(g^{-1}) = \rho(g)^{-1}$。

<!-- representation_as_matrix_homomorphism -->
> [!Definition]
> **矩阵表示 Matrix Representation**：选定 $V$ 的一组基后，每个 $\rho(g)$ 对应唯一的可逆矩阵，从而可将表示等价地视为群同态
> $$\rho: G \to GL(n, F), \quad n = \dim V.$$
> 称此为 $G$ 的一个 $n$ **次矩阵表示**。

> **注**：**本章中所有线性空间均默认为有限维的。** 表示所在的域 $F$ 通常取 $\mathbb{C}$（复数域）或 $\mathbb{R}$（实数域），有限群表示论中主要考虑特征为零的代数闭域，常取 $F = \mathbb{C}$。
