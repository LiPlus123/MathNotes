# 局部连通性

## 局部连通性

<!-- locally_connected_definition -->
> [!Definition]
> **局部连通 Locally Connected**：拓扑空间 $(X, \mathcal{T})$ 称为**局部连通的 Locally Connected**，若对每个 $x \in X$ 和 $x$ 的每个开邻域 $U$，存在一个连通的开集 $V$ 使得 $x \in V \subseteq U$（即每个点有连通开邻域构成的邻域基）。

> **注**：连通不蕴含局部连通，局部连通也不蕴含连通。例如，两个不相交开区间的并 $(0,1) \cup (2,3)$ 是局部连通但不连通的；拓扑学家正弦曲线是连通但不局部连通的。

<!-- locally_connected_component_open -->
> [!Theorem]
> **局部连通空间的连通分支是开集 Connected Components are Open in Locally Connected Spaces**：若拓扑空间 $(X, \mathcal{T})$ 是局部连通的，则 $X$ 的每个连通分支是开集（从而也是闭集）。
>
> **证明思路**：设 $C$ 是连通分支，对每个 $x \in C$，由局部连通性取连通开集 $V_x$ 使 $x \in V_x$；由连通分支的极大性 $V_x \subseteq C$；故 $C = \bigcup_{x \in C} V_x$ 是开集。

<!-- locally_connected_open_subspace -->
> [!Proposition]
> **开子空间保持局部连通性 Open Subspace Inherits Local Connectedness**：局部连通空间的开子空间是局部连通的。
>
> **证明思路**：设 $U$ 是 $X$ 的开子空间，$x \in U$，$V$ 是 $x$ 在 $U$ 中的开邻域（即 $V$ 是 $X$ 中的开集，$V \subseteq U$）；由 $X$ 局部连通，存在连通开集 $W$ 使 $x \in W \subseteq V \subseteq U$，$W$ 也是 $U$ 的连通开子集。

## 局部道路连通性

<!-- locally_path_connected_definition -->
> [!Definition]
> **局部道路连通 Locally Path-Connected**：拓扑空间 $(X, \mathcal{T})$ 称为**局部道路连通的 Locally Path-Connected**，若对每个 $x \in X$ 和 $x$ 的每个开邻域 $U$，存在一个道路连通的开集 $V$ 使得 $x \in V \subseteq U$。

<!-- locally_path_connected_properties -->
> [!Theorem]
> **局部道路连通性的性质 Properties of Local Path-Connectedness**：
> 1. 局部道路连通蕴含局部连通；
> 2. 若 $X$ 是局部道路连通的，则 $X$ 的每个道路连通分支是开集（且也是闭集）；
> 3. 若 $X$ 同时是连通的和局部道路连通的，则 $X$ 是道路连通的。
>
> **证明思路**：(1) 道路连通的开集也是连通的（道路连通 $\Rightarrow$ 连通），故满足局部连通的定义。(2) 与连通分支的证明类似，用道路连通开集覆盖每个道路连通分支。(3) 任取 $x \in X$，道路连通分支 $P(x)$ 是开集（由 (2)）且是闭集（其补是其他道路连通分支之并，也是开集），由 $X$ 连通知 $P(x) = X$。

<!-- locally_path_connected_examples -->
> [!Example]+
> **局部道路连通的例子 Examples**：$\mathbb{R}^n$ 是局部道路连通的（开球是道路连通的）；有限图（赋以商拓扑）是局部道路连通的；拓扑学家正弦曲线既不局部连通也不局部道路连通（$\{0\} \times [-1,1]$ 部分的每个邻域都不连通）。
