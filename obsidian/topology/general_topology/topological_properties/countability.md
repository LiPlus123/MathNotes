# 可数性

## 邻域基

<!-- neighborhood_base_definition -->
> [!Definition]
> **邻域基（局部基）Neighborhood Base (Local Base)**：设 $(X, \mathcal{T})$ 是拓扑空间，$x \in X$，$\mathcal{B}(x) \subseteq \mathcal{N}(x)$ 是 $x$ 的某些邻域构成的集族。若对 $x$ 的每个邻域 $N$，存在 $B \in \mathcal{B}(x)$ 使得 $B \subseteq N$，则称 $\mathcal{B}(x)$ 是 $x$ 的一个**邻域基 Neighborhood Base**（或**局部基 Local Base**）。

## 第一可数性

<!-- first_countable_definition -->
> [!Definition]
> **第一可数空间 First-Countable Space**：拓扑空间 $(X, \mathcal{T})$ 称为**第一可数的 First-Countable**（满足**第一可数公理 First Axiom of Countability**），若 $X$ 中每个点都有可数的邻域基。

<!-- first_countable_sequence -->
> [!Proposition]
> **第一可数空间中序列的作用 Sequences in First-Countable Spaces**：在第一可数空间 $(X, \mathcal{T})$ 中：
> 1. $x \in \overline{A}$ 当且仅当存在 $A$ 中的序列 $(x_n)$ 使得 $x_n \to x$；
> 2. $f: X \to Y$ 在 $x_0$ 处连续当且仅当对每个 $x_n \to x_0$ 的序列，$f(x_n) \to f(x_0)$。
>
> **证明思路**：取 $x$ 处的可数邻域基 $\{B_n\}_{n \geq 1}$，可不妨令 $B_1 \supseteq B_2 \supseteq \cdots$（取前 $n$ 个的交）；对每个 $n$ 在 $B_n \cap A$ 中取 $x_n$（若 $x \in \overline{A}$），则 $x_n \to x$。

<!-- metric_space_first_countable -->
> [!Proposition]
> **度量空间是第一可数的 Metric Spaces are First-Countable**：每个度量空间 $(X, d)$ 是第一可数的：$x$ 处的可数邻域基为 $\{B(x, \frac{1}{n})\}_{n \geq 1}$。

## 第二可数性

<!-- second_countable_definition -->
> [!Definition]
> **第二可数空间 Second-Countable Space**：拓扑空间 $(X, \mathcal{T})$ 称为**第二可数的 Second-Countable**（满足**第二可数公理 Second Axiom of Countability**），若 $\mathcal{T}$ 有一个可数的基（即存在可数集族 $\mathcal{B}$ 使 $\mathcal{T} = \mathcal{T}_\mathcal{B}$）。

<!-- second_implies_first -->
> [!Theorem]
> **第二可数蕴含第一可数 Second-Countable implies First-Countable**：每个第二可数空间都是第一可数的。逆命题不成立（例如不可数集上的离散拓扑是第一可数但非第二可数的）。
>
> **证明思路**：设 $\mathcal{B} = \{B_n\}_{n \geq 1}$ 是可数基，对每个 $x$，$\mathcal{B}(x) = \{B_n \in \mathcal{B} \mid x \in B_n\}$ 是可数邻域基。

<!-- real_line_second_countable -->
> [!Example]+
> **$\mathbb{R}$ 是第二可数的 $\mathbb{R}$ is Second-Countable**：$\{(a, b) \mid a, b \in \mathbb{Q},\ a < b\}$ 是 $(\mathbb{R}, \mathcal{T}_{\mathrm{std}})$ 的可数基，故 $\mathbb{R}$ 是第二可数的。更一般地，$\mathbb{R}^n$ 是第二可数的。

## 可数性是拓扑性质

<!-- countability_topological_invariant -->
> [!Proposition]
> **可数性是拓扑不变量 Countability Axioms are Topological Invariants**：第一可数性与第二可数性均在同胚下保持，从而是拓扑性质。

## 子空间与积空间的可数性

<!-- countability_subspace -->
> [!Proposition]
> **子空间的可数性 Countability in Subspaces**：
> 1. 第一（或第二）可数空间的子空间仍是第一（或第二）可数的；
> 2. 特别地，$\mathbb{R}^n$ 的子空间均是第二可数的。
>
> **证明思路**：若 $\mathcal{B}$ 是 $X$ 的可数基，则 $\{B \cap A \mid B \in \mathcal{B}\}$ 是子空间 $A$ 的可数基。

<!-- countability_product -->
> [!Theorem]
> **积空间的可数性 Countability in Product Spaces**：可数个第二可数空间的（积拓扑）积是第二可数的。
>
> **证明思路**：设 $X_n$ 各有可数基 $\mathcal{B}_n$，积空间 $\prod_{n \geq 1} X_n$ 的积拓扑有可数基：$\left\{ \prod_{n \geq 1} U_n \;\middle|\; U_n \in \mathcal{B}_n \text{ 对有限个 } n,\ \text{其余 } U_n = X_n \right\}$，这是可数集族的有限积，仍可数。
