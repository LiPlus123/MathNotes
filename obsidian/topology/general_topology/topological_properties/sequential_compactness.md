# 列紧性

## 拓扑空间中的收敛序列

<!-- topological_sequence_convergence -->
> [!Definition]
> **拓扑空间中的序列收敛 Sequence Convergence in Topological Spaces**：设 $(X, \mathcal{T})$ 是拓扑空间，$(x_n)_{n \geq 1}$ 是 $X$ 中的序列，$x \in X$。若对 $x$ 的每个开邻域 $U$，存在 $N \in \mathbb{Z}^+$ 使得对所有 $n \geq N$ 均有 $x_n \in U$，则称序列 $(x_n)$ **收敛 Converges** 到 $x$，记为 $x_n \to x$。在 Hausdorff 空间中，极限唯一。

## 列紧性

<!-- sequentially_compact_definition -->
> [!Definition]
> **列紧性 Sequential Compactness**：拓扑空间 $(X, \mathcal{T})$ 称为**列紧的 Sequentially Compact**，若 $X$ 中的每个序列都有收敛的子序列。

## 有界与全有界度量空间

<!-- bounded_metric_space_definition -->
> [!Definition]
> **有界度量空间 Bounded Metric Space**：度量空间 $(X, d)$ 称为**有界的 Bounded**，若存在 $M > 0$ 使得对所有 $x, y \in X$ 均有 $d(x, y) \leq M$。等价地，存在 $x_0 \in X$ 和 $R > 0$ 使得 $X = B(x_0, R)$。

<!-- totally_bounded_definition -->
> [!Definition]
> **全有界度量空间 Totally Bounded Metric Space**：度量空间 $(X, d)$ 称为**全有界的 Totally Bounded**（或**预紧的 Precompact**），若对每个 $\varepsilon > 0$，$X$ 可以被有限个半径为 $\varepsilon$ 的开球覆盖，即存在有限集 $F \subseteq X$ 使得 $X = \bigcup_{x \in F} B(x, \varepsilon)$。

> **注**：全有界 $\Rightarrow$ 有界，但反之不然（例如无限集上的离散度量是有界的，但不是全有界的——以半径 $\frac{1}{2}$ 的球覆盖需要无限个球）。

## 度量空间的列紧性

<!-- metric_sequential_compact_equiv -->
> [!Theorem]
> **度量空间的列紧性等价条件 Sequential Compactness in Metric Spaces**：度量空间 $(X, d)$ 是列紧的，当且仅当 $(X, d)$ 是完备且全有界的。
>
> **证明思路**：$(\Rightarrow)$ 完备性：柯西序列有收敛子列，故收敛；全有界：若非全有界，取 $\varepsilon > 0$ 无有限 $\varepsilon$-网，可选出序列使任意两项距离 $\geq \varepsilon$，该序列无收敛子列，矛盾。$(\Leftarrow)$ 对序列 $(x_n)$，由全有界性反复二分覆盖，通过对角线方法提取柯西子列，由完备性得收敛子列。

<!-- compact_equiv_metric -->
> [!Theorem]
> **度量空间中紧致与列紧等价 Compactness Equivalent to Sequential Compactness in Metric Spaces**：对度量空间（更一般地，对第二可数空间），紧致与列紧等价。
>
> **证明思路**：紧致 $\Rightarrow$ 列紧：若某序列无收敛子列，则每个点只在序列中出现有限次，由此构造无有限子覆盖的开覆盖，矛盾。列紧 $\Rightarrow$ 紧致：列紧度量空间完备且全有界，由此（通过全有界性构造 $\varepsilon$-网）证明每个开覆盖有有限子覆盖。

## Bolzano–Weierstrass 定理

<!-- bolzano_weierstrass_theorem -->
> [!Theorem]
> **Bolzano–Weierstrass 定理 Bolzano–Weierstrass Theorem**：$\mathbb{R}^n$ 中的每个有界序列都有收敛的子序列。
>
> **证明思路**：有界序列含于某 $[-M, M]^n$，后者由 Heine–Borel 定理是紧致的，故是列紧的，从而每个序列有收敛子列。

<!-- bolzano_weierstrass_set_version -->
> [!Corollary]
> **Bolzano–Weierstrass 定理（集合版本）Bolzano–Weierstrass Theorem (Set Version)**：$\mathbb{R}^n$ 中的每个无穷有界子集都有至少一个聚点（极限点）。
>
> **证明思路**：从无穷有界子集中取出各不相同的点构成序列，由序列版本取收敛子列，其极限是原集合的聚点。
