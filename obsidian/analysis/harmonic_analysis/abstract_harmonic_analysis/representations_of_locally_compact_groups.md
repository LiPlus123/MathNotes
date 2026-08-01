# 局部紧群的表示

## 酉表示、正定函数与 GNS 构造

<!-- abstract_unitary_representation_definition -->
> [!Definition]
> **酉表示 Unitary Representation**：局部紧群 $G$ 的酉表示是在 Hilbert 空间 $\mathcal{H}$ 上的强连续同态
> $$
> \pi:G\longrightarrow\mathcal{U}(\mathcal{H}),
> $$
> 即 $\pi(gh)=\pi(g)\pi(h)$，且对每个 $v\in\mathcal{H}$，映射 $g\mapsto\pi(g)v$ 连续。

<!-- abstract_irreducible_representation_definition -->
> [!Definition]
> **不可约酉表示 Irreducible Unitary Representation**：若 $\mathcal{H}$ 没有非平凡闭 $\pi(G)$-不变子空间，则称 $\pi$ 不可约。两个酉表示若由酉互 intertwining 算子等价，则视为同一个不可约表示类。

<!-- abstract_schur_lemma -->
> [!Lemma]
> **Schur 引理 Schur's Lemma**：若 $\pi$ 是复 Hilbert 空间上的不可约酉表示，而有界算子 $A$ 满足
> $$
> A\pi(g)=\pi(g)A\qquad(g\in G),
> $$
> 则 $A=cI$，其中 $c\in\mathbb{C}$。更一般地，两个不等价不可约酉表示之间的有界 intertwining 算子必为零。
>
> **证明思路**：$A$ 的实部和虚部均与表示交换。利用自伴算子的谱投影保持不变，故不可约性迫使每个谱投影平凡，从而 $A$ 为标量。

<!-- abstract_induced_representation_definition -->
> [!Definition]
> **诱导表示 Induced Representation**：设 $H$ 为 $G$ 的闭子群，$\sigma$ 是 $H$ 的酉表示。$\operatorname{Ind}_H^G\sigma$ 由满足协变关系的可测函数 $F:G\to\mathcal{H}_\sigma$ 构成：
> $$
> F(gh)=\sigma(h)^{-1}F(g),
> \qquad g\in G,\ h\in H,
> $$
> 并在适当的 $G/H$ 不变或准不变测度下取平方可积完备化；$G$ 通过左平移作用。

<!-- abstract_positive_definite_function_definition -->
> [!Definition]
> **正定函数 Positive-Definite Function**：连续函数 $\varphi:G\to\mathbb{C}$ 称为正定的，若对任意 $g_1,\ldots,g_N\in G$ 及 $c_1,\ldots,c_N\in\mathbb{C}$，
> $$
> \sum_{i,j=1}^Nc_i\overline{c_j}\varphi(g_j^{-1}g_i)\geq0.
> $$
> 每个酉表示的矩阵系数 $g\mapsto\langle\pi(g)v,v\rangle$ 都是正定函数。

<!-- abstract_gns_theorem -->
> [!Theorem]
> **GNS 定理 GNS Theorem**：对每个连续正定函数 $\varphi$，存在酉表示 $\pi_\varphi$ 和循环向量 $v_\varphi$，使
> $$
> \varphi(g)=\langle\pi_\varphi(g)v_\varphi,v_\varphi\rangle.
> $$
> 该三元组在酉等价意义下唯一。
>
> **证明思路**：在线性空间 $\mathbb{C}[G]$ 上以 $\varphi(g_j^{-1}g_i)$ 定义半内积，除去零范数元后完备化；群的左平移诱导等距算子，单位元对应向量是循环向量。

> **来源**：Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapters 4--6；George W. Mackey, *Unitary Group Representations in Physics, Probability, and Number Theory*。
