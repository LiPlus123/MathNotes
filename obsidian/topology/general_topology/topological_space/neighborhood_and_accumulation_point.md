# 邻域与聚点

## 邻域

<!-- neighborhood_definition -->
> [!Definition]
> **邻域 Neighborhood**：设 $(X, \mathcal{T})$ 是拓扑空间，$x \in X$，$N \subseteq X$。若存在开集 $U \in \mathcal{T}$ 使得 $x \in U \subseteq N$，则称 $N$ 是 $x$ 的一个**邻域 Neighborhood**。若邻域本身是开集，则称其为 $x$ 的**开邻域 Open Neighborhood**。$x$ 的所有邻域构成的集族称为 $x$ 的**邻域系 Neighborhood System**，记为 $\mathcal{N}(x)$。

> **注**：点的开邻域即包含该点的开集。邻域不要求是开集（例如 $\mathbb{R}$ 中 $[0,1]$ 是 $\frac{1}{2}$ 的邻域）。

<!-- neighborhood_properties -->
> [!Theorem]
> **邻域系的性质 Properties of Neighborhood Systems**：设 $(X, \mathcal{T})$ 是拓扑空间，$x \in X$，则邻域系 $\mathcal{N}(x)$ 满足：
> 1. $x \in N$ 对所有 $N \in \mathcal{N}(x)$ 成立；
> 2. $X \in \mathcal{N}(x)$；
> 3. 若 $N \in \mathcal{N}(x)$ 且 $N \subseteq M$，则 $M \in \mathcal{N}(x)$（上向封闭）；
> 4. 若 $N_1, N_2 \in \mathcal{N}(x)$，则 $N_1 \cap N_2 \in \mathcal{N}(x)$（有限交封闭）；
> 5. 若 $N \in \mathcal{N}(x)$，则存在 $U \in \mathcal{N}(x)$，$U$ 是开集，且对所有 $y \in U$ 均有 $N \in \mathcal{N}(y)$。
>
> **证明思路**：(1)—(4) 由邻域定义直接验证。(5) 取 $N$ 中包含 $x$ 的开集 $U$，则 $U$ 是每个 $y \in U$ 的开邻域，故 $N \supseteq U \in \mathcal{N}(y)$。

<!-- open_set_neighborhood_characterization -->
> [!Proposition]
> **开集的邻域刻画 Neighborhood Characterization of Open Sets**：设 $(X, \mathcal{T})$ 是拓扑空间，$U \subseteq X$。则 $U$ 是开集当且仅当对每个 $x \in U$，$U$ 都是 $x$ 的邻域。
>
> **证明思路**：$(\Rightarrow)$ 若 $U$ 是开集，取 $U$ 本身作为包含 $x$ 的开集，故 $U \in \mathcal{N}(x)$。$(\Leftarrow)$ 对每个 $x \in U$，存在开集 $V_x$ 使 $x \in V_x \subseteq U$，则 $U = \bigcup_{x \in U} V_x$ 是开集族的并，为开集。

## 聚点

<!-- accumulation_point_topological -->
> [!Definition]
> **聚点（极限点）Accumulation Point (Limit Point)**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，$x \in X$。若 $x$ 的每个邻域 $N$ 均满足 $N \cap (A \setminus \{x\}) \neq \varnothing$，则称 $x$ 是 $A$ 的**聚点 Accumulation Point**（或**极限点 Limit Point**）。$A$ 的所有聚点的集合称为 $A$ 的**导集 Derived Set**，记为 $A'$。

> **注**：聚点 $x$ 可以属于 $A$，也可以不属于 $A$。等价条件：$x$ 的每个开邻域都与 $A \setminus \{x\}$ 相交。

<!-- accumulation_point_properties -->
> [!Proposition]
> **聚点的性质 Properties of Accumulation Points**：设 $(X, \mathcal{T})$ 是拓扑空间，$A, B \subseteq X$，则：
> 1. $\varnothing' = \varnothing$；
> 2. 若 $A \subseteq B$，则 $A' \subseteq B'$；
> 3. $(A \cup B)' = A' \cup B'$。
>
> **证明思路**：(1)(2) 由定义直接得到。(3) 两端分别包含对方：$(\supseteq)$ 由 (2) 显然；$(\subseteq)$ 若 $x \in (A \cup B)'$，反设 $x \notin A'$ 且 $x \notin B'$，则分别存在开邻域 $U_A, U_B$，其交是开邻域但与 $(A \cup B) \setminus \{x\}$ 不相交，矛盾。

## 孤立点

<!-- isolated_point_definition -->
> [!Definition]
> **孤立点 Isolated Point**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，$x \in A$。若存在 $x$ 的邻域 $N$ 使得 $N \cap A = \{x\}$（即 $N \cap (A \setminus \{x\}) = \varnothing$），则称 $x$ 是 $A$ 的**孤立点 Isolated Point**。

> **注**：$A$ 中的每个点要么是 $A$ 的聚点，要么是 $A$ 的孤立点，二者互斥。

## 通过聚点判定闭集

<!-- closed_accumulation_criterion -->
> [!Theorem]
> **闭集的聚点判定准则 Closed Set Criterion via Accumulation Points**：设 $(X, \mathcal{T})$ 是拓扑空间，$F \subseteq X$。则 $F$ 是闭集当且仅当 $F$ 包含它的所有聚点，即 $F' \subseteq F$。
>
> **证明思路**：$(\Rightarrow)$ 若 $F$ 是闭集，设 $x \notin F$，则 $x \in X \setminus F$（开集），$X \setminus F$ 是 $x$ 的开邻域且与 $F$ 不相交，故 $x \notin F'$，即 $F' \subseteq F$。$(\Leftarrow)$ 若 $F' \subseteq F$，对任意 $x \in X \setminus F$，$x$ 不是 $F$ 的聚点，故存在 $x$ 的开邻域 $U$ 使 $U \cap F = \varnothing$，即 $U \subseteq X \setminus F$；这说明 $X \setminus F$ 是开集，故 $F$ 是闭集。
