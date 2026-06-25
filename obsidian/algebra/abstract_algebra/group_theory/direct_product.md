# 直积

## 外直积

<!-- external_direct_product_def -->
> [!Definition]
> **外直积 External Direct Product**：设 $G_1, G_2, \ldots, G_n$ 为群，定义其**外直积**为笛卡尔积集合
> $$
> G_1 \times G_2 \times \cdots \times G_n = \{(g_1, g_2, \ldots, g_n) \mid g_i \in G_i\}
> $$
> 上的分量乘法：
> $$
> (g_1, \ldots, g_n) \cdot (h_1, \ldots, h_n) = (g_1 h_1, \ldots, g_n h_n)
> $$
> 这使得 $G_1 \times \cdots \times G_n$ 构成一个群，单位元为 $(e_1, \ldots, e_n)$，$(g_1, \ldots, g_n)$ 的逆元为 $(g_1^{-1}, \ldots, g_n^{-1})$。

<!-- external_direct_product_order -->
> [!Theorem]
> **外直积的阶 Order of External Direct Product**：若 $G_1, \ldots, G_n$ 均为有限群，则
> $$
> |G_1 \times \cdots \times G_n| = |G_1| \cdot |G_2| \cdots |G_n|
> $$

<!-- element_order_in_direct_product -->
> [!Theorem]
> **直积中元素的阶 Order of Element in Direct Product**：在 $G_1 \times G_2$ 中，元素 $(g_1, g_2)$ 的阶为
> $$
> \mathrm{ord}(g_1, g_2) = \mathrm{lcm}(\mathrm{ord}(g_1), \mathrm{ord}(g_2))
> $$
>
> **证明思路**：$(g_1, g_2)^n = (g_1^n, g_2^n) = (e_1, e_2)$ 当且仅当 $\mathrm{ord}(g_1) \mid n$ 且 $\mathrm{ord}(g_2) \mid n$，即 $\mathrm{lcm}(\mathrm{ord}(g_1), \mathrm{ord}(g_2)) \mid n$。

## 内直积

<!-- internal_direct_product_def -->
> [!Definition]
> **内直积 Internal Direct Product**：设 $G$ 为群，$H, K \trianglelefteq G$。若：
> 1. $G = HK$（即每个元素均可写成 $hk$，$h \in H$，$k \in K$）；
> 2. $H \cap K = \{e\}$；
>
> 则称 $G$ 为 $H$ 与 $K$ 的**内直积**。

<!-- internal_external_isomorphism -->
> [!Theorem]
> **内外直积同构 Internal-External Direct Product Isomorphism**：设 $G$ 为 $H$ 与 $K$ 的内直积，则 $G \cong H \times K$。
>
> **证明思路**：定义 $\varphi: H \times K \to G$，$(h, k) \mapsto hk$；首先证明 $H$ 与 $K$ 中元素可交换（$hk = kh$）：由 $hkh^{-1}k^{-1} = h(kh^{-1}k^{-1}) \in H$ 且 $hkh^{-1}k^{-1} = (hkh^{-1})k^{-1} \in K$，故 $hkh^{-1}k^{-1} \in H \cap K = \{e\}$；然后验证 $\varphi$ 是双射群同态。

<!-- internal_direct_product_generalization -->
> [!Definition]
> **多子群内直积 Internal Direct Product of Multiple Subgroups**：设 $H_1, \ldots, H_n \trianglelefteq G$，若：
> 1. $G = H_1 H_2 \cdots H_n$；
> 2. 对每个 $i$，$H_i \cap (H_1 \cdots H_{i-1} H_{i+1} \cdots H_n) = \{e\}$；
>
> 则 $G \cong H_1 \times \cdots \times H_n$。

## 有限生成阿贝尔群基本结构定理

<!-- finitely_generated_abelian_group_theorem -->
> [!Theorem]
> **有限生成阿贝尔群基本结构定理 Fundamental Theorem of Finitely Generated Abelian Groups**：每个有限生成的阿贝尔群 $G$ 均同构于以下形式的直积：
> $$
> G \cong \mathbb{Z}^r \times \mathbb{Z}/n_1\mathbb{Z} \times \mathbb{Z}/n_2\mathbb{Z} \times \cdots \times \mathbb{Z}/n_k\mathbb{Z}
> $$
> 其中 $r \geq 0$ 为**秩**（自由部分的秩），$n_1 \mid n_2 \mid \cdots \mid n_k$ 且 $n_i \geq 2$（**不变因子**）。此分解在不计直积因子顺序的意义下唯一。

<!-- finite_abelian_group_theorem -->
> [!Corollary]
> **有限阿贝尔群基本定理 Fundamental Theorem of Finite Abelian Groups**：每个有限阿贝尔群均同构于循环群的直积：
> $$
> G \cong \mathbb{Z}/n_1\mathbb{Z} \times \cdots \times \mathbb{Z}/n_k\mathbb{Z}
> $$
> 其中 $n_1 \mid n_2 \mid \cdots \mid n_k$，且此分解（以不变因子形式）唯一。等价地，也可以写成**初等因子形式**（每个因子为素数幂次循环群的直积）：
> $$
> G \cong \mathbb{Z}/p_1^{a_1}\mathbb{Z} \times \cdots \times \mathbb{Z}/p_m^{a_m}\mathbb{Z}
> $$
> 其中 $p_i$ 为素数（不必不同），此分解也唯一。

<!-- cyclic_direct_product_criterion -->
> [!Theorem]
> **直积为循环群的条件 Criterion for Direct Product to be Cyclic**：$\mathbb{Z}/m\mathbb{Z} \times \mathbb{Z}/n\mathbb{Z} \cong \mathbb{Z}/mn\mathbb{Z}$ 当且仅当 $\gcd(m, n) = 1$。
>
> **证明思路**：$(1, 1)$ 的阶为 $\mathrm{lcm}(m, n)$；$\gcd(m, n) = 1$ 当且仅当 $\mathrm{lcm}(m, n) = mn = |\mathbb{Z}/m\mathbb{Z} \times \mathbb{Z}/n\mathbb{Z}|$，故 $(1, 1)$ 为生成元。
