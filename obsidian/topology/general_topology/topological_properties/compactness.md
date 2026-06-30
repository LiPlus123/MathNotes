# 紧致性

## 开覆盖与紧致性

<!-- open_cover_definition -->
> [!Definition]
> **开覆盖 Open Cover**：设 $(X, \mathcal{T})$ 是拓扑空间，$A \subseteq X$。$X$ 中开集的集族 $\{U_\alpha\}_{\alpha \in I}$ 称为 $A$ 的**开覆盖 Open Cover**，若 $A \subseteq \bigcup_{\alpha \in I} U_\alpha$。若开覆盖的某个有限子族仍覆盖 $A$，则称其为**有限子覆盖 Finite Subcover**。

<!-- compact_definition -->
> [!Definition]
> **紧致性 Compactness**：拓扑空间 $(X, \mathcal{T})$ 称为**紧致的 Compact**，若 $X$ 的每个开覆盖都有有限子覆盖。子集 $K \subseteq X$ 称为**紧致子集 Compact Subset**，若子空间 $(K, \mathcal{T}_K)$ 是紧致的（等价地，$X$ 中覆盖 $K$ 的每个开集族都有有限子族覆盖 $K$）。

> **注**：单点集、有限集均是紧致的。$\mathbb{R}$ 本身不是紧致的（$\{(-n, n)\}_{n \geq 1}$ 无有限子覆盖）。

## 紧致性是拓扑性质

<!-- compactness_topological_invariant -->
> [!Theorem]
> **紧致性是拓扑不变量 Compactness is a Topological Invariant**：连续映射保持紧致性，即若 $f: X \to Y$ 连续且 $X$ 紧致，则 $f(X)$ 是 $Y$ 的紧致子集。特别地，同胚保持紧致性。
>
> **证明思路**：设 $\{V_\alpha\}$ 覆盖 $f(X)$，则 $\{f^{-1}(V_\alpha)\}$ 是 $X$ 的开覆盖，取有限子覆盖 $f^{-1}(V_{\alpha_1}), \ldots, f^{-1}(V_{\alpha_n})$，则 $V_{\alpha_1}, \ldots, V_{\alpha_n}$ 覆盖 $f(X)$。

## Heine–Borel 定理

<!-- heine_borel_theorem -->
> [!Theorem]
> **Heine–Borel 定理 Heine–Borel Theorem**：$\mathbb{R}^n$ 的子集 $K$ 是紧致的，当且仅当 $K$ 是**有界闭集**（即 $K$ 是闭集且存在 $M > 0$ 使 $K \subseteq [-M, M]^n$）。
>
> **证明思路**：$(\Leftarrow)$ 有界闭集是 $[-M,M]^n$ 的闭子集，而 $[-M,M]^n$ 是有限闭区间的积，由有限维情形的 Weierstrass 定理或区间套方法证明 $[a,b]$ 紧致，再由积拓扑（Tychonoff 有限情形）和闭子集紧致推出。$(\Rightarrow)$ 紧致集在 Hausdorff 空间中是闭集；有界性由开覆盖 $\{B(0,n)\}_{n \geq 1}$ 取有限子覆盖得到。

## 积空间的紧致性

<!-- compact_closed_subset -->
> [!Theorem]
> **紧致空间的闭子集是紧致的 Closed Subsets of Compact Spaces are Compact**：紧致 Hausdorff 空间的闭子集是紧致的；反之，紧致空间的紧致子集是闭集（在 Hausdorff 空间中）。
>
> **证明思路**：设 $F$ 是紧致空间 $X$ 的闭子集，$\{U_\alpha \cap F\}$ 是 $F$ 的开覆盖（$U_\alpha \in \mathcal{T}$），则 $\{U_\alpha\} \cup \{X \setminus F\}$ 是 $X$ 的开覆盖，取有限子覆盖再去掉 $X \setminus F$ 得 $F$ 的有限子覆盖。

<!-- tychonoff_theorem -->
> [!Theorem]
> **Tychonoff 定理 Tychonoff's Theorem**：任意族紧致拓扑空间 $\{X_\alpha\}_{\alpha \in J}$ 的积（配积拓扑）$\prod_{\alpha \in J} X_\alpha$ 是紧致的。
>
> **证明思路**：标准证明使用 Zorn 引理或等价的选择公理。关键步骤：利用 Alexander 子基定理（若每个子基元素的覆盖有有限子覆盖，则全空间紧致）将问题化归为子基，再对积拓扑的子基（投影的原像）逐坐标论证。

> **注**：Tychonoff 定理与选择公理等价（在 ZF 集合论中）。有限情形可不用选择公理直接证明。

## 连续像紧

<!-- continuous_image_compact -->
> [!Corollary]
> **紧致空间上的连续函数有界且达到最值 Extreme Value Theorem**：设 $f: X \to \mathbb{R}$ 是紧致空间 $X$ 上的连续函数，则 $f$ 有界且达到最大值与最小值（即存在 $x_0, x_1 \in X$ 使得 $f(x_0) = \sup_{x \in X} f(x)$ 且 $f(x_1) = \inf_{x \in X} f(x)$）。
>
> **证明思路**：$f(X)$ 是 $\mathbb{R}$ 的紧致子集，由 Heine–Borel 定理是有界闭集，故 $\sup f(X)$ 和 $\inf f(X)$ 均在 $f(X)$ 中取到。
