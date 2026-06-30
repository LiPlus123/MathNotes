# 伴随函子定理

## 解集条件

<!-- solution_set_condition -->
> [!Definition]
> **解集条件 Solution Set Condition**：设 $G: \mathcal{D} \to \mathcal{C}$ 为函子，$A \in \mathrm{Ob}(\mathcal{C})$。称 $G$ 在 $A$ 处满足**解集条件**，若存在一个**集合**（而非真类）$\{f_i: A \to G(D_i)\}_{i \in I}$，使得对任意 $D \in \mathrm{Ob}(\mathcal{D})$ 与任意 $f: A \to G(D)$，存在某个 $i \in I$、$\mathcal{D}$ 中的态射 $t: D_i \to D$，使得
> $$
> f = G(t) \circ f_i.
> $$
> 称 $G$ 满足解集条件，若对所有 $A \in \mathrm{Ob}(\mathcal{C})$ 均成立。

> **注**：解集条件是一个"小性"条件，要求"候选泛态射"可由一个集合参数化，从而避免真类所带来的集合论困难。

## 一般伴随函子定理（GAFT）

<!-- gaft -->
> [!Theorem]
> **一般伴随函子定理 General Adjoint Functor Theorem（GAFT）**：设 $\mathcal{C}$ 为完备范畴（有所有小极限），$G: \mathcal{D} \to \mathcal{C}$ 为函子。则 $G$ 有左伴随当且仅当：
> 1. $G$ **保持（小）极限**（即 $G$ 为连续函子）；
> 2. $G$ 满足**解集条件**。
>
> **证明思路**：
> - "$\Rightarrow$"：右伴随保持极限（RAPL），且对任意 $A$，逗号范畴 $(A \downarrow G)$ 有初对象（泛态射），其中初对象所在的集合即解集。
> - "$\Leftarrow$"：对每个 $A$，由解集条件取 $\{f_i: A \to G(D_i)\}$；构造对象 $D_0 = \prod_i D_i$（在 $\mathcal{D}$ 中），以及映射 $\bar{f}_0: A \to G(D_0) = G(\prod_i D_i) \cong \prod_i G(D_i)$（$G$ 保持极限）；然后在 $(A \downarrow G)$ 中取足够的等化子，构造初对象 $(F(A), \eta_A)$，即从 $A$ 到 $G$ 的泛态射，从而确定左伴随 $F(A)$。

## 特殊伴随函子定理（SAFT）

<!-- saft -->
> [!Theorem]
> **特殊伴随函子定理 Special Adjoint Functor Theorem（SAFT）**：设 $\mathcal{C}$ 为完备范畴，且：
> - **局部小**：对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，$\mathrm{Hom}(A, B)$ 为集合；
> - **well-powered**（良幂的）：每个对象的子对象类构成集合；
> - 存在**余生成集**（cogenerating set）$\mathcal{S}$：对任意 $\mathcal{C}$ 中非同构的平行态射 $f \neq g: A \to B$，存在 $S \in \mathcal{S}$ 与 $h: B \to S$ 使得 $h \circ f \neq h \circ g$。
>
> 则：**每个保持（小）极限的函子 $G: \mathcal{C} \to \mathcal{D}$（$\mathcal{D}$ 局部小）均有左伴随**。
>
> 等价地，在上述条件下，$G$ 连续即可推出 $G$ 有左伴随（解集条件自动成立）。
>
> **证明思路**：在 SAFT 的条件下，解集条件可由余生成集与 well-powered 性质自动验证：利用子对象格有界性，构造大小受控的候选泛态射集合。

## 推论与应用

<!-- gaft_application -->
> [!Corollary]
> **自由函子的存在性 Existence of Free Functors via GAFT**：设 $U: \mathcal{D} \to \mathbf{Set}$ 为忘却函子，$\mathcal{D}$ 完备且 $U$ 连续（保持极限），若 $U$ 满足解集条件，则 $U$ 有左伴随（自由函子 $F \dashv U$）。这统一说明了自由群、自由模、自由代数等的存在性。

<!-- saft_application -->
> [!Corollary]
> **SAFT 的应用 Applications of SAFT**：
> - $\mathbf{Set}$ 完备、局部小、well-powered，且 $\{\{0,1\}\}$ 为余生成集（Hom 函子到 $\{0,1\}$ 分离态射）；故每个连续函子 $G: \mathbf{Set} \to \mathcal{D}$ 有左伴随；
> - $\mathbf{Ab}$ 完备、局部小、well-powered，$\{\mathbb{Q}/\mathbb{Z}\}$ 为余生成集（Pontryagin 对偶）；故连续函子自 $\mathbf{Ab}$ 有左伴随；
> - 预层范畴 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$（$\mathcal{C}$ 小）完备且余完备，且 SAFT 的条件满足，故层化函子的存在性可由 SAFT 推出。

## 例子

<!-- adjoint_functor_theorem_example_sheafification -->
> [!Example]+
> **层化函子的存在性（GAFT 视角）**：对预层范畴 $\mathrm{PSh}(\mathcal{C})$，包含函子 $\iota: \mathrm{Sh}(\mathcal{C}) \hookrightarrow \mathrm{PSh}(\mathcal{C})$ 是连续的（层范畴中的极限逐点计算，与预层的极限一致）。$\mathrm{PSh}(\mathcal{C})$ 完备，$\iota$ 满足解集条件（可用 Grothendieck 拓扑给出解集）。由 GAFT，$\iota$ 有左伴随，即**层化函子** $\mathbf{a}$ 存在。

<!-- adjoint_functor_theorem_example_completion -->
> [!Example]+
> **完备化函子的存在性**：对度量空间范畴 $\mathbf{Met}$（以等距映射为态射），完备度量空间的包含 $\mathbf{CMet} \hookrightarrow \mathbf{Met}$ 是连续函子且满足解集条件，由 GAFT 知完备化函子（左伴随）存在。
