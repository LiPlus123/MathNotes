# 核与忠实表示 Kernel and Faithful Representation

<!-- kernel_of_representation -->
> [!Definition]
> **表示的核 Kernel of a Representation**：设 $\rho: G \to GL(V)$ 是群 $G$ 的一个表示。定义 $\rho$ 的**核**为
> $$\ker \rho = \{g \in G \mid \rho(g) = \mathrm{Id}_V\}.$$

<!-- kernel_is_normal_subgroup -->
> [!Proposition]
> **核是正规子群 Kernel Is a Normal Subgroup**：表示 $\rho$ 的核 $\ker \rho$ 是 $G$ 的正规子群。

> **证明思路**：$\ker \rho$ 是群同态 $\rho: G \to GL(V)$ 的核，由群同态基本定理直接得到 $\ker \rho \trianglelefteq G$。

<!-- faithful_representation -->
> [!Definition]
> **忠实表示 Faithful Representation**：若 $\ker \rho = \{e\}$（即 $\rho$ 作为群同态是单射），则称 $\rho$ 是 $G$ 的**忠实表示**。此时 $G$ 同构于 $GL(V)$ 的一个子群。

<!-- example_faithful_nonfaithful -->
> [!Example]+
> **忠实表示与非忠实表示的例子**：
>
> 1. **正则表示是忠实的**：$\rho_{\mathrm{reg}}: G \to GL(FG)$，若 $\rho_{\mathrm{reg}}(g) = \mathrm{Id}_{FG}$，则对所有 $h \in G$ 有 $gh = h$，取 $h = e$ 得 $g = e$。故 $\ker \rho_{\mathrm{reg}} = \{e\}$，正则表示是忠实的。
>
> 2. **平凡表示一般不忠实**：当 $|G| > 1$ 时，$G$ 的平凡表示的核是整个群 $G$，不忠实。
>
> 3. **置换表示可能不忠实**：设 $G = S_3$，$X = \{1, 2\}$（$S_3$ 通过限制作用在 $X$ 上），则所有固定 $X$ 中元素的置换都在核中，核非平凡，故不忠实。但 $S_n$ 通过自然置换作用在 $\{1, \ldots, n\}$ 上的标准置换表示是忠实的。

<!-- representation_as_quotient -->
> [!Proposition]
> **商群的诱导表示 Induced Representation on Quotient Group**：设 $\rho: G \to GL(V)$ 是表示，$N = \ker \rho$。则 $\rho$ 诱导出商群 $G/N$ 上的忠实表示
> $$\bar{\rho}: G/N \to GL(V), \quad \bar{\rho}(gN) = \rho(g).$$

> **证明思路**：由群同态第一同构定理，$G/\ker\rho \cong \mathrm{Im}\,\rho \leq GL(V)$，因此 $\bar{\rho}$ 是良好定义的忠实表示。
