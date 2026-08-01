# Archimedean 局部表示论

## 实 Lie 群、$(\mathfrak g,K)$-模与级数表示

<!-- local_archimedean_local_field_definition -->
> [!Definition]
> **Archimedean 局部域 Archimedean Local Field**：全局域的 Archimedean 完备化为 $\mathbb{R}$ 或 $\mathbb{C}$。相应的约化群实点构成实 Lie 群，其连续表示理论与非阿基米德群的光滑表示理论具有平行结构，但微分几何和无穷小表示扮演核心角色。

<!-- local_smooth_frechet_representation_definition -->
> [!Definition]
> **光滑 Fréchet 表示 Smooth Frechet Representation**：实 Lie 群 $G$ 在 Fréchet 空间 $V$ 上的连续表示称为光滑的，若每个轨道映射 $g\mapsto\pi(g)v$ 是 $C^\infty$。由对 $G$ 的微分得到 Lie 代数表示 $d\pi:\mathfrak g\to\operatorname{End}(V^\infty)$。

<!-- local_harish_chandra_module_definition -->
> [!Definition]
> **$(\mathfrak g,K)$-模 $(\mathfrak g,K)$-Module**：设 $K$ 是实约化 Lie 群 $G$ 的极大紧子群，$\mathfrak g$ 是复化 Lie 代数。$(\mathfrak g,K)$-模是同时带有 $\mathfrak g$ 作用和局部有限 $K$ 作用的向量空间，且两种作用在 $\mathfrak k$ 上一致并满足兼容关系。可容许的有限生成 $(\mathfrak g,K)$-模也称 Harish-Chandra 模。

<!-- local_principal_series_definition -->
> [!Definition]
> **主级数表示 Principal Series Representation**：设 $G=KAN$ 具有 Iwasawa 分解，$P=MAN$ 为极小抛物子群。由 $MA$ 的角色或有限维表示经归一化抛物诱导
> $$
> \operatorname{Ind}_P^G(\sigma\otimes e^\lambda)
> $$
> 得到的表示称为主级数表示。它们提供实约化群单位对偶的重要连续族。

<!-- local_discrete_series_definition -->
> [!Definition]
> **离散级数 Discrete Series**：不可约酉表示 $\pi$ 称为离散级数，若其矩阵元素属于 $L^2(G/Z)$，其中 $Z$ 是中心，且 $\pi$ 在正则表示的离散部分中出现。并非每个实约化 Lie 群都有离散级数。

<!-- local_harish_chandra_discrete_series_criterion -->
> [!Theorem]
> **Harish-Chandra 离散级数判别 Harish-Chandra Discrete-Series Criterion**：连通半单实 Lie 群（在适当有限中心条件下）存在离散级数，当且仅当 $G$ 有紧 Cartan 子群；等价地，$G$ 与其极大紧子群 $K$ 的秩相等。
>
> **证明思路**：紧 Cartan 子群给出椭圆正则元和可平方可积的特征标构造。反向方向由离散级数特征标的椭圆支撑性质推出紧 Cartan 的必要性。

<!-- local_archimedean_nonarchimedean_parallel -->
> [!Proposition]
> **Archimedean 与非阿基米德理论的平行 Parallel with the Non-Archimedean Theory**：Archimedean 情形的 $K$-有限向量和 $(\mathfrak g,K)$-模，类似于 $p$-进情形的紧开固定向量和光滑可容许表示；两类理论中，抛物诱导和 Jacquet 型函子都组织了不可约表示的构造与分解。
>
> **证明思路**：比较极大紧子群的表示分解与紧开子群固定向量空间，以及两种范畴中的归一化抛物诱导函子。

> **来源**：Anthony W. Knapp, *Representation Theory of Semisimple Groups*；Nolan R. Wallach, *Real Reductive Groups I*。
