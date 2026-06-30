# 子空间拓扑

## 子空间拓扑

<!-- subspace_topology_definition -->
> [!Definition]
> **子空间拓扑 Subspace Topology**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$ 是非空子集。令
> $$\mathcal{T}_A = \{U \cap A \mid U \in \mathcal{T}\}$$
> 则 $\mathcal{T}_A$ 是 $A$ 上的一个拓扑，称为 $A$ 从 $(X, \mathcal{T})$ 继承的**子空间拓扑 Subspace Topology**（或**相对拓扑 Relative Topology**、**诱导拓扑 Induced Topology**）。$(A, \mathcal{T}_A)$ 称为 $(X, \mathcal{T})$ 的**拓扑子空间 Topological Subspace**（简称**子空间 Subspace**）。
>
> **证明思路**：验证三条拓扑公理：$\varnothing = \varnothing \cap A \in \mathcal{T}_A$，$A = X \cap A \in \mathcal{T}_A$；$\bigcup_\alpha (U_\alpha \cap A) = (\bigcup_\alpha U_\alpha) \cap A \in \mathcal{T}_A$；$(U_1 \cap A) \cap (U_2 \cap A) = (U_1 \cap U_2) \cap A \in \mathcal{T}_A$。

> **注**：$\mathcal{T}_A$ 中的"开集"（即 $A$ 中的开集）是 $X$ 中开集与 $A$ 的交，未必是 $X$ 中的开集。若 $A$ 本身是 $X$ 的开集，则 $A$ 中每个开集也是 $X$ 中的开集。

<!-- subspace_closed_set -->
> [!Proposition]
> **子空间的闭集 Closed Sets in Subspace**：设 $(A, \mathcal{T}_A)$ 是 $(X, \mathcal{T})$ 的子空间，则 $A$ 中的闭集恰为 $X$ 中闭集与 $A$ 的交：
> $$\{F \cap A \mid F \subseteq X \text{ 是 } \mathcal{T}\text{-闭集}\}$$
>
> **证明思路**：$C \subseteq A$ 是 $\mathcal{T}_A$-闭集 $\iff$ $A \setminus C \in \mathcal{T}_A$ $\iff$ 存在 $U \in \mathcal{T}$ 使 $A \setminus C = U \cap A$ $\iff$ $C = A \setminus (U \cap A) = A \cap (X \setminus U)$，令 $F = X \setminus U$ 即为 $\mathcal{T}$-闭集。

<!-- inclusion_map_continuous -->
> [!Proposition]
> **包含映射连续 Inclusion Map is Continuous**：设 $(A, \mathcal{T}_A)$ 是 $(X, \mathcal{T})$ 的子空间，包含映射（嵌入映射）$\iota: A \hookrightarrow X$，$\iota(x) = x$ 是连续的。且子空间拓扑是使 $\iota$ 连续的最粗糙的拓扑。
>
> **证明思路**：对 $U \in \mathcal{T}$，$\iota^{-1}(U) = U \cap A \in \mathcal{T}_A$，故 $\iota$ 连续。若 $\mathcal{T}'$ 使 $\iota: (A, \mathcal{T}') \to (X, \mathcal{T})$ 连续，则 $\forall U \in \mathcal{T},\ U \cap A = \iota^{-1}(U) \in \mathcal{T}'$，即 $\mathcal{T}_A \subseteq \mathcal{T}'$。

## 子空间拓扑基

<!-- subspace_topology_basis -->
> [!Theorem]
> **子空间拓扑基 Basis for Subspace Topology**：设 $(X, \mathcal{T})$ 是拓扑空间，$\mathcal{B}$ 是 $\mathcal{T}$ 的基，$A \subseteq X$。则
> $$\mathcal{B}_A = \{B \cap A \mid B \in \mathcal{B}\}$$
> 是子空间拓扑 $\mathcal{T}_A$ 的一个基。
>
> **证明思路**：对 $\mathcal{T}_A$ 中的开集 $U \cap A$（$U \in \mathcal{T}$）和点 $x \in U \cap A$，由 $\mathcal{B}$ 是 $\mathcal{T}$ 的基，存在 $B \in \mathcal{B}$ 使 $x \in B \subseteq U$，故 $x \in B \cap A \subseteq U \cap A$，即 $\mathcal{B}_A$ 满足基的判别准则。

<!-- subspace_topology_example -->
> [!Example]+
> **子空间拓扑的例子 Examples of Subspace Topology**：
> 1. $[0, 1]$ 作为 $(\mathbb{R}, \mathcal{T}_{\mathrm{std}})$ 的子空间：$[0, \frac{1}{2})$ 和 $(\frac{1}{2}, 1]$ 都是子空间中的开集（分别为 $(-1, \frac{1}{2}) \cap [0,1]$ 和 $(\frac{1}{2}, 2) \cap [0,1]$），但都不是 $\mathbb{R}$ 的开集；
> 2. $\mathbb{Z}$ 作为 $\mathbb{R}$ 的子空间：每个单点集 $\{n\}$（$n \in \mathbb{Z}$）是开集（$= (n-\frac{1}{2}, n+\frac{1}{2}) \cap \mathbb{Z}$），故子空间拓扑是离散拓扑。
