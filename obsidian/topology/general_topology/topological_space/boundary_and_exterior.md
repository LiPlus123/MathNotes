# 边界与外部

## 边界

<!-- boundary_topological_definition -->
> [!Definition]
> **边界 Boundary**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。$A$ 的**边界 Boundary** 定义为：
> $$\partial A = \overline{A} \cap \overline{X \setminus A}$$
> $\partial A$ 中的点称为 $A$ 的**边界点 Boundary Point**。

> **注**：等价地，$x \in \partial A$ 当且仅当 $x$ 的每个开邻域既与 $A$ 相交又与 $X \setminus A$ 相交。

<!-- boundary_properties -->
> [!Theorem]
> **边界的性质 Properties of Boundary**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则：
> 1. $\partial A$ 是闭集；
> 2. **对称性**：$\partial A = \partial(X \setminus A)$；
> 3. $\partial A = \overline{A} \setminus \mathrm{int}(A)$；
> 4. $\partial A \cap \mathrm{int}(A) = \varnothing$，$\partial A \cap \mathrm{ext}(A) = \varnothing$（其中 $\mathrm{ext}(A) = \mathrm{int}(X \setminus A)$）；
> 5. $A$ 是开集当且仅当 $A \cap \partial A = \varnothing$（即 $A$ 不含自身边界点）；
> 6. $A$ 是闭集当且仅当 $\partial A \subseteq A$（即 $A$ 包含自身所有边界点）；
> 7. $A$ 既是开集又是闭集当且仅当 $\partial A = \varnothing$。
>
> **证明思路**：(1) $\partial A$ 是两个闭集的交，故为闭集。(2) 交换定义中 $A$ 与 $X \setminus A$ 的角色即得。(3) 由 $\overline{X \setminus A} = X \setminus \mathrm{int}(A)$（内部与闭包的对偶关系）得 $\partial A = \overline{A} \cap (X \setminus \mathrm{int}(A)) = \overline{A} \setminus \mathrm{int}(A)$。(5)(6)(7) 由 (3) 及开集、闭集的内部/闭包刻画得到。

## 闭包分解

<!-- closure_decomposition -->
> [!Proposition]
> **闭包分解 Closure Decomposition**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则：
> $$\overline{A} = \mathrm{int}(A) \sqcup \partial A$$
> 即闭包是内部与边界的不相交并。
>
> **证明思路**：由 $\partial A = \overline{A} \setminus \mathrm{int}(A)$ 及 $\mathrm{int}(A) \subseteq \overline{A}$，将 $\overline{A}$ 分拆为 $\mathrm{int}(A)$ 与 $\overline{A} \setminus \mathrm{int}(A) = \partial A$ 两个不相交部分即得。

## 外部

<!-- exterior_topological_definition -->
> [!Definition]
> **外部 Exterior**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。$A$ 的**外部 Exterior** 定义为：
> $$\mathrm{ext}(A) = \mathrm{int}(X \setminus A) = X \setminus \overline{A}$$
> $\mathrm{ext}(A)$ 中的点称为 $A$ 的**外点 Exterior Point**。

<!-- exterior_properties -->
> [!Proposition]
> **外部的性质 Properties of Exterior**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则：
> 1. $\mathrm{ext}(A)$ 是开集；
> 2. $\mathrm{ext}(A) = \mathrm{ext}(X \setminus \mathrm{ext}(A))$ 不一定成立，但 $\mathrm{ext}(A) \cap A = \varnothing$；
> 3. $\mathrm{ext}(A) \cap \partial A = \varnothing$，$\mathrm{ext}(A) \cap \mathrm{int}(A) = \varnothing$。
>
> **证明思路**：(1) 由外部是内部（开集）直接得到。(2)(3) 由定义验证。

## 内部、闭包、边界与外部的关系

<!-- four_parts_decomposition -->
> [!Theorem]
> **空间的四部分分解 Decomposition of Space**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则 $X$ 被如下三个互不相交的部分覆盖：
> $$X = \mathrm{int}(A) \sqcup \partial A \sqcup \mathrm{ext}(A)$$
> 且有以下关系：
> - $\overline{A} = \mathrm{int}(A) \cup \partial A = X \setminus \mathrm{ext}(A)$；
> - $\mathrm{ext}(A) = X \setminus \overline{A} = \mathrm{int}(X \setminus A)$；
> - $\partial A = \overline{A} \cap \overline{X \setminus A} = X \setminus (\mathrm{int}(A) \cup \mathrm{ext}(A))$；
> - $\mathrm{int}(A) = X \setminus (\partial A \cup \mathrm{ext}(A)) = A \setminus \partial A$（当 $A$ 是闭集时，$\mathrm{int}(A) = A \setminus \partial A$）。
>
> **证明思路**：由内部、闭包、边界、外部的定义及对偶关系逐一验证，三部分互不相交由定义直接得到，其并为 $X$ 由 $X = \overline{A} \cup \mathrm{ext}(A)$ 及闭包分解得到。
