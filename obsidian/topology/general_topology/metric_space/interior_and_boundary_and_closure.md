# 内部、边界与闭包

## 内部

<!-- interior_point_definition -->
> [!Definition]
> **内点与内部 Interior Point and Interior**：设 $(X, d)$ 是度量空间，$A \subseteq X$，$x \in X$。若存在 $r > 0$ 使得 $B(x, r) \subseteq A$，则称 $x$ 是 $A$ 的**内点 Interior Point**。$A$ 的所有内点的集合称为 $A$ 的**内部 Interior**，记为 $\mathrm{int}(A)$（或 $A^\circ$）。

> **注**：内点必属于 $A$，即 $\mathrm{int}(A) \subseteq A$。

<!-- interior_is_open -->
> [!Proposition]
> **内部是最大开子集 Interior is the Largest Open Subset**：设 $(X, d)$ 是度量空间，$A \subseteq X$，则：
> 1. $\mathrm{int}(A)$ 是开集；
> 2. $A$ 是开集当且仅当 $A = \mathrm{int}(A)$；
> 3. $\mathrm{int}(A)$ 是 $A$ 中最大的开子集，即若 $U \subseteq A$ 是开集，则 $U \subseteq \mathrm{int}(A)$。
>
> **证明思路**：(1) 对 $\mathrm{int}(A)$ 中任意点 $x$，存在 $B(x, r) \subseteq A$；对 $B(x, r)$ 中任意点 $y$，令 $r' = r - d(x,y) > 0$，由三角不等式得 $B(y, r') \subseteq B(x,r) \subseteq A$，故 $y \in \mathrm{int}(A)$。(2)(3) 由定义直接得到。

## 外部

<!-- exterior_point_definition -->
> [!Definition]
> **外点与外部 Exterior Point and Exterior**：设 $(X, d)$ 是度量空间，$A \subseteq X$，$x \in X$。若存在 $r > 0$ 使得 $B(x, r) \subseteq X \setminus A$（即 $B(x, r) \cap A = \varnothing$），则称 $x$ 是 $A$ 的**外点 Exterior Point**。$A$ 的所有外点的集合称为 $A$ 的**外部 Exterior**，记为 $\mathrm{ext}(A)$。

> **注**：$\mathrm{ext}(A) = \mathrm{int}(X \setminus A)$，故外部也是开集。

## 边界

<!-- boundary_point_definition -->
> [!Definition]
> **边界点与边界 Boundary Point and Boundary**：设 $(X, d)$ 是度量空间，$A \subseteq X$，$x \in X$。若对任意 $r > 0$，$B(x, r)$ 既包含 $A$ 中的点，又包含 $X \setminus A$ 中的点，则称 $x$ 是 $A$ 的**边界点 Boundary Point**。$A$ 的所有边界点的集合称为 $A$ 的**边界 Boundary**，记为 $\partial A$。

> **注**：边界点可以属于 $A$，也可以不属于 $A$。$\partial A = \partial(X \setminus A)$。

## 闭包

<!-- closure_definition -->
> [!Definition]
> **闭包 Closure**：设 $(X, d)$ 是度量空间，$A \subseteq X$。$A$ 的**闭包 Closure** 定义为包含 $A$ 的所有闭集的交，记为 $\overline{A}$：
> $$\overline{A} = \bigcap \{F \subseteq X \mid F \text{ 是闭集},\ A \subseteq F\}$$

<!-- closure_properties -->
> [!Theorem]
> **闭包的性质 Properties of Closure**：设 $(X, d)$ 是度量空间，$A \subseteq X$，则：
> 1. $\overline{A}$ 是闭集，且 $A \subseteq \overline{A}$；
> 2. $A$ 是闭集当且仅当 $A = \overline{A}$；
> 3. $\overline{A}$ 是包含 $A$ 的最小闭集；
> 4. $\overline{A} = A \cup A'$，其中 $A'$ 是 $A$ 的导集；
> 5. $x \in \overline{A}$ 当且仅当对任意 $r > 0$ 有 $B(x, r) \cap A \neq \varnothing$。
>
> **证明思路**：(1)(2)(3) 由定义直接得到。(4) 若 $x \in A$ 或 $x$ 是 $A$ 的极限点，对任意包含 $A$ 的闭集 $F$，由"闭集包含其极限点"知 $x \in F$，故 $x \in \overline{A}$；反之若 $x \notin A$ 且 $x$ 不是 $A$ 的极限点，可构造不含 $x$ 的闭集包含 $A$。(5) 等价于 (4) 的重述。

## 内部、边界与闭包的关系

<!-- interior_boundary_closure_decomposition -->
> [!Proposition]
> **空间的分解 Decomposition of Space**：设 $(X, d)$ 是度量空间，$A \subseteq X$，则 $X$ 被分解为三个互不相交的部分：
> $$X = \mathrm{int}(A) \sqcup \partial A \sqcup \mathrm{ext}(A)$$
> 且有 $\overline{A} = \mathrm{int}(A) \cup \partial A$，$\mathrm{ext}(A) = \mathrm{int}(X \setminus A)$。
>
> **证明思路**：由内点、边界点、外点的定义，它们两两不相交且覆盖全空间。$\overline{A} = X \setminus \mathrm{ext}(A) = X \setminus \mathrm{int}(X \setminus A)$，由内部是最大开子集的性质即得。
