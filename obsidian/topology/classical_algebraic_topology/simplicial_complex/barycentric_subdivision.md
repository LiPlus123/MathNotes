# 重心细分

## 重心细分的定义

<!-- barycentric_subdivision_definition -->
> [!Definition]
> **重心细分 Barycentric Subdivision**：设 $K$ 是几何单纯复形，$K$ 的**重心细分 Barycentric Subdivision** $\mathrm{Sd}(K)$ 是如下几何单纯复形：
> - **顶点**：$\mathrm{Sd}(K)$ 的顶点为 $K$ 中所有单形的重心 $\hat{\sigma}$（每个单形 $\sigma \in K$ 贡献一个顶点）；
> - **单形**：$\{\hat{\sigma}_0, \hat{\sigma}_1, \ldots, \hat{\sigma}_k\}$ 是 $\mathrm{Sd}(K)$ 的 $k$-单形，当且仅当对应的单形链 $\sigma_0 < \sigma_1 < \cdots < \sigma_k$（严格包含链）是 $K$ 中的链。
>
> $\mathrm{Sd}(K)$ 的底空间与 $K$ 的底空间相同：$|\mathrm{Sd}(K)| = |K|$（作为拓扑空间同胚）。

<!-- iterated_barycentric_subdivision -->
> [!Definition]
> **$r$ 次重心细分 Iterated Barycentric Subdivision**：记 $\mathrm{Sd}^r(K)$ 为 $K$ 经 $r$ 次重心细分所得的复形（$\mathrm{Sd}^0(K) = K$，$\mathrm{Sd}^r(K) = \mathrm{Sd}(\mathrm{Sd}^{r-1}(K))$）。

## 网格

<!-- mesh_definition -->
> [!Definition]
> **网格大小 Mesh**：几何单纯复形 $K$ 的**网格大小 Mesh** 定义为所有单形的直径之最大值：
> $$\mathrm{mesh}(K) = \max_{\sigma \in K} \mathrm{diam}(\sigma),$$
> 其中 $\mathrm{diam}(\sigma) = \max_{x, y \in \sigma} \|x - y\|$ 是单形 $\sigma$ 的直径（对几何 $n$-单形，等于最长棱的长度）。

<!-- mesh_decrease -->
> [!Theorem]
> **重心细分减小网格 Barycentric Subdivision Decreases Mesh**：设 $K$ 是 $n$ 维几何单纯复形，则：
> $$\mathrm{mesh}(\mathrm{Sd}(K)) \leq \frac{n}{n+1} \cdot \mathrm{mesh}(K).$$
> 从而 $\mathrm{mesh}(\mathrm{Sd}^r(K)) \leq \left(\dfrac{n}{n+1}\right)^r \mathrm{mesh}(K) \to 0$（$r \to \infty$）。
>
> **证明思路**：$\mathrm{Sd}(K)$ 中任一单形 $[\hat\sigma_0, \ldots, \hat\sigma_k]$（$\sigma_0 < \cdots < \sigma_k$）的直径不超过 $\frac{k}{k+1}\mathrm{diam}(\sigma_k) \leq \frac{n}{n+1}\mathrm{mesh}(K)$，可通过重心坐标的不等式估计直接验证。

## 单纯逼近定理

<!-- simplicial_approximation_definition -->
> [!Definition]
> **单纯逼近 Simplicial Approximation**：设 $f: |K| \to |L|$ 是连续映射，$g: \mathrm{Sd}^r(K) \to L$ 是单纯映射。若对每个顶点 $v \in V(\mathrm{Sd}^r K)$，有 $|g|(v)$ 与 $f(v)$ 属于 $|L|$ 的同一个单形的内部（等价地，$f(v)$ 属于 $|g|(v)$ 所在单形的某个星形邻域），则称 $g$ 是 $f$ 的**单纯逼近 Simplicial Approximation**。

> **注**：若 $g$ 是 $f$ 的单纯逼近，则 $|g|$ 与 $f$ 同伦（通过直线同伦在 $|L|$ 的各单形中实现）。

<!-- simplicial_approximation_theorem -->
> [!Theorem]
> **单纯逼近定理 Simplicial Approximation Theorem**：设 $K$、$L$ 是有限单纯复形，$f: |K| \to |L|$ 是连续映射。则存在整数 $r \geq 0$ 和单纯映射 $g: \mathrm{Sd}^r(K) \to L$，使得 $g$ 是 $f$ 的单纯逼近，从而 $|g| \simeq f$（同伦）。
>
> **证明思路**：对 $L$ 的每个顶点 $w$，$f^{-1}(\mathrm{st}(w))$（其中 $\mathrm{st}(w) = \bigcup_{\sigma \ni w} \mathrm{Int}(\sigma)$ 是 $w$ 的开星形）是 $|K|$ 的开子集。$\{f^{-1}(\mathrm{st}(w)) \mid w \in V(L)\}$ 是紧空间 $|K|$ 的开覆盖，其 Lebesgue 数为 $\delta > 0$。取 $r$ 充分大使 $\mathrm{mesh}(\mathrm{Sd}^r K) < \delta$，则 $\mathrm{Sd}^r K$ 的每个顶点 $v$ 的开星形 $\mathrm{st}(v)$ 的 $f$-像完全落在某个 $\mathrm{st}(w)$ 内，选取这样的 $w$ 为 $g(v)$ 即给出单纯逼近。

<!-- simplicial_approximation_corollary -->
> [!Corollary]
> **单纯逼近的应用 Application**：任意连续映射 $f: |K| \to |L|$ 同伦于某个单纯映射的几何实现（经过适当次数的重心细分后）。这为把拓扑问题化归为组合问题提供了基础。
