# 单纯同调与奇异同调的等价

## 主定理

<!-- simplicial_singular_equivalence -->
> [!Theorem]
> **单纯同调与奇异同调的等价 Equivalence of Simplicial and Singular Homology**：设 $K$ 是有限单纯复形，则存在自然的群同构：
> $$H_n^{\Delta}(K) \cong H_n(|K|) \quad \text{对所有 } n \geq 0,$$
> 其中 $H_n^{\Delta}(K)$ 是 $K$ 的单纯同调群，$H_n(|K|)$ 是底空间 $|K|$ 的奇异同调群。

## 证明思路

<!-- simplicial_singular_chain_map -->
> **证明思路（链映射构造）**：
>
> **构造链映射**：定义链映射 $\phi_n: C_n(K) \to S_n(|K|)$ 如下：对每个选定了定向的 $n$-单形 $[v_0, v_1, \ldots, v_n] \in K$，令：
> $$\phi_n([v_0, \ldots, v_n]) = \sigma_{v_0,\ldots,v_n}: \Delta^n \to |K|,$$
> 其中 $\sigma_{v_0,\ldots,v_n}$ 是仿射奇异单形，$\sigma_{v_0,\ldots,v_n}(e_i) = v_i$（$e_i$ 是 $\Delta^n$ 的第 $i$ 个顶点）。由线性延拓，$\phi_n$ 是群同态。
>
> **链映射性**：验证 $\phi_{n-1} \circ \partial_n^{\Delta} = \partial_n^{\mathrm{sing}} \circ \phi_n$：两边作用在 $[v_0,\ldots,v_n]$ 上，左边为 $\sum_i (-1)^i \phi_{n-1}([v_0,\ldots,\hat{v}_i,\ldots,v_n]) = \sum_i (-1)^i \sigma_{v_0,\ldots,\hat{v}_i,\ldots,v_n}$；右边 $\partial_n^{\mathrm{sing}}(\sigma_{v_0,\ldots,v_n}) = \sum_i (-1)^i \sigma_{v_0,\ldots,v_n} \circ d^i$，而 $\sigma_{v_0,\ldots,v_n} \circ d^i = \sigma_{v_0,\ldots,\hat{v}_i,\ldots,v_n}$，两边相等。
>
> **诱导同构**：证明 $\phi_*: H_n^{\Delta}(K) \to H_n(|K|)$ 是同构，可通过对 $K$ 的维数归纳进行（维数 $0$ 时显然；归纳步骤利用 $K$ 的骨架滤过 $K^{(0)} \subseteq K^{(1)} \subseteq \cdots \subseteq K$ 和对的长正合列，以及五引理（Five Lemma）得到各维数情形的同构）。

## 计算优势与应用

<!-- simplicial_vs_singular_computation -->
> [!Corollary]
> **计算单纯复形的奇异同调 Computing Singular Homology of Polyhedra**：对于多面体（可三角剖分的空间），单纯同调提供了计算奇异同调的有限算法：
> 1. 对 $|K|$ 选取一个三角剖分（有限单纯复形 $K$）；
> 2. 计算各维链群 $C_n(K)$（有限秩自由阿贝尔群）；
> 3. 计算边界算子的矩阵（有限整数矩阵）；
> 4. 利用整数矩阵的 Smith 标准形（初等因子分解）直接读出 $H_n(K)$，从而得到 $H_n(|K|)$。
>
> 奇异同调虽理论上更一般（适用于任意拓扑空间），但对多面体而言，单纯同调是更实用的计算工具。

<!-- simplicial_singular_natural -->
> **注**：上述等价是**自然的（Natural）**，即对单纯映射 $f: K \to L$，下图交换：
> $$\begin{array}{ccc} H_n^{\Delta}(K) & \xrightarrow{f_*^{\Delta}} & H_n^{\Delta}(L) \\ \downarrow \cong & & \downarrow \cong \\ H_n(|K|) & \xrightarrow{|f|_*} & H_n(|L|) \end{array}$$
> 这保证了两种同调理论的"计算结果"完全一致，且对映射的作用也一致。
