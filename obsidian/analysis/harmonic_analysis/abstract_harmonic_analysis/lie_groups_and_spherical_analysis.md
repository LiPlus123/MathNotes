# Lie 群与球分析

## 分解、球函数与球变换

<!-- abstract_lie_group_lie_algebra_definition -->
> [!Definition]
> **Lie 群与 Lie 代数 Lie Group and Lie Algebra**：Lie 群是兼具群结构和光滑流形结构、且群运算光滑的群。其 Lie 代数为
> $$
> \mathfrak{g}=T_eG,
> $$
> 括号由左不变向量场的交换子给出。Lie 代数编码单位元附近的局部群结构。

<!-- abstract_cartan_decomposition -->
> [!Theorem]
> **Cartan 分解 Cartan Decomposition**：对连通半单实 Lie 群 $G$ 及 Cartan 对合 $\theta$，Lie 代数分解为
> $$
> \mathfrak{g}=\mathfrak{k}\oplus\mathfrak{p}
> $$
> 的 $\pm1$ 特征空间；对应极大紧子群 $K$，群层面有 $G=K\exp(\mathfrak{p})$。更精细的极分解使用极大 Abel 子空间 $\mathfrak{a}\subset\mathfrak p$。
>
> **证明思路**：Cartan 对合给出正定双线性型，利用极大紧子群的存在与指数映射，证明每个群元可分解为紧部分与 $\exp(\mathfrak p)$ 部分。

<!-- abstract_iwasawa_decomposition -->
> [!Theorem]
> **Iwasawa 分解 Iwasawa Decomposition**：对连通半单实 Lie 群，在适当有限中心假设下，存在子群 $K,A,N$，其中 $K$ 极大紧、$A$ Abel、$N$ 幂零，使乘法映射给出微分同胚
> $$
> K\times A\times N\longrightarrow G,
> \qquad(k,a,n)\longmapsto kan.
> $$
> 该分解为 Haar 积分、主级数表示和球变换提供坐标。
>
> **证明思路**：选择极大可分 Cartan 子代数及正根系，以根空间构造 $N$；Lie 代数层面的分解经指数映射和全局结构理论提升到群层面。

<!-- abstract_gelfand_pair_lie_group -->
> [!Definition]
> **对称空间的 Gelfand 对 Gelfand Pair of a Symmetric Space**：对半单 Lie 群 $G$ 及其极大紧子群 $K$，$(G,K)$ 通常构成 Gelfand 对。因此双 $K$-不变函数的卷积代数交换，可进行球 Fourier 分析。

<!-- abstract_harish_chandra_spherical_function -->
> [!Definition]
> **Harish-Chandra 球函数 Harish-Chandra Spherical Function**：对参数 $\lambda\in\mathfrak{a}_\mathbb{C}^*$，定义
> $$
> \varphi_\lambda(g)=\int_K e^{(i\lambda+\rho)(H(gk))}\,dk,
> $$
> 其中 $H(gk)\in\mathfrak a$ 由 Iwasawa 分解给出，$\rho$ 是正限制根的半和。它是归一化的双 $K$-不变共同特征函数。

<!-- abstract_spherical_transform_definition -->
> [!Definition]
> **球变换 Spherical Transform**：对双 $K$-不变可积函数 $f$，定义
> $$
> \widetilde f(\lambda)=\int_Gf(g)\varphi_{-\lambda}(g)\,dg.
> $$
> 它将双 $K$-不变卷积化为参数空间上的乘法，是 Abel 群 Fourier 变换在 Riemann 对称空间上的推广。

> **来源**：Sigurdur Helgason, *Groups and Geometric Analysis*；Anthony W. Knapp, *Lie Groups Beyond an Introduction*。
