# 群上同调与下同调

## 群上同调的定义

<!-- group_cohomology_def -->
> [!Definition]
> **群上同调 Group Cohomology**：设 $G$ 是群，$M$ 是左 $G$-模。定义 $G$ 关于系数模 $M$ 的**第 $n$ 个群上同调群**为
> $$
> H^n(G,M) := \mathrm{Ext}_{\mathbb{Z}[G]}^n(\mathbb{Z},M), \quad n\ge 0,
> $$
> 其中 $\mathbb{Z}$ 视为带平凡 $G$-作用的左 $\mathbb{Z}[G]$-模。
>
> 等价地，若 $P_\bullet\to \mathbb{Z}\to0$ 是平凡模 $\mathbb{Z}$ 的投射分解，则
> $$
> H^n(G,M) \cong H^n\!\bigl(\mathrm{Hom}_{\mathbb{Z}[G]}(P_\bullet,M)\bigr).
> $$

## 群下同调的定义

<!-- group_homology_def -->
> [!Definition]
> **群下同调 Group Homology**：设 $G$ 是群，$M$ 是左 $G$-模。定义 $G$ 关于系数模 $M$ 的**第 $n$ 个群下同调群**为
> $$
> H_n(G,M) := \mathrm{Tor}_n^{\mathbb{Z}[G]}(\mathbb{Z},M), \quad n\ge 0,
> $$
> 其中 $\mathbb{Z}$ 仍取平凡 $G$-作用。
>
> 等价地，若 $P_\bullet\to \mathbb{Z}$ 是投射分解，则
> $$
> H_n(G,M) \cong H_n(P_\bullet\otimes_{\mathbb{Z}[G]} M).
> $$

## 零次项

<!-- group_cohomology_degree_zero -->
> [!Proposition]
> **零次群上同调与不变量 Degree-zero Group Cohomology**：
> $$
> H^0(G,M) \cong M^G.
> $$
>
> **证明思路**：由 Ext 的零次项性质，
> $$
> H^0(G,M)=\mathrm{Hom}_{\mathbb{Z}[G]}(\mathbb{Z},M),
> $$
> 而一个 $\mathbb{Z}[G]$-模同态 $\mathbb{Z}\to M$ 恰对应于 $M$ 中一个被所有 $g\in G$ 固定的元素。

<!-- group_homology_degree_zero -->
> [!Proposition]
> **零次群下同调与协不变量 Degree-zero Group Homology**：
> $$
> H_0(G,M) \cong M_G.
> $$
>
> **证明思路**：由 Tor 的零次项性质，
> $$
> H_0(G,M)=\mathbb{Z}\otimes_{\mathbb{Z}[G]} M,
> $$
> 这正是将关系 $g\cdot m \sim m$ 模去得到的商模。

> **注**：群上同调与下同调分别是取不变量函子与协不变量函子的导出，因此它们系统地度量了群作用偏离“平凡固定”与“完全商掉作用”的程度。