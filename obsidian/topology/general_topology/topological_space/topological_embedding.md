# 拓扑嵌入

## 拓扑嵌入

<!-- topological_embedding_definition -->
> [!Definition]
> **拓扑嵌入 Topological Embedding**：设 $(X, \mathcal{T}_X)$ 和 $(Y, \mathcal{T}_Y)$ 是拓扑空间，$f: X \to Y$。若 $f$ 是连续单射，且 $f: X \to f(X)$ 是同胚（其中 $f(X)$ 配备 $\mathcal{T}_Y$ 诱导的子空间拓扑），则称 $f$ 是从 $X$ 到 $Y$ 的**拓扑嵌入 Topological Embedding**（或简称**嵌入 Embedding**），称 $X$ **拓扑嵌入 Topologically Embeds** 到 $Y$ 中。

> **注**：拓扑嵌入等价于：$f$ 是单射连续映射，且是**到像的开映射**（即 $f$ 将 $X$ 中的开集映为 $f(X)$ 中的开集）。

<!-- topological_embedding_properties -->
> [!Theorem]
> **拓扑嵌入的性质 Properties of Topological Embeddings**：设 $(X, \mathcal{T}_X)$，$(Y, \mathcal{T}_Y)$，$(Z, \mathcal{T}_Z)$ 是拓扑空间，则：
> 1. **同胚是嵌入**：若 $f: X \to Y$ 是同胚，则 $f$ 是拓扑嵌入；
> 2. **复合封闭**：若 $f: X \to Y$ 和 $g: Y \to Z$ 均是拓扑嵌入，则 $g \circ f: X \to Z$ 是拓扑嵌入；
> 3. **像同胚于原空间**：若 $f: X \to Y$ 是拓扑嵌入，则 $X \cong f(X)$（子空间）；
> 4. **拓扑性质的遗传**：若 $f: X \to Y$ 是拓扑嵌入，则 $X$ 具有 $f(X)$（作为 $Y$ 的子空间）所具有的一切可遗传拓扑性质。
>
> **证明思路**：(1) 同胚到像显然是嵌入。(2) $g \circ f$ 是单射连续映射；对 $X$ 中开集 $U$，$(g \circ f)(U) = g(f(U))$，由 $f$ 是嵌入知 $f(U)$ 是 $f(X)$ 中的开集，从而是某 $V \cap f(X)$（$V$ 是 $Y$ 中开集）；再由 $g$ 是嵌入知 $g(f(U))$ 是 $g(f(X))$ 中的开集，从而 $g \circ f$ 是嵌入。(3) 由嵌入定义直接得到。(4) 由 $X \cong f(X)$ 及拓扑不变量在同胚下保持得到。

<!-- topological_embedding_open_closed -->
> [!Definition]
> **开嵌入与闭嵌入 Open and Closed Embeddings**：若拓扑嵌入 $f: X \to Y$ 的像 $f(X)$ 是 $Y$ 中的开子集，则称 $f$ 为**开嵌入 Open Embedding**；若 $f(X)$ 是 $Y$ 中的闭子集，则称 $f$ 为**闭嵌入 Closed Embedding**。

<!-- isometric_embedding_is_topological -->
> [!Proposition]
> **等距嵌入是拓扑嵌入 Isometric Embeddings are Topological Embeddings**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$ 是等距嵌入，则 $f$ 在对应度量拓扑下也是拓扑嵌入。
>
> **证明思路**：$f$ 是连续单射（等距映射均连续）。对 $X$ 中开集 $U = \bigcup_\alpha B_{d_X}(x_\alpha, r_\alpha)$，有 $f(U) = \bigcup_\alpha B_{d_Y}(f(x_\alpha), r_\alpha) \cap f(X)$（由等距条件），故 $f(U)$ 是 $f(X)$ 中的开集，$f$ 是嵌入。
