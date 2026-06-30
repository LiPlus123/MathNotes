# 奇异单形与奇异链

## 奇异单形

<!-- singular_simplex_definition -->
> [!Definition]
> **奇异 $n$-单形 Singular $n$-Simplex**：设 $X$ 是拓扑空间。$X$ 的**奇异 $n$-单形 Singular $n$-Simplex** 是连续映射：
> $$\sigma: \Delta^n \to X,$$
> 其中 $\Delta^n = \{(t_0, t_1, \ldots, t_n) \in \mathbb{R}^{n+1} \mid t_i \geq 0,\; \sum_{i=0}^n t_i = 1\}$ 是标准 $n$-单形。奇异单形不要求是嵌入，可以将 $\Delta^n$ 以任意连续方式映入 $X$。

> **注**：与几何单形复形中的单形不同，奇异单形无需是嵌入，甚至无需是单射，这使奇异同调适用于任意拓扑空间，而不仅限于可三角剖分的空间。

<!-- face_map_definition -->
> [!Definition]
> **面映射 Face Map**：标准单形的**第 $i$ 个面映射 $i$-th Face Map** $d^i: \Delta^{n-1} \to \Delta^n$（$0 \leq i \leq n$）定义为仿射映射：
> $$d^i(t_0, \ldots, t_{n-1}) = (t_0, \ldots, t_{i-1}, 0, t_i, \ldots, t_{n-1}),$$
> 即在第 $i$ 个位置插入 $0$，将 $\Delta^{n-1}$ 嵌入为 $\Delta^n$ 的第 $i$ 个面（省略第 $i$ 个顶点 $e_i$ 的对面）。

## 奇异链群

<!-- singular_chain_group_definition -->
> [!Definition]
> **奇异 $n$-链群 Singular $n$-Chain Group**：拓扑空间 $X$ 的**奇异 $n$-链群 Singular $n$-Chain Group** $S_n(X)$ 是以 $X$ 的全体奇异 $n$-单形为自由生成元的自由阿贝尔群：
> $$S_n(X) = \bigoplus_{\sigma: \Delta^n \to X} \mathbb{Z} \cdot \sigma.$$
> 规定 $S_n(X) = 0$（$n < 0$）。$S_n(X)$ 的元素称为**奇异 $n$-链 Singular $n$-Chain**，形如 $c = \sum_\sigma m_\sigma \sigma$（仅有限个 $m_\sigma \neq 0$）。

> **注**：$S_n(X)$ 通常是无限秩的自由阿贝尔群（$X$ 有无穷多个奇异单形），这与有限的单纯链群 $C_n(K)$ 不同。

## 边界算子与奇异链复形

<!-- singular_boundary_operator_definition -->
> [!Definition]
> **奇异边界算子 Singular Boundary Operator**：定义群同态 $\partial_n: S_n(X) \to S_{n-1}(X)$ 为：对奇异 $n$-单形 $\sigma: \Delta^n \to X$，
> $$\partial_n(\sigma) = \sum_{i=0}^n (-1)^i (\sigma \circ d^i),$$
> 其中 $\sigma \circ d^i: \Delta^{n-1} \to X$ 是奇异 $(n-1)$-单形（$\sigma$ 在第 $i$ 个面上的限制）。由线性延拓，$\partial_n$ 对所有 $n$-链有定义。

<!-- singular_chain_complex_definition -->
> [!Theorem]
> **奇异链复形 Singular Chain Complex**：$\partial_n \circ \partial_{n+1} = 0$（证明与单纯情形完全类似，由面映射满足 $d^j \circ d^i = d^{i+1} \circ d^j$（$j \leq i$）的组合恒等式导出）。从而得到**奇异链复形 Singular Chain Complex** $(S_*(X), \partial)$：
> $$\cdots \to S_n(X) \xrightarrow{\partial_n} S_{n-1}(X) \xrightarrow{\partial_{n-1}} \cdots \xrightarrow{\partial_1} S_0(X) \to 0.$$
