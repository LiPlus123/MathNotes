# 内部与闭包

## 内部

<!-- interior_topological_definition -->
> [!Definition]
> **内部 Interior**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。$A$ 的**内部 Interior** 定义为包含在 $A$ 中的所有开集的并：
> $$\mathrm{int}(A) = \bigcup \{U \in \mathcal{T} \mid U \subseteq A\}$$
> $\mathrm{int}(A)$ 中的点称为 $A$ 的**内点 Interior Point**。

<!-- interior_topological_properties -->
> [!Theorem]
> **内部的性质 Properties of Interior**：设 $(X, \mathcal{T})$ 是拓扑空间，$A, B \subseteq X$，则：
> 1. $\mathrm{int}(A)$ 是开集，且 $\mathrm{int}(A) \subseteq A$；
> 2. $\mathrm{int}(A)$ 是包含在 $A$ 中的最大开集；
> 3. $A$ 是开集当且仅当 $A = \mathrm{int}(A)$；
> 4. **幂等性**：$\mathrm{int}(\mathrm{int}(A)) = \mathrm{int}(A)$；
> 5. $\mathrm{int}(X) = X$，$\mathrm{int}(\varnothing) = \varnothing$；
> 6. $\mathrm{int}(A \cap B) = \mathrm{int}(A) \cap \mathrm{int}(B)$；
> 7. $\mathrm{int}(A) \cup \mathrm{int}(B) \subseteq \mathrm{int}(A \cup B)$（一般不等）。
>
> **证明思路**：(1)(2)(3)(4) 由定义及开集任意并封闭直接得到。(6) 由 $\mathrm{int}(A \cap B) \subseteq A$ 且 $\subseteq B$，故 $\subseteq \mathrm{int}(A) \cap \mathrm{int}(B)$；反之 $\mathrm{int}(A) \cap \mathrm{int}(B)$ 是 $A \cap B$ 内的开集。

## 闭包

<!-- closure_topological_definition -->
> [!Definition]
> **闭包 Closure**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。$A$ 的**闭包 Closure** 定义为包含 $A$ 的所有闭集的交：
> $$\overline{A} = \bigcap \{F \subseteq X \mid F \text{ 是闭集},\ A \subseteq F\}$$

<!-- closure_topological_properties -->
> [!Theorem]
> **闭包的性质 Properties of Closure**：设 $(X, \mathcal{T})$ 是拓扑空间，$A, B \subseteq X$，则：
> 1. $\overline{A}$ 是闭集，且 $A \subseteq \overline{A}$；
> 2. $\overline{A}$ 是包含 $A$ 的最小闭集；
> 3. $A$ 是闭集当且仅当 $A = \overline{A}$；
> 4. **幂等性**：$\overline{\overline{A}} = \overline{A}$；
> 5. $\overline{\varnothing} = \varnothing$，$\overline{X} = X$；
> 6. $\overline{A \cup B} = \overline{A} \cup \overline{B}$；
> 7. $\overline{A \cap B} \subseteq \overline{A} \cap \overline{B}$（一般不等）。
>
> **证明思路**：(1)(2)(3)(4) 由定义及闭集任意交封闭直接得到。(6) $A \subseteq A \cup B$ 故 $\overline{A} \subseteq \overline{A \cup B}$，同理 $\overline{B} \subseteq \overline{A \cup B}$，故 $\overline{A} \cup \overline{B} \subseteq \overline{A \cup B}$；反之 $\overline{A} \cup \overline{B}$ 是包含 $A \cup B$ 的闭集。

<!-- closure_accumulation_characterization -->
> [!Theorem]
> **闭包的聚点刻画 Closure via Accumulation Points**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则：
> $$\overline{A} = A \cup A'$$
> 其中 $A'$ 是 $A$ 的导集。等价地，$x \in \overline{A}$ 当且仅当 $x$ 的每个开邻域都与 $A$ 相交。
>
> **证明思路**：$(\supseteq)$ 若 $x \in A$，则 $x$ 属于每个包含 $A$ 的闭集；若 $x \in A'$，由"闭集包含其聚点"知 $x$ 属于每个包含 $A$ 的闭集，故 $x \in \overline{A}$。$(\subseteq)$ 若 $x \notin A$ 且 $x \notin A'$，则存在开邻域 $U$ 使 $U \cap A = \varnothing$，故 $X \setminus U$ 是包含 $A$ 的闭集，$x \notin X \setminus U$，因此 $x \notin \overline{A}$。

## 内部与闭包的关系

<!-- interior_closure_complement_duality -->
> [!Theorem]
> **内部与闭包的对偶关系 Duality between Interior and Closure**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则：
> $$\mathrm{int}(A) = X \setminus \overline{X \setminus A}, \qquad \overline{A} = X \setminus \mathrm{int}(X \setminus A)$$
>
> **证明思路**：$U \subseteq A$ 是开集 $\iff$ $X \setminus A \subseteq X \setminus U$ 且 $X \setminus U$ 是闭集，故包含在 $A$ 中的最大开集的补等于包含 $X \setminus A$ 的最小闭集。

## 通过内部与闭包判定开集与闭集

<!-- open_closed_via_interior_closure -->
> [!Corollary]
> **开集与闭集的判定 Characterization via Interior and Closure**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$，则：
> - $A$ 是开集 $\iff$ $A = \mathrm{int}(A)$ $\iff$ $A$ 的每个点都是 $A$ 的内点；
> - $A$ 是闭集 $\iff$ $A = \overline{A}$ $\iff$ $A$ 包含其所有聚点。
