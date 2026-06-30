# 同伦不变性

## 链同伦

<!-- chain_homotopy_definition -->
> [!Definition]
> **链同伦 Chain Homotopy**：设 $f_\#, g_\#: S_*(X) \to S_*(Y)$ 是两个链映射。$f_\#$ 与 $g_\#$ 之间的**链同伦 Chain Homotopy** 是一族群同态 $\{P_n: S_n(X) \to S_{n+1}(Y)\}_{n \geq 0}$，满足：
> $$g_\# - f_\# = \partial_{n+1} \circ P_n + P_{n-1} \circ \partial_n \quad \text{（对所有 $n$）},$$
> 简记为 $g_\# - f_\# = \partial P + P\partial$。

<!-- chain_homotopy_implies_same_homology -->
> [!Theorem]
> **链同伦的映射诱导相同同态 Chain Homotopic Maps Induce the Same Homomorphism**：若 $f_\#$ 与 $g_\#$ 链同伦，则 $f_* = g_*: H_n(X) \to H_n(Y)$。
>
> **证明思路**：对 $[c] \in H_n(X)$（$\partial c = 0$），$g_\#(c) - f_\#(c) = \partial P(c) + P(\partial c) = \partial P(c) + 0 = \partial(P(c)) \in B_n(Y)$，故 $[g_\#(c)] = [f_\#(c)]$ 在 $H_n(Y)$ 中。

## 棱柱算子

<!-- prism_operator_construction -->
> [!Definition]
> **棱柱算子 Prism Operator**：设 $H: X \times I \to Y$ 是同伦（$H(x,0) = f(x)$，$H(x,1) = g(x)$）。对奇异 $n$-单形 $\sigma: \Delta^n \to X$，考虑映射 $H \circ (\sigma \times \mathrm{id}_I): \Delta^n \times I \to Y$。利用 $\Delta^n \times I$ 的标准三角剖分：将"棱柱"分解为 $(n+1)$ 个奇异 $(n+1)$-单形（对应 $\Delta^n \times I$ 的 $(n+1)$ 种三角剖分分片）。具体地，定义**棱柱算子 Prism Operator** $P_n: S_n(X) \to S_{n+1}(Y)$ 为：
> $$P_n(\sigma) = \sum_{i=0}^n (-1)^i H \circ (\sigma \times \mathrm{id}_I) \circ \ell_i,$$
> 其中 $\ell_i: \Delta^{n+1} \to \Delta^n \times I$ 是将 $\Delta^{n+1}$ 线性嵌入 $\Delta^n \times I$ 的第 $i$ 个分片（顶点映射：$e_j \mapsto (e_j, 0)$（$j \leq i$），$e_j \mapsto (e_{j-1}, 1)$（$j > i$））。

## 同伦不变性定理

<!-- homotopy_invariance_theorem -->
> [!Theorem]
> **奇异同调的同伦不变性 Homotopy Invariance of Singular Homology**：若 $f, g: X \to Y$ 是同伦的连续映射（$f \simeq g$），则：
> $$f_* = g_*: H_n(X) \to H_n(Y) \quad \text{对所有 } n.$$
>
> **证明思路**：设 $H: X \times I \to Y$ 是 $f$ 到 $g$ 的同伦，$P = \{P_n\}$ 是上述棱柱算子。验证恒等式 $g_\# - f_\# = \partial P + P\partial$（这是一个组合恒等式，由面映射的组合关系 $d^j \circ d^i = d^{i+1} \circ d^j$（$j \leq i$）以及 $H(x,0) = f(x)$、$H(x,1) = g(x)$ 推出）。由链同伦引理，$f_* = g_*$。

<!-- homotopy_equivalence_isomorphism -->
> [!Corollary]
> **同伦等价空间有同构的奇异同调 Homotopy Equivalent Spaces Have Isomorphic Singular Homology**：若 $f: X \to Y$ 是同伦等价，则 $f_*: H_n(X) \to H_n(Y)$ 是群同构。特别地，可缩空间的奇异同调与单点空间相同：$H_0 \cong \mathbb{Z}$，$H_n = 0$（$n \geq 1$）。
>
> **证明思路**：设 $g: Y \to X$ 是 $f$ 的同伦逆（$g \circ f \simeq \mathrm{id}_X$，$f \circ g \simeq \mathrm{id}_Y$），则 $g_* \circ f_* = (g \circ f)_* = (\mathrm{id}_X)_* = \mathrm{id}$，同理 $f_* \circ g_* = \mathrm{id}$，故 $f_*$ 是同构。
