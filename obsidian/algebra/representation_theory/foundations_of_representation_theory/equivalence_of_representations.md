# 表示的等价 Equivalence of Representations

<!-- intertwining_operator -->
> [!Definition]
> **交结算子 Intertwining Operator**：设 $\rho: G \to GL(V)$ 与 $\sigma: G \to GL(W)$ 是群 $G$ 的两个表示。线性映射 $T: V \to W$ 称为从 $\rho$ 到 $\sigma$ 的**交结算子**（或 **$G$-线性映射**、**$G$-模同态**），若对所有 $g \in G$ 均有
> $$T \circ \rho(g) = \sigma(g) \circ T.$$
> 所有从 $\rho$ 到 $\sigma$ 的交结算子构成的 $F$-线性空间记为 $\mathrm{Hom}_G(V, W)$。

> **注**：交结条件等价地说，对所有 $g \in G$ 和 $v \in V$，有 $T(\rho(g) v) = \sigma(g)(T v)$。即 $T$ 与 $G$ 的作用相容。

<!-- equivalent_representations -->
> [!Definition]
> **等价表示 Equivalent Representations**：若存在可逆的交结算子 $T: V \xrightarrow{\sim} W$（即 $T$ 是 $G$-线性同构），则称表示 $\rho$ 与 $\sigma$ **等价**（或**同构**），记为 $\rho \cong \sigma$。

<!-- matrix_form_of_equivalence -->
> [!Proposition]
> **等价表示的矩阵刻画 Matrix Characterization of Equivalence**：分别选定 $V$ 和 $W$ 的基，表示 $\rho$ 和 $\sigma$ 由矩阵给出。则 $\rho \cong \sigma$ 当且仅当存在可逆矩阵 $P \in GL(n, F)$（$n = \dim V = \dim W$），使得对所有 $g \in G$ 有
> $$\sigma(g) = P \rho(g) P^{-1}.$$

> **证明思路**：可逆交结算子 $T$ 在选定基下即对应可逆矩阵 $P$，交结条件转化为上述矩阵共轭关系。

> **注**：等价表示本质上是"同一个"表示在不同基下的不同描述，其结构性质（如不可约性、特征标等）均相同。
