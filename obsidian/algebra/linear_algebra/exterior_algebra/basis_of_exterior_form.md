# 外形式的基

## 外形式的基

<!-- exterior_form_basis_def -->
> [!Theorem]
> **外形式的基 Basis of $k$-Forms**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间，$\mathcal{B} = (e_1, \ldots, e_n)$ 为 $V$ 的一组有序基，$\{e^1, \ldots, e^n\}$ 为相应的对偶基（$e^i(e_j) = \delta^i_{\ j}$）。则集合
> $$\mathcal{B}_k \coloneqq \left\{ e^{i_1} \wedge e^{i_2} \wedge \cdots \wedge e^{i_k} \;\middle|\; 1 \leq i_1 < i_2 < \cdots < i_k \leq n \right\}$$
> 构成 $\bigwedge^k V^*$ 的一组基，从而
> $$\dim \bigwedge^k V^* = \binom{n}{k}.$$
>
> **证明思路**：**线性无关性**：设 $\sum_{i_1 < \cdots < i_k} c_{i_1 \cdots i_k}\, e^{i_1} \wedge \cdots \wedge e^{i_k} = 0$，对任意严格递增指标组 $(j_1, \ldots, j_k)$ 代入基向量 $(e_{j_1}, \ldots, e_{j_k})$，利用 $1$-形式楔积与行列式的关系（楔积作用于基向量给出 $\pm 1$ 或 $0$），可得各系数均为零。**生成性**：任意 $\omega \in \bigwedge^k V^*$ 是多线性交替映射，由多线性性在基向量处完全确定，展开后恰好是 $\mathcal{B}_k$ 的线性组合。

## 分量表示

<!-- exterior_form_components -->
> [!Proposition]
> **外形式的分量表示 Component Representation**：在上述基下，任意 $k$-形式 $\omega \in \bigwedge^k V^*$ 可唯一地写成
> $$\omega = \sum_{1 \leq i_1 < \cdots < i_k \leq n} \omega_{i_1 \cdots i_k}\, e^{i_1} \wedge \cdots \wedge e^{i_k},$$
> 其中分量为
> $$\omega_{i_1 \cdots i_k} = \omega(e_{i_1}, \ldots, e_{i_k}).$$
> 若去掉求和的严格递增限制，可等价地写为（爱因斯坦求和约定）：
> $$\omega = \frac{1}{k!}\, \omega_{i_1 \cdots i_k}\, e^{i_1} \wedge \cdots \wedge e^{i_k},$$
> 其中对所有指标 $i_1, \ldots, i_k$ 求和，$\omega_{i_1 \cdots i_k}$ 为关于所有指标完全反对称的分量。

> **注**：$\omega_{i_1 \cdots i_k}$ 的完全反对称性（完全交替性）是外形式定义的体现：交换任意两个指标，分量变号。这与行列式的多线性交替性是同一结构。
