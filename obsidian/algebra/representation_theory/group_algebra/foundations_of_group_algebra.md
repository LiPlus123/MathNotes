# 群代数的基本概念 Foundations of Group Algebra

<!-- group_algebra_definition -->
> [!Definition]
> **群代数 Group Algebra**：设 $G$ 是有限群，$F$ 是域。以 $G$ 的元素为基构造 $F$-线性空间
> $$FG = \bigoplus_{g \in G} F \cdot e_g,$$
> 其中 $\{e_g \mid g \in G\}$ 是形式基。$FG$ 中的元素称为**形式线性组合**（或 $G$ 上的 $F$-值函数），写作
> $$a = \sum_{g \in G} a_g \, e_g, \quad a_g \in F.$$
> 在 $FG$ 上定义乘法（由基元素的乘法线性延拓）：
> $$e_g \cdot e_h = e_{gh}, \quad g, h \in G,$$
> 即
> $$\left(\sum_{g \in G} a_g \, e_g\right) \cdot \left(\sum_{h \in G} b_h \, e_h\right) = \sum_{g, h \in G} a_g b_h \, e_{gh} = \sum_{k \in G} \left(\sum_{g \in G} a_g b_{g^{-1}k}\right) e_k.$$
> 配合 $F$-线性结构，$FG$ 成为一个**结合 $F$-代数**，称为 $G$ 的**群代数**（或**群环**）。

> **注**：群代数 $FG$ 作为 $F$-线性空间，维数等于 $|G|$。乘法单位元是 $e_e$（群单位元对应的基向量），通常直接写作 $1$。

<!-- group_algebra_as_algebra -->
> [!Proposition]
> **群代数的代数结构 Algebraic Structure of Group Algebra**：群代数 $FG$ 是一个结合的幺 $F$-代数，满足：
> 1. **结合性**：$(ab)c = a(bc)$ 对所有 $a, b, c \in FG$ 成立（由 $G$ 的结合律保证）；
> 2. **单位元**：$e_e \in FG$ 是乘法单位元；
> 3. **$F$-双线性**：$(\lambda a) b = \lambda (ab) = a(\lambda b)$ 对所有 $\lambda \in F$，$a, b \in FG$ 成立。

> **证明思路**：结合性由 $e_g \cdot (e_h \cdot e_k) = e_{g(hk)} = e_{(gh)k} = (e_g \cdot e_h) \cdot e_k$ 直接验证，再线性延拓即得。

<!-- group_algebra_invertible_elements -->
> [!Proposition]
> **基元素的可逆性 Invertibility of Basis Elements**：对每个 $g \in G$，基元素 $e_g \in FG$ 是可逆的，其逆为 $e_{g^{-1}}$，即
> $$e_g \cdot e_{g^{-1}} = e_{gg^{-1}} = e_e = 1_{FG}.$$
> 因此 $G$ 自然嵌入 $FG$ 的单位群 $FG^\times$ 中，嵌入映射为 $g \mapsto e_g$。

<!-- group_algebra_commutativity -->
> [!Proposition]
> **群代数的交换性 Commutativity of Group Algebra**：$FG$ 是交换代数当且仅当 $G$ 是 Abel 群。

> **证明思路**：若 $G$ 是 Abel 群，则对所有 $g, h \in G$ 有 $gh = hg$，从而 $e_g e_h = e_{gh} = e_{hg} = e_h e_g$，线性延拓后 $FG$ 是交换的。反之，若存在 $g, h \in G$ 使 $gh \neq hg$，则 $e_g e_h = e_{gh} \neq e_{hg} = e_h e_g$，故 $FG$ 不交换。

<!-- group_algebra_augmentation -->
> [!Definition]
> **增广映射 Augmentation Map**：定义 $F$-代数同态
> $$\varepsilon: FG \to F, \quad \varepsilon\!\left(\sum_{g \in G} a_g \, e_g\right) = \sum_{g \in G} a_g.$$
> 称 $\varepsilon$ 为 $FG$ 的**增广映射**（augmentation map），其核
> $$I = \ker \varepsilon = \left\{\sum_{g \in G} a_g \, e_g \;\middle|\; \sum_{g \in G} a_g = 0\right\}$$
> 称为 $FG$ 的**增广理想**（augmentation ideal）。
