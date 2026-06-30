# 连续映射诱导的同态

## 链映射

<!-- chain_map_definition -->
> [!Definition]
> **链映射 Chain Map**：设 $f: X \to Y$ 是连续映射。定义**诱导链映射 Induced Chain Map** $f_\#: S_n(X) \to S_n(Y)$ 为：对奇异 $n$-单形 $\sigma: \Delta^n \to X$，
> $$f_\#(\sigma) = f \circ \sigma: \Delta^n \xrightarrow{\sigma} X \xrightarrow{f} Y,$$
> 即将 $X$ 中的奇异单形通过 $f$ 推前（pushforward）为 $Y$ 中的奇异单形，再由线性延拓到所有链。

<!-- chain_map_commutes_boundary -->
> [!Theorem]
> **链映射与边界算子交换 Chain Map Commutes with Boundary**：$f_\#$ 与边界算子相容，即对所有 $n$ 和所有 $n$-链 $c \in S_n(X)$：
> $$f_\# \circ \partial_n = \partial_n \circ f_\#.$$
>
> **证明思路**：对奇异 $n$-单形 $\sigma$，
> $$f_\#(\partial_n \sigma) = f_\# \!\left(\sum_i (-1)^i \sigma \circ d^i\right) = \sum_i (-1)^i f \circ \sigma \circ d^i = \partial_n(f \circ \sigma) = \partial_n(f_\# \sigma).$$

## 诱导同调同态

<!-- induced_homology_homomorphism -->
> [!Theorem]
> **诱导同调同态 Induced Homomorphism on Homology**：连续映射 $f: X \to Y$ 诱导群同态：
> $$f_*: H_n(X) \to H_n(Y), \quad f_*([c]) = [f_\#(c)].$$
>
> **证明思路**：若 $c \in Z_n(X)$（即 $\partial c = 0$），则 $\partial(f_\# c) = f_\#(\partial c) = 0$，故 $f_\# c \in Z_n(Y)$；若 $c \in B_n(X)$（即 $c = \partial d$），则 $f_\# c = f_\#(\partial d) = \partial(f_\# d) \in B_n(Y)$，故 $f_*$ 良定义。线性性由 $f_\#$ 的线性性保证。

## 函子性

<!-- functoriality_singular_homology -->
> [!Theorem]
> **奇异同调的函子性 Functoriality of Singular Homology**：
> 1. **复合**：若 $f: X \to Y$，$g: Y \to Z$ 是连续映射，则：
>    $$(g \circ f)_\# = g_\# \circ f_\#, \qquad (g \circ f)_* = g_* \circ f_*;$$
> 2. **恒等**：$(\mathrm{id}_X)_\# = \mathrm{id}_{S_*(X)}$，$(\mathrm{id}_X)_* = \mathrm{id}_{H_n(X)}$。
>
> **证明思路**：(1) 对奇异单形 $\sigma$，$(g \circ f)_\#(\sigma) = g \circ f \circ \sigma = g_\#(f \circ \sigma) = g_\# \circ f_\#(\sigma)$。(2) $\mathrm{id}_\#(\sigma) = \mathrm{id} \circ \sigma = \sigma$。

<!-- functoriality_consequence -->
> [!Corollary]
> **同胚空间有同构的奇异同调 Homeomorphic Spaces Have Isomorphic Singular Homology**：若 $f: X \to Y$ 是同胚（具有连续逆 $g = f^{-1}$），则 $f_*: H_n(X) \to H_n(Y)$ 是群同构。
>
> **证明思路**：$f_* \circ g_* = (f \circ g)_* = (\mathrm{id}_Y)_* = \mathrm{id}$，同理 $g_* \circ f_* = \mathrm{id}$，故 $f_*$ 是同构，$g_*$ 是其逆。
