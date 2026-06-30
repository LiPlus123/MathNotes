# 舒尔引理 Schur's Lemma

<!-- schur_lemma -->
> [!Lemma]
> **舒尔引理 Schur's Lemma**：设 $\rho: G \to GL(V)$ 和 $\sigma: G \to GL(W)$ 是群 $G$ 的两个不可约表示，$T: V \to W$ 是从 $\rho$ 到 $\sigma$ 的交结算子（$G$-线性映射）。则：
> 1. 若 $\rho \not\cong \sigma$，则 $T = 0$；
> 2. 若 $\rho = \sigma$（即 $V = W$，$T \in \mathrm{End}_G(V)$），则 $T$ 要么是零映射，要么是同构（可逆）。
>
> 等价地，$\mathrm{Hom}_G(V, W) \neq 0$ 当且仅当 $\rho \cong \sigma$，此时每个非零交结算子均为同构。

> **证明思路**：注意 $\ker T \leq V$ 和 $\mathrm{Im}\, T \leq W$ 都是 $G$-不变子空间。由 $V$ 不可约，$\ker T = \{0\}$ 或 $\ker T = V$；由 $W$ 不可约，$\mathrm{Im}\, T = \{0\}$ 或 $\mathrm{Im}\, T = W$。若 $T \neq 0$，则 $\ker T = \{0\}$ 且 $\mathrm{Im}\, T = W$，即 $T$ 是同构，故 $\rho \cong \sigma$。

<!-- schur_lemma_algebraically_closed -->
> [!Corollary]
> **代数闭域上的舒尔引理 Schur's Lemma over Algebraically Closed Fields**：设 $F$ 是代数闭域（如 $F = \mathbb{C}$），$\rho: G \to GL(V)$ 是不可约表示。则每个 $G$-自同态 $T \in \mathrm{End}_G(V)$ 均为数乘映射，即存在唯一 $\lambda \in F$ 使得 $T = \lambda \, \mathrm{Id}_V$。从而
> $$\mathrm{End}_G(V) \cong F.$$

> **证明思路**：由于 $F$ 代数闭，$T$ 有特征值 $\lambda \in F$，则 $T - \lambda\, \mathrm{Id}_V \in \mathrm{End}_G(V)$ 且不可逆，故由舒尔引理（第二条）$T - \lambda\, \mathrm{Id}_V = 0$，即 $T = \lambda\, \mathrm{Id}_V$。

<!-- schur_lemma_hom_dim -->
> [!Corollary]
> **交结算子空间的维数 Dimension of Intertwining Space**：设 $F$ 是代数闭域，$\rho: G \to GL(V)$ 和 $\sigma: G \to GL(W)$ 是 $G$ 的不可约表示，则
> $$\dim_F \mathrm{Hom}_G(V, W) = \begin{cases} 1 & \text{若 } \rho \cong \sigma, \\ 0 & \text{若 } \rho \not\cong \sigma. \end{cases}$$

<!-- schur_lemma_abelian_groups -->
> [!Corollary]
> **交换群的不可约表示 Irreducible Representations of Abelian Groups**：设 $F$ 是代数闭域，$G$ 是交换群。则 $G$ 在 $F$ 上的每个不可约表示均为一维表示。

> **证明思路**：对任意 $h \in G$，映射 $\rho(h): V \to V$ 满足 $\rho(h) \circ \rho(g) = \rho(hg) = \rho(gh) = \rho(g) \circ \rho(h)$，故 $\rho(h) \in \mathrm{End}_G(V)$。由代数闭域上的舒尔引理，$\rho(h) = \lambda_h \, \mathrm{Id}_V$。故 $V$ 的每个一维子空间均为 $G$-不变子空间；由 $\rho$ 不可约得 $\dim V = 1$。

<!-- schur_lemma_application -->
> [!Example]+
> **舒尔引理的应用**：设 $G = S_3$，$F = \mathbb{C}$，$\rho$ 为标准表示（二维不可约），$\sigma$ 为平凡表示（一维）。由 $\rho \not\cong \sigma$，舒尔引理保证 $\mathrm{Hom}_G(\mathbb{C}^2, \mathbb{C}) = 0$，即不存在非零交结算子——这与两者维数不等亦一致，但舒尔引理给出的是代数结构层面的保证。
