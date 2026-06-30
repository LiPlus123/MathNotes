# 层

## 层的公理

<!-- sheaf_def -->
> [!Definition]
> **层 Sheaf**：设 $X$ 是拓扑空间，$\mathcal{F}$ 是 $X$ 上取值于 $\mathbf{Set}$（或 $\mathbf{Ab}$、$\mathbf{Ring}$ 等）的预层。称 $\mathcal{F}$ 是**层**（sheaf），若对 $X$ 的任意开集 $U$ 及 $U$ 的任意开覆盖 $\{U_i\}_{i \in I}$（即 $U = \bigcup_{i \in I} U_i$），满足以下两条公理：
>
> **（S1）分离性公理（Locality / Separation）**：若 $s, t \in \mathcal{F}(U)$ 满足对所有 $i$，$s|_{U_i} = t|_{U_i}$，则 $s = t$；
>
> **（S2）黏合公理（Gluing）**：若给定截面族 $s_i \in \mathcal{F}(U_i)$（$i \in I$），满足相容条件：对所有 $i, j$，
> $$
> s_i|_{U_i \cap U_j} = s_j|_{U_i \cap U_j},
> $$
> 则存在截面 $s \in \mathcal{F}(U)$，使得对所有 $i$，$s|_{U_i} = s_i$。

> **注**：分离性公理表明层截面由局部数据唯一确定（全局截面被局部截面决定）；黏合公理表明相容的局部数据可以黏合为全局数据。合并两条，层的截面完全由"局部-整体"原则刻画。

<!-- sheaf_as_equalizer -->
> [!Theorem]
> **层条件的等化子刻画**：预层 $\mathcal{F}$ 是层，当且仅当对任意开集 $U$ 及开覆盖 $\{U_i\}$，以下序列在 $\mathbf{Set}$（或对应范畴）中**正合**（即 $e$ 是等化子）：
> $$
> \mathcal{F}(U) \xrightarrow{e} \prod_{i} \mathcal{F}(U_i) \underset{p_2}{\overset{p_1}{\rightrightarrows}} \prod_{i,j} \mathcal{F}(U_i \cap U_j),
> $$
> 其中 $e(s) = (s|_{U_i})_i$，$p_1((s_i)_i) = (s_i|_{U_i \cap U_j})_{i,j}$，$p_2((s_i)_i) = (s_j|_{U_i \cap U_j})_{i,j}$。
>
> **证明思路**：分离性公理等价于 $e$ 单射（即 $p_1 \circ e = p_2 \circ e$ 且 $e$ 单）；黏合公理等价于 $e$ 是等化子。

## 层与预层的对比

<!-- sheaf_vs_presheaf -->
> **注**：层与预层的主要区别：
> - 预层只有"限制"结构（全局到局部）；
> - 层额外要求"黏合"结构（局部到全局），且唯一（分离性）。
>
> 任何层都是预层，但反之不然。

## 例子

<!-- sheaf_examples -->
> [!Example]+
> **层的例子**：
> 1. **连续函数层 $\mathcal{C}^0_X$**：$\mathcal{C}^0_X(U) = \{f: U \to \mathbb{R} \mid f \text{ 连续}\}$，限制为函数限制。分离性：函数在每个覆盖片上相等则全局相等；黏合：在交集上相容的连续函数可黏合为连续函数（拓扑空间的基本性质）。
> 2. **光滑函数层 $\mathcal{C}^\infty_X$**（光滑流形 $X$）：光滑函数在开集上构成层，证明同上（光滑性是局部性质）。
> 3. **正则函数层 $\mathcal{O}_X$**（代数簇或概型 $X$）：正则（或全纯）函数构成层，是代数几何的核心对象。
> 4. **常值层 $\underline{A}^+$**：将常值预层 $\underline{A}$ 层化后得到的层（见 [[sheafification|层化]]）。对连通局部道路连通空间 $X$，$\underline{A}^+(U)$ 为 $U$ 的连通分量上取值于 $A$ 的局部常值函数全体。
> 5. **直和分解的层**：若 $X = U \sqcup V$（不交开分解），则 $\mathcal{F}(X) \cong \mathcal{F}(U) \times \mathcal{F}(V)$（由黏合公理与分离性的乘积形式）。

<!-- sheaf_of_sections_def -->
> [!Definition]
> **截面层 Sheaf of Sections**：设 $p: E \to X$ 是连续映射。定义预层 $\Gamma(p)$：
> $$
> \Gamma(p)(U) = \{s: U \to E \mid p \circ s = \mathrm{id}_U, \; s \text{ 连续}\},
> $$
> 限制为映射的限制。则 $\Gamma(p)$ 是 $X$ 上的**截面层**（sheaf of sections）。这是层的几何来源：层对应于"局部同构于纤维丛的对象"（étalé 空间）。
