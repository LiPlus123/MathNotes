# 连通性

## 分割与连通

<!-- separation_definition -->
> [!Definition]
> **分割 Separation**：设 $(X, \mathcal{T})$ 是拓扑空间。若存在两个非空不相交的开集 $U, V \in \mathcal{T}$ 使得 $X = U \cup V$，则称 $\{U, V\}$ 是 $X$ 的一个**分割 Separation**。

<!-- connected_definition -->
> [!Definition]
> **连通空间 Connected Space**：若拓扑空间 $(X, \mathcal{T})$ 不存在分割（即不能表示为两个非空不相交开集之并），则称 $X$ 是**连通的 Connected**；否则称 $X$ 是**不连通的 Disconnected**。

> **注**：等价地，$X$ 连通当且仅当 $X$ 中唯一的既开又闭（clopen）的集合是 $\varnothing$ 和 $X$ 本身。

<!-- connected_subset_definition -->
> [!Definition]
> **连通子集 Connected Subset**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。若子空间 $(A, \mathcal{T}_A)$ 是连通的，则称 $A$ 是 $X$ 中的**连通子集 Connected Subset**。等价地，$A$ 连通当且仅当不存在 $X$ 中的开集 $U, V$ 使得 $A \subseteq U \cup V$，$A \cap U \neq \varnothing$，$A \cap V \neq \varnothing$，且 $A \cap U \cap V = \varnothing$。

## 连通性的等价条件

<!-- connected_equivalent_conditions -->
> [!Theorem]
> **连通性的等价条件 Equivalent Conditions for Connectedness**：拓扑空间 $(X, \mathcal{T})$ 连通，当且仅当以下任一条件成立：
> 1. $X$ 中唯一的 clopen 集是 $\varnothing$ 与 $X$；
> 2. 不存在连续满射 $f: X \to \{0, 1\}$（赋离散拓扑）；
> 3. 若 $X = A \cup B$ 且 $A \cap \overline{B} = \varnothing = \overline{A} \cap B$（$A, B$ 相互分离），则 $A = \varnothing$ 或 $B = \varnothing$。
>
> **证明思路**：(1) 与定义等价：clopen 集 $U$ 使得 $\{U, X \setminus U\}$ 是分割（当 $U \neq \varnothing, X$ 时）。(2) 与 (1) 等价：$f^{-1}(\{0\})$ 是 clopen 集。

<!-- real_line_connected -->
> [!Example]+
> **实数集的连通性 Connectedness of $\mathbb{R}$**：$(\mathbb{R}, \mathcal{T}_{\mathrm{std}})$ 是连通的，更一般地，$\mathbb{R}$ 中的区间（包括 $\mathbb{R}$ 本身）均是连通的。这等价于实数的完备性（介值定理的拓扑版本）。

## 连通分支

<!-- connected_component_definition -->
> [!Definition]
> **连通分支 Connected Component**：设 $(X, \mathcal{T})$ 是拓扑空间，$x \in X$。包含 $x$ 的所有连通子集的并称为 $x$ 的**连通分支 Connected Component**，记为 $C(x)$。

<!-- connected_component_properties -->
> [!Theorem]
> **连通分支的性质 Properties of Connected Components**：
> 1. 每个连通分支 $C(x)$ 是连通的（极大连通子集）；
> 2. 任意两个连通分支或相同或不相交；
> 3. 每个连通分支是闭集；
> 4. $X$ 是其连通分支的不相交并：$X = \bigsqcup_{[x]} C(x)$；
> 5. $X$ 连通当且仅当 $X$ 只有一个连通分支（即 $X$ 本身）。
>
> **证明思路**：(1) 若干连通集含有公共点时其并连通，故 $C(x)$ 是极大连通子集。(3) $\overline{C(x)}$ 也是连通子集（连通集的闭包连通），由极大性 $\overline{C(x)} = C(x)$。

## 连通性是拓扑性质

<!-- connectedness_topological_invariant -->
> [!Theorem]
> **连通性是拓扑不变量 Connectedness is a Topological Invariant**：设 $f: X \to Y$ 是连续满射，若 $X$ 连通，则 $Y$ 连通。特别地，同胚保持连通性。
>
> **证明思路**：若 $Y = U \cup V$（$U, V$ 非空不相交开集），则 $X = f^{-1}(U) \cup f^{-1}(V)$；由 $f$ 连续，两者均为开集，且非空（$f$ 满射）、不相交，矛盾。
