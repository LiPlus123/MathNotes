# 表示的张量积 Tensor Product of Representations

<!-- tensor_product_representation -->
> [!Definition]
> **表示的张量积 Tensor Product of Representations**：设 $\rho: G \to GL(V)$ 与 $\sigma: G \to GL(W)$ 是群 $G$ 的两个表示。在张量积空间 $V \otimes_F W$ 上定义
> $$(\rho \otimes \sigma): G \to GL(V \otimes W), \quad (\rho \otimes \sigma)(g)(v \otimes w) = \rho(g)v \otimes \sigma(g)w,$$
> 并线性延拓至 $V \otimes W$ 上。称 $\rho \otimes \sigma$ 为 $\rho$ 与 $\sigma$ 的**张量积表示**，维数为 $\dim V \cdot \dim W$。

> **注**：定义良好性：由于 $v \otimes w \mapsto \rho(g)v \otimes \sigma(g)w$ 是双线性的，由张量积的泛性质可唯一延拓为线性映射 $(\rho \otimes \sigma)(g): V \otimes W \to V \otimes W$。群同态性由 $\rho$ 和 $\sigma$ 各自的同态性保证：
> $$(\rho \otimes \sigma)(gh)(v \otimes w) = \rho(gh)v \otimes \sigma(gh)w = \rho(g)\rho(h)v \otimes \sigma(g)\sigma(h)w = (\rho \otimes \sigma)(g)\bigl((\rho \otimes \sigma)(h)(v \otimes w)\bigr).$$

<!-- tensor_product_matrix_form -->
> [!Proposition]
> **张量积的矩阵形式 Kronecker Product**：设 $\rho(g)$ 在 $V$ 的基 $\{e_i\}$ 下的矩阵为 $A = (a_{ij})$，$\sigma(g)$ 在 $W$ 的基 $\{f_k\}$ 下的矩阵为 $B = (b_{kl})$，则 $(\rho \otimes \sigma)(g)$ 在 $V \otimes W$ 的基 $\{e_i \otimes f_k\}$ 下的矩阵为 $A$ 与 $B$ 的 **Kronecker 积** $A \otimes B$，其中
> $$(A \otimes B)_{(i,k),(j,l)} = a_{ij} b_{kl}.$$
