# 仿紧致性

## 开加细与局部有限

<!-- open_refinement_definition -->
> [!Definition]
> **开加细 Open Refinement**：设 $(X, \mathcal{T})$ 是拓扑空间，$\mathcal{U} = \{U_\alpha\}_{\alpha \in I}$ 是 $X$ 的一个开覆盖。开集族 $\mathcal{V} = \{V_\beta\}_{\beta \in J}$ 称为 $\mathcal{U}$ 的**开加细 Open Refinement**，若：
> 1. $\mathcal{V}$ 覆盖 $X$（$\bigcup_{\beta \in J} V_\beta = X$）；
> 2. $\mathcal{V}$ 中每个成员是 $\mathcal{U}$ 中某个成员的子集（$\forall V_\beta \in \mathcal{V},\ \exists U_\alpha \in \mathcal{U},\ V_\beta \subseteq U_\alpha$）。

<!-- locally_finite_definition -->
> [!Definition]
> **局部有限族 Locally Finite Family**：拓扑空间 $(X, \mathcal{T})$ 中，集族 $\mathcal{V} = \{V_\beta\}_{\beta \in J}$ 称为**局部有限的 Locally Finite**，若对每个 $x \in X$，存在 $x$ 的开邻域 $U$ 使得 $U$ 只与 $\mathcal{V}$ 中有限个成员相交（即 $\{\beta \in J \mid U \cap V_\beta \neq \varnothing\}$ 是有限集）。

## 仿紧致性

<!-- paracompact_definition -->
> [!Definition]
> **仿紧致性 Paracompactness**：拓扑空间 $(X, \mathcal{T})$ 称为**仿紧致的 Paracompact**，若 $X$ 是 Hausdorff 空间，且 $X$ 的每个开覆盖都有**局部有限的开加细**。

> **注**：紧致空间（Hausdorff）是仿紧致的（有限子覆盖本身是局部有限的开加细）。

<!-- paracompactness_topological_invariant -->
> [!Theorem]
> **仿紧致性是拓扑不变量 Paracompactness is a Topological Invariant**：同胚保持仿紧致性。
>
> **证明思路**：若 $f: X \to Y$ 是同胚，$\{V_\alpha\}$ 是 $Y$ 的开覆盖，则 $\{f^{-1}(V_\alpha)\}$ 是 $X$ 的开覆盖，取其局部有限开加细 $\{U_\beta\}$，则 $\{f(U_\beta)\}$ 是 $\{V_\alpha\}$ 的局部有限开加细（$f^{-1}$ 连续保持开集，$f$ 连续保持局部有限性）。

<!-- metric_space_paracompact -->
> [!Theorem]
> **度量空间是仿紧致的 Metric Spaces are Paracompact (Stone's Theorem)**：每个度量空间都是仿紧致的（Stone 定理，1948）。
>
> **证明思路（思路）**：给定度量空间 $X$ 的开覆盖 $\{U_\alpha\}$，利用度量的全序性构造"星形精化"：选取局部有限的开加细方法通常涉及良序化开覆盖后取适当尺寸的球，逐层构造局部有限加细，证明依赖于度量结构保证每个点的邻域只与有限个加细元素相交。

<!-- locally_finite_closure -->
> [!Proposition]
> **局部有限族的闭包性质 Closure Property of Locally Finite Families**：若 $\{F_\beta\}_{\beta \in J}$ 是拓扑空间中的局部有限闭集族，则 $\bigcup_{\beta \in J} F_\beta$ 是闭集。
>
> **证明思路**：设 $x \notin \bigcup_\beta F_\beta$，取 $x$ 的开邻域 $U$ 只与有限个 $F_{\beta_1}, \ldots, F_{\beta_n}$ 相交；由 $x \notin F_{\beta_i}$ 取开集 $V_i$ 含 $x$ 不含 $F_{\beta_i}$ 中的点；令 $W = U \cap V_1 \cap \cdots \cap V_n$，则 $W$ 是 $x$ 的开邻域且 $W \cap \bigcup_\beta F_\beta = \varnothing$，故补集是开集。
