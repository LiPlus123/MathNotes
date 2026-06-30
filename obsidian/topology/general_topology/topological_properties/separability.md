# 可分性

## 稠密子集与可分空间

<!-- dense_subset_definition -->
> [!Definition]
> **稠密子集 Dense Subset**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。若 $\overline{A} = X$（即 $A$ 的闭包是全空间），则称 $A$ 是 $X$ 的**稠密子集 Dense Subset**。等价地，$A$ 稠密当且仅当 $X$ 中每个非空开集都与 $A$ 相交。

<!-- separable_definition -->
> [!Definition]
> **可分空间 Separable Space**：拓扑空间 $(X, \mathcal{T})$ 称为**可分的 Separable**，若 $X$ 有一个可数的稠密子集（即存在可数集 $D \subseteq X$ 使得 $\overline{D} = X$）。

<!-- real_line_separable -->
> [!Example]+
> **$\mathbb{R}$ 是可分的 $\mathbb{R}$ is Separable**：$\mathbb{Q}$ 是 $(\mathbb{R}, \mathcal{T}_{\mathrm{std}})$ 的可数稠密子集（每个非空开区间包含有理数），故 $\mathbb{R}$ 是可分的。更一般地，$\mathbb{R}^n$ 中 $\mathbb{Q}^n$ 是可数稠密子集。

## 可分性与可数性的关系

<!-- second_countable_implies_separable -->
> [!Theorem]
> **第二可数蕴含可分 Second-Countable implies Separable**：每个第二可数空间都是可分的。
>
> **证明思路**：设 $\mathcal{B} = \{B_n\}_{n \geq 1}$ 是可数基，从每个非空 $B_n$ 中各取一点 $x_n$，则 $D = \{x_n \mid n \geq 1\}$ 是可数稠密子集（每个非空开集包含某 $B_n$，从而含 $x_n \in D$）。

<!-- separable_metric_second_countable -->
> [!Theorem]
> **可分度量空间是第二可数的 Separable Metric Spaces are Second-Countable**：可分度量空间 $(X, d)$ 是第二可数的。
>
> **证明思路**：设 $D = \{d_n\}_{n \geq 1}$ 是可数稠密子集，则 $\mathcal{B} = \{B(d_n, \frac{1}{k}) \mid n, k \in \mathbb{Z}^+\}$ 是可数基：对任意开集 $U$ 中的点 $x$，取 $r > 0$ 使 $B(x, r) \subseteq U$，再取 $d_n \in B(x, \frac{r}{2})$ 和 $k > \frac{2}{r}$，则 $x \in B(d_n, \frac{1}{k}) \subseteq B(x, r) \subseteq U$。

> **注**：在一般拓扑空间中，可分与第二可数互不蕴含（下限拓扑 $(\mathbb{R}, \mathcal{T}_\ell)$ 是可分的但非第二可数的）。对度量空间，二者等价。

## 可分性是拓扑性质

<!-- separability_topological_invariant -->
> [!Proposition]
> **可分性是拓扑不变量 Separability is a Topological Invariant**：若 $f: X \to Y$ 是连续满射且 $X$ 可分，则 $Y$ 可分。特别地，同胚保持可分性。
>
> **证明思路**：设 $D \subseteq X$ 是可数稠密子集，则 $f(D)$ 是 $Y$ 的可数子集。对 $Y$ 的任意非空开集 $V$，$f^{-1}(V)$ 非空开集与 $D$ 相交，故 $V$ 与 $f(D)$ 相交，即 $f(D)$ 稠密。

## 积空间的可分性

<!-- product_separable -->
> [!Theorem]
> **可数积的可分性 Separability of Countable Products**：可数个可分空间的积（配积拓扑）是可分的。
>
> **证明思路**：设 $X_n$ 各有可数稠密子集 $D_n$，则 $\prod_{n \geq 1} D_n$ 是 $\prod_{n \geq 1} X_n$ 的可数稠密子集（积拓扑的基元素仅有限个坐标受限，在各 $D_n$ 中取点可以稠密覆盖）。

## 子空间的可分性

<!-- subspace_separable -->
> [!Proposition]
> **子空间的可分性 Separability in Subspaces**：可分度量空间的每个子空间是可分的。
>
> **证明思路**：可分度量空间是第二可数的（上述定理），第二可数空间的子空间仍是第二可数的（用子空间基），从而可分。

> **注**：一般拓扑空间中可分空间的子空间未必可分（下限拓扑的不可数子空间可能不可分）。
