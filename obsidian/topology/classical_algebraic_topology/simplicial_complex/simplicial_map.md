# 单纯映射

## 单纯映射的定义

<!-- simplicial_map_definition -->
> [!Definition]
> **单纯映射 Simplicial Map**：设 $K$、$L$ 是抽象单纯复形，顶点集分别为 $V(K)$、$V(L)$。映射 $f: V(K) \to V(L)$ 称为从 $K$ 到 $L$ 的**单纯映射 Simplicial Map**（记为 $f: K \to L$），若对 $K$ 的每个单形 $\sigma = \{v_{i_0}, \ldots, v_{i_k}\} \in K$，像集 $f(\sigma) = \{f(v_{i_0}), \ldots, f(v_{i_k})\}$ 是 $L$ 的单形（允许维数降低，即允许 $f$ 将不同顶点映到同一顶点）。

> **注**：单纯映射自动将 $K$ 的 $k$-单形映到 $L$ 的某个 $\leq k$-维单形（若像顶点有重合则维数严格降低）。单纯映射保持面关系：若 $\tau \leq \sigma$ 在 $K$ 中，则 $f(\tau) \leq f(\sigma)$ 在 $L$ 中。

## 单纯映射诱导的连续映射

<!-- simplicial_map_induces_continuous -->
> [!Theorem]
> **单纯映射诱导连续映射 Simplicial Map Induces Continuous Map**：设 $f: K \to L$ 是单纯映射。定义 $|f|: |K| \to |L|$ 为：对 $\mathbf{\lambda} = \sum_{i} \lambda_i v_i \in |K|$（以重心坐标表示），令：
> $$|f|\!\left(\sum_i \lambda_i v_i\right) = \sum_i \lambda_i f(v_i),$$
> 即对每个单形做仿射线性延拓，则 $|f|: |K| \to |L|$ 是连续映射。
>
> **证明思路**：$|f|$ 在每个单形上是仿射线性映射（从而连续），各单形上的定义在公共面处相容（由单纯映射的面保持性），故由粘合引理 $|f|$ 整体连续。

<!-- simplicial_map_well_defined -->
> [!Theorem]
> **值域在 $|L|$ 中 Image Contained in $|L|$**：上述 $|f|$ 的值域确实落在 $|L|$ 中。对单形 $\sigma = \{v_{i_0}, \ldots, v_{i_k}\} \in K$，$|f|$ 将 $\sigma$ 对应的子空间仿射映射到 $f(\sigma) = \{f(v_{i_0}), \ldots, f(v_{i_k})\} \in L$ 对应的子空间，从而落在 $|L|$ 内。

## 单纯映射的复合

<!-- simplicial_map_composition -->
> [!Theorem]
> **单纯映射的复合 Composition of Simplicial Maps**：设 $f: K \to L$ 和 $g: L \to M$ 是单纯映射，则复合 $g \circ f: V(K) \to V(M)$ 也是单纯映射（$g \circ f: K \to M$），且 $|g \circ f| = |g| \circ |f|$。
>
> **证明思路**：对 $K$ 的任一单形 $\sigma$，$(g \circ f)(\sigma) = g(f(\sigma))$；由 $f$ 单纯，$f(\sigma) \in L$；由 $g$ 单纯，$g(f(\sigma)) \in M$，故 $g \circ f$ 单纯。连续映射的等式由仿射延拓的函子性直接得到。

<!-- simplicial_map_examples -->
> [!Example]+
> **单纯映射的例子 Examples**：
> 1. **面嵌入**：包含映射 $i: L \hookrightarrow K$（$L$ 是 $K$ 的子复形）是单纯映射，$|i|: |L| \hookrightarrow |K|$ 是拓扑嵌入；
> 2. **折叠映射**：$K = \partial\Delta^2 = \{\{a\},\{b\},\{c\},\{a,b\},\{b,c\},\{a,c\}\}$（三角形边界，$|K| \cong S^1$），$L = \{\{p\},\{q\},\{p,q\}\}$（线段，$|L| \cong [0,1]$），映射 $f: a \mapsto p, b \mapsto q, c \mapsto p$ 是单纯映射（$\{a,c\} \mapsto \{p\}$ 退化为顶点）；
> 3. **恒等映射**：$\mathrm{id}_K: K \to K$ 是单纯映射，诱导 $|\mathrm{id}_K| = \mathrm{id}_{|K|}$。
