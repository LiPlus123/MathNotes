# 分离性

## 分离公理

<!-- T0_axiom -->
> [!Definition]
> **$T_0$ 公理（Kolmogorov 公理）$T_0$ Axiom (Kolmogorov)**：拓扑空间 $(X, \mathcal{T})$ 满足 **$T_0$ 公理**，若对 $X$ 中任意两个不同的点 $x \neq y$，存在开集 $U$ 使得 $x \in U,\ y \notin U$，或 $y \in U,\ x \notin U$（即存在一个开集区分二者中的至少一个）。满足 $T_0$ 的空间称为 **$T_0$ 空间 $T_0$ Space**。

<!-- T1_axiom -->
> [!Definition]
> **$T_1$ 公理（Fréchet 公理）$T_1$ Axiom (Fréchet)**：拓扑空间 $(X, \mathcal{T})$ 满足 **$T_1$ 公理**，若对任意 $x \neq y$，存在开集 $U$ 使得 $x \in U,\ y \notin U$（且对称地，存在开集 $V$ 使得 $y \in V,\ x \notin V$）。等价地，$X$ 满足 $T_1$ 当且仅当每个单点集 $\{x\}$ 是闭集。满足 $T_1$ 的空间称为 **$T_1$ 空间**。

<!-- T2_axiom -->
> [!Definition]
> **$T_2$ 公理（Hausdorff 公理）$T_2$ Axiom (Hausdorff)**：拓扑空间 $(X, \mathcal{T})$ 满足 **$T_2$ 公理**，若对任意 $x \neq y$，存在不相交的开集 $U, V$ 使得 $x \in U$ 且 $y \in V$（即任意两点可以用不相交开集分离）。满足 $T_2$ 的空间称为 **Hausdorff 空间 Hausdorff Space**（或 **$T_2$ 空间**）。

<!-- T3_axiom -->
> [!Definition]
> **$T_3$ 公理（正则公理）$T_3$ Axiom (Regular)**：拓扑空间 $(X, \mathcal{T})$ 称为**正则的 Regular**（满足 $T_3$ 公理），若它是 $T_1$ 的，且对每个点 $x$ 和不含 $x$ 的闭集 $F$，存在不相交的开集 $U, V$ 使得 $x \in U$ 且 $F \subseteq V$（即点与不含它的闭集可以用不相交开集分离）。满足 $T_3$ 的空间称为 **$T_3$ 空间**（或**正则 Hausdorff 空间**）。

<!-- T4_axiom -->
> [!Definition]
> **$T_4$ 公理（正规公理）$T_4$ Axiom (Normal)**：拓扑空间 $(X, \mathcal{T})$ 称为**正规的 Normal**（满足 $T_4$ 公理），若它是 $T_1$ 的，且对任意两个不相交的闭集 $F_1, F_2$，存在不相交的开集 $U_1, U_2$ 使得 $F_1 \subseteq U_1$ 且 $F_2 \subseteq U_2$（即两个不相交闭集可以用不相交开集分离）。满足 $T_4$ 的空间称为 **$T_4$ 空间**（或**正规 Hausdorff 空间**）。

## 分离公理的蕴含关系

<!-- separation_axioms_implications -->
> [!Theorem]
> **分离公理的蕴含链 Implications of Separation Axioms**：
> $$T_4 \Rightarrow T_3 \Rightarrow T_2 \Rightarrow T_1 \Rightarrow T_0$$
> 各蕴含关系均不可逆。
>
> **证明思路**：$T_4 \Rightarrow T_3$：取 $F_2 = \{y\}$（单点集，$T_1$ 保证为闭集）；$T_3 \Rightarrow T_2$：取 $F = \{y\}$；$T_2 \Rightarrow T_1$：由 $x$ 与 $y$ 的分离邻域中，$X \setminus U$（含 $y$ 不含 $x$）的闭集覆盖可知单点集是闭集（$T_2 \Rightarrow T_1$）；$T_1 \Rightarrow T_0$：由定义直接得到。

<!-- hausdorff_limit_unique -->
> [!Proposition]
> **Hausdorff 空间中序列极限唯一 Uniqueness of Limits in Hausdorff Spaces**：在 Hausdorff（$T_2$）空间中，收敛序列（网）的极限是唯一的。
>
> **证明思路**：若 $x_n \to x$ 且 $x_n \to y$（$x \neq y$），由 $T_2$ 取不相交开集 $U \ni x$，$V \ni y$；存在 $N$ 使 $n \geq N$ 时 $x_n \in U$ 且 $x_n \in V$，与 $U \cap V = \varnothing$ 矛盾。

<!-- metric_space_hausdorff -->
> [!Proposition]
> **度量空间是正规的 Metric Spaces are Normal ($T_4$)**：每个度量空间都是正规的（$T_4$），从而满足所有分离公理。
>
> **证明思路**：首先度量空间是 $T_1$ 的（单点集是闭集）。对不相交闭集 $F_1, F_2$，令 $U_i = \{x \mid d(x, F_i) < d(x, F_{3-i})\}$（$i = 1, 2$），则 $U_1, U_2$ 是不相交的开集且 $F_i \subseteq U_i$。

## 分离性是拓扑性质与遗传性

<!-- separation_topological_invariant -->
> [!Theorem]
> **分离性是拓扑不变量 Separation Axioms are Topological Invariants**：$T_0, T_1, T_2, T_3, T_4$ 均在同胚下保持，故是拓扑性质。

<!-- separation_subspace -->
> [!Proposition]
> **子空间的分离性 Separation Axioms in Subspaces**：$T_0, T_1, T_2, T_3$ 均遗传到子空间（即若 $X$ 满足 $T_i$（$i = 0,1,2,3$），则其任意子空间也满足 $T_i$）。$T_4$（正规性）一般不遗传到子空间，但遗传到闭子空间。
>
> **证明思路**：$T_0, T_1, T_2, T_3$：子空间中的开集由 $X$ 中开集与子空间的交得到，对子空间中的点取 $X$ 中分离邻域再与子空间取交即得。

<!-- separation_product -->
> [!Proposition]
> **积空间的分离性 Separation Axioms in Product Spaces**：$T_0, T_1, T_2, T_3$ 对任意（积拓扑）积保持（即各因子满足 $T_i$ 则积空间满足 $T_i$，$i = 0,1,2,3$）。$T_4$（正规性）一般不对无限积保持。
>
> **证明思路**：对 $T_2$：若积空间中两点 $(x_\alpha), (y_\alpha)$ 不同，则某坐标 $x_\beta \neq y_\beta$；由 $X_\beta$ 的 $T_2$ 性取 $U_\beta, V_\beta$ 分离 $x_\beta$ 与 $y_\beta$，则 $\pi_\beta^{-1}(U_\beta)$ 与 $\pi_\beta^{-1}(V_\beta)$ 分离积空间中的两点。
