# 约化单纯同调

## 增广同态

<!-- augmentation_map_definition -->
> [!Definition]
> **增广同态 Augmentation Map**：设 $K$ 是有限单纯复形，$V(K) = \{v_0, \ldots, v_m\}$ 是顶点集。定义**增广同态 Augmentation Homomorphism** $\varepsilon: C_0(K) \to \mathbb{Z}$ 为：
> $$\varepsilon\!\left(\sum_{i} n_i [v_i]\right) = \sum_{i} n_i.$$
> 即将每个顶点（$0$-单形）映为整数 $1$，再线性延拓。

<!-- augmentation_is_chain_map -->
> [!Theorem]
> **增广链映射 Augmentation is a Chain Map**：$\varepsilon \circ \partial_1 = 0$，即 $\varepsilon$ 与边界算子相容：对任意 $1$-单形 $[v_i, v_j]$，$\varepsilon(\partial_1([v_i, v_j])) = \varepsilon([v_j] - [v_i]) = 1 - 1 = 0$。故 $\varepsilon$ 将链复形延拓为**增广链复形 Augmented Chain Complex**：
> $$\cdots \to C_1(K) \xrightarrow{\partial_1} C_0(K) \xrightarrow{\varepsilon} \mathbb{Z} \to 0.$$

## 约化同调群

<!-- reduced_homology_definition -->
> [!Definition]
> **约化单纯同调群 Reduced Simplicial Homology Groups**：有限单纯复形 $K$ 的**约化同调群 Reduced Homology Groups** $\tilde{H}_n(K)$ 定义为增广链复形的同调：
> $$\tilde{H}_n(K) = \begin{cases} \ker\partial_n \big/ \mathrm{Im}\,\partial_{n+1} = H_n(K), & n \geq 1, \\[4pt] \ker\varepsilon \big/ \mathrm{Im}\,\partial_1, & n = 0, \\[4pt] 0, & n < 0. \end{cases}$$

## 约化同调与普通同调的关系

<!-- reduced_vs_ordinary_homology -->
> [!Theorem]
> **约化同调与普通同调的关系 Relation Between Reduced and Ordinary Homology**：设 $K$ 是非空有限单纯复形，则：
> $$H_n(K) \cong \begin{cases} \tilde{H}_n(K), & n \geq 1, \\[4pt] \tilde{H}_0(K) \oplus \mathbb{Z}, & n = 0. \end{cases}$$
> 等价地，$\tilde{H}_0(K) \cong H_0(K) / \mathbb{Z}$（约化掉连通分支贡献中的一个 $\mathbb{Z}$）。
>
> **证明思路**：$C_0(K) \cong \ker\varepsilon \oplus \mathbb{Z}$（通过选取任一顶点的陪集分解），从而 $H_0(K) = \ker\varepsilon/\mathrm{Im}\,\partial_1 \oplus \mathbb{Z} = \tilde{H}_0(K) \oplus \mathbb{Z}$。

<!-- reduced_homology_connected -->
> [!Corollary]
> **连通空间的约化 $H_0$ Reduced $H_0$ of Connected Space**：若 $|K|$ 道路连通，则：
> - $H_0(K) \cong \mathbb{Z}$（单个连通分支）；
> - $\tilde{H}_0(K) = 0$。
>
> 一般地，若 $|K|$ 有 $r$ 个道路连通分支，则 $H_0(K) \cong \mathbb{Z}^r$，$\tilde{H}_0(K) \cong \mathbb{Z}^{r-1}$。

<!-- reduced_homology_examples -->
> [!Example]+
> **约化同调的例子 Examples of Reduced Homology**：
> 1. 单点空间 $\{*\}$（即 $0$-单形）：$\tilde{H}_0(\{*\}) = 0$，$\tilde{H}_n(\{*\}) = 0$（$n \geq 1$），即约化同调全部为零；
> 2. $S^n$（$n \geq 1$）的三角剖分：$\tilde{H}_n(S^n) \cong \mathbb{Z}$，其余 $\tilde{H}_k = 0$（$k \neq n$）；
> 3. 有限多个点的不相交并（$r$ 个点）：$\tilde{H}_0 \cong \mathbb{Z}^{r-1}$，其余为零。

> **注**：约化同调在处理带基点的空间和悬挂、锥等构造时更为方便，因为单点空间的约化同调全为零，而普通同调有 $H_0 \cong \mathbb{Z}$。
