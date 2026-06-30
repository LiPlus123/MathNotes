# 局部紧致性

## 局部紧致性

<!-- locally_compact_definition -->
> [!Definition]
> **局部紧致性 Local Compactness**：拓扑空间 $(X, \mathcal{T})$ 称为**局部紧致的 Locally Compact**，若对每个 $x \in X$，存在 $x$ 的一个紧致邻域（即存在紧致集 $K$ 和开集 $U$ 使得 $x \in U \subseteq K$）。

> **注**：等价条件（在 Hausdorff 空间中）：每个点有一个邻域基由紧致集构成；即对每个 $x$ 和 $x$ 的每个开邻域 $V$，存在紧致集 $K$ 和开集 $U$ 使得 $x \in U \subseteq K \subseteq V$。

<!-- locally_compact_examples -->
> [!Example]+
> **局部紧致空间的例子 Examples of Locally Compact Spaces**：
> 1. 每个紧致空间是局部紧致的（取 $K = X$）；
> 2. $\mathbb{R}^n$ 是局部紧致的（$x$ 处取紧致邻域 $\bar{B}(x, 1)$）；
> 3. 任意离散拓扑空间是局部紧致的（单点集是紧致邻域）；
> 4. $\mathbb{Q}$（有理数集，配标准拓扑）不是局部紧致的（$\mathbb{Q}$ 的任何闭有界子集不是紧致的，因为不完备）。

## 局部紧致性是拓扑性质

<!-- locally_compact_topological_invariant -->
> [!Theorem]
> **局部紧致性是拓扑不变量 Local Compactness is a Topological Invariant**：同胚保持局部紧致性，故局部紧致性是拓扑性质。
>
> **证明思路**：若 $f: X \to Y$ 是同胚，$x \in X$ 有紧致邻域 $K$，则 $f(K)$ 是 $f(x)$ 的紧致邻域（$f$ 连续保持紧致性，$f^{-1}$ 连续保持开集）。

<!-- locally_compact_open_closed_subspace -->
> [!Theorem]
> **局部紧致 Hausdorff 空间的子空间 Subspaces of Locally Compact Hausdorff Spaces**：局部紧致 Hausdorff 空间的开子空间和闭子空间都是局部紧致的。
>
> **证明思路**：闭子空间：紧致集的闭子集是紧致的，从 $X$ 中的紧致邻域与闭子空间取交即得。开子空间：利用局部紧致 Hausdorff 空间中开集内可取"较小"的紧致邻域（Hausdorff 保证紧致集是闭集），故开子空间中的点仍有紧致邻域含于开子空间内。

<!-- one_point_compactification -->
> [!Definition]
> **单点紧化 One-Point Compactification**：设 $(X, \mathcal{T})$ 是局部紧致 Hausdorff 空间且非紧致。在 $X$ 外添加一点 $\infty$，令 $X^* = X \cup \{\infty\}$，在 $X^*$ 上定义拓扑 $\mathcal{T}^*$：$X$ 中的原开集仍是开集；形如 $\{\infty\} \cup (X \setminus K)$（$K$ 是 $X$ 的紧致子集）的集合也是开集。则 $(X^*, \mathcal{T}^*)$ 是紧致 Hausdorff 空间，称为 $X$ 的**单点紧化 One-Point Compactification**（或 **Alexandroff 紧化**）。
