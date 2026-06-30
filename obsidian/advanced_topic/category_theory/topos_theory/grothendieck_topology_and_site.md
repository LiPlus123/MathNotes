# Grothendieck 拓扑与景

## 筛

<!-- sieve_def -->
> [!Definition]
> **筛 Sieve**：设 $\mathcal{C}$ 是小范畴，$C \in \mathrm{Ob}(\mathcal{C})$。$C$ 上的一个**筛**（sieve）是 $\mathrm{Hom}(-, C)$（反变 Hom 函子 $h_C: \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$）的一个**子预层**（sub-presheaf）$S \subseteq h_C$，即：
> - $S$ 是态射族 $\{f: D \to C \mid f \in S(D)\}$；
> - 对任意 $f: D \to C$ 在 $S$ 中，及任意 $g: E \to D$，复合 $f \circ g: E \to C$ 也在 $S$ 中（对复合封闭）。
>
> 等价地，筛是 $\{f: D \to C\}_{D \in \mathcal{C}}$ 中关于前复合封闭的子集族。

> **注**：筛是拓扑空间中"开覆盖"概念的推广：在 $\mathcal{O}(X)$（开集范畴）中，$U$ 上的筛对应于 $U$ 的开子集族且对包含封闭，最大筛对应 $U$ 自身（即"$U$ 的所有子开集"）。

<!-- maximal_sieve -->
> [!Definition]
> **最大筛 Maximal Sieve**：$C$ 上的**最大筛**（maximal sieve）$t_C = h_C$ 是所有到 $C$ 的态射构成的筛（等于 $\mathrm{Hom}(-, C)$ 本身）。

## Grothendieck 拓扑

<!-- grothendieck_topology_def -->
> [!Definition]
> **Grothendieck 拓扑 Grothendieck Topology**：设 $\mathcal{C}$ 是小范畴。**Grothendieck 拓扑**（Grothendieck topology）是指派：对每个 $C \in \mathrm{Ob}(\mathcal{C})$，给出一族筛 $J(C)$（称为 $C$ 上的**覆盖筛**，covering sieves），满足：
> 1. **最大筛公理**（Maximality）：最大筛 $t_C \in J(C)$；
> 2. **稳定性公理**（Stability / Base Change）：若 $S \in J(C)$ 且 $f: D \to C$ 是态射，则 $f^*(S) = \{g: E \to D \mid f \circ g \in S\} \in J(D)$；
> 3. **传递性公理**（Transitivity / Local Character）：若 $S \in J(C)$ 且 $R$ 是 $C$ 上的筛，使得对所有 $f: D \to C$ 属于 $S$，均有 $f^*(R) \in J(D)$，则 $R \in J(C)$。

## 景

<!-- site_def -->
> [!Definition]
> **景 Site**：**景**（site）是一对 $(\mathcal{C}, J)$，其中 $\mathcal{C}$ 是小范畴，$J$ 是 $\mathcal{C}$ 上的 Grothendieck 拓扑。

<!-- site_examples -->
> [!Example]+
> **景的例子**：
> 1. **开集景**：$(\mathcal{O}(X), J_{\mathrm{open}})$，其中 $\mathcal{O}(X)$ 为拓扑空间 $X$ 的开集范畴，$J_{\mathrm{open}}(U)$ 为 $U$ 的所有开覆盖生成的筛。这是最经典的景。
> 2. **平凡景（离散拓扑）**：$J_{\mathrm{triv}}(C) = \{t_C\}$（仅含最大筛），对应层即预层，$\mathrm{Sh}(\mathcal{C}, J_{\mathrm{triv}}) = \mathrm{PSh}(\mathcal{C})$；
> 3. **密实拓扑（atomic topology）**：每个非空筛都是覆盖筛，对应原子拓扑；
> 4. **Zariski 景**：仿射概型范畴配以 Zariski 覆盖（有理开集覆盖），是代数几何中的基本景；
> 5. **étale 景**：概型范畴配以 étale 态射覆盖，用于 étale 上同调。

## 景上的层

<!-- sheaf_on_site_def -->
> [!Definition]
> **景上的层 Sheaf on a Site**：设 $(\mathcal{C}, J)$ 是景，$\mathcal{F}: \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ 是预层。$\mathcal{F}$ 称为 $(\mathcal{C}, J)$ 上的**层**（sheaf），若对每个覆盖筛 $S \in J(C)$，以下等化子成立：
> $$
> \mathcal{F}(C) \xrightarrow{e} \prod_{f \in S} \mathcal{F}(\mathrm{dom}(f)) \underset{p_2}{\overset{p_1}{\rightrightarrows}} \prod_{f, g \text{ 可复合于 } S} \mathcal{F}(\mathrm{dom}(g)),
> $$
> 即 $\mathcal{F}(C) \cong \mathrm{Match}(S, \mathcal{F})$（相容截面的集合）。

## Grothendieck 拓扑斯

<!-- grothendieck_topos_def -->
> [!Definition]
> **Grothendieck 拓扑斯 Grothendieck Topos**：景 $(\mathcal{C}, J)$ 上所有层及层态射（自然变换）构成的范畴
> $$
> \mathrm{Sh}(\mathcal{C}, J)
> $$
> 称为**Grothendieck 拓扑斯**（Grothendieck topos）。它是**初等拓扑斯**（见 [[elementary_topos|初等拓扑斯]]），即具有有限极限、笛卡尔闭性与子对象分类子。

> **注**：Grothendieck 拓扑斯推广了层范畴 $\mathrm{Sh}(X)$（取 $\mathcal{C} = \mathcal{O}(X)$，$J$ 为开覆盖拓扑）和预层范畴 $\mathrm{PSh}(\mathcal{C})$（取平凡拓扑）。每个 Grothendieck 拓扑斯都是初等拓扑斯，但并非每个初等拓扑斯都是 Grothendieck 拓扑斯（Giraud 定理给出了精确判据）。

<!-- giraud_theorem -->
> [!Theorem]
> **Giraud 定理（特征定理）Giraud's Theorem**：范畴 $\mathcal{E}$ 是 Grothendieck 拓扑斯，当且仅当：
> 1. $\mathcal{E}$ 有所有小余极限，且有限极限与过滤余极限交换；
> 2. $\mathcal{E}$ 有一个**小生成子**（small generating set）；
> 3. 余积是不相交的（disjoint coproducts）；
> 4. 等价关系是有效的（effective equivalence relations，商等价关系存在且是有效的）。
>
> **证明思路**：给定 Grothendieck 拓扑斯 $\mathrm{Sh}(\mathcal{C}, J)$，可验证四条性质；反之，满足四条性质的 $\mathcal{E}$ 可选取小生成子 $\mathcal{C} \subseteq \mathcal{E}$ 配以适当的 Grothendieck 拓扑，使得 $\mathcal{E} \simeq \mathrm{Sh}(\mathcal{C}, J)$。
