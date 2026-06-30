# 反射子范畴与局部化

## 反射子范畴

<!-- reflective_subcategory_def -->
> [!Definition]
> **反射子范畴 Reflective Subcategory**：设 $\mathcal{D} \subseteq \mathcal{C}$ 为满子范畴，$\iota: \mathcal{D} \hookrightarrow \mathcal{C}$ 为包含函子。若 $\iota$ 有**左伴随** $r: \mathcal{C} \to \mathcal{D}$（$r \dashv \iota$，即 $\mathrm{Hom}_{\mathcal{D}}(r(A), D) \cong \mathrm{Hom}_{\mathcal{C}}(A, \iota(D))$），则称 $\mathcal{D}$ 为 $\mathcal{C}$ 的**反射子范畴**，$r$ 称为**反射函子**（reflector），伴随的单位 $\eta_A: A \to \iota(r(A))$ 称为 $A$ 的**反射**（reflection）。

<!-- coreflective_subcategory_def -->
> [!Definition]
> **余反射子范畴 Coreflective Subcategory**：若包含函子 $\iota: \mathcal{D} \hookrightarrow \mathcal{C}$ 有**右伴随**（$\iota \dashv c$），则称 $\mathcal{D}$ 为 $\mathcal{C}$ 的**余反射子范畴**，$c$ 称为**余反射函子**（coreflector）。

## 反射子范畴的性质

<!-- reflective_subcategory_properties -->
> [!Theorem]
> **反射子范畴的性质 Properties of Reflective Subcategory**：设 $\mathcal{D}$ 为 $\mathcal{C}$ 的反射子范畴，$r \dashv \iota$。则：
> 1. $\mathcal{D}$ 在 $\mathcal{C}$ 中的极限（若存在）等于在 $\mathcal{C}$ 中的极限（因为 $\iota$ 保持极限，RAPL）；
> 2. $\mathcal{D}$ 中的余极限为 $r$ 作用于 $\mathcal{C}$ 中对应余极限：$\operatorname{colim}^{\mathcal{D}} D \cong r(\operatorname{colim}^{\mathcal{C}} D)$；
> 3. 余单位 $\varepsilon: r \circ \iota \xRightarrow{\sim} \mathrm{Id}_{\mathcal{D}}$ 是自然同构（因为包含函子全忠实）；
> 4. $r$ 的本质像为 $\mathcal{D}$，且 $r$ 本质满。
>
> **证明思路**：（3）：对 $D \in \mathrm{Ob}(\mathcal{D})$，$\varepsilon_D: r(\iota(D)) \to D$ 由 $\iota$ 全忠实及 $r \dashv \iota$ 的伴随同构 $\mathrm{Hom}(r(\iota(D)), D) \cong \mathrm{Hom}(\iota(D), \iota(D))$ 对应于 $\mathrm{id}_{\iota(D)}$ 给出，利用三角恒等式可证它是同构。

## 反射子范畴的例子

<!-- reflective_example_ab_in_grp -->
> [!Example]+
> **阿贝尔群是群的反射子范畴**：$\mathbf{Ab} \subseteq \mathbf{Grp}$ 为满子范畴。阿贝尔化函子 $(-)^{\mathrm{ab}}: \mathbf{Grp} \to \mathbf{Ab}$（$G \mapsto G/[G,G]$）是包含函子的左伴随，商同态 $G \twoheadrightarrow G^{\mathrm{ab}}$ 是反射单位：
> $$
> \mathrm{Hom}_{\mathbf{Ab}}(G^{\mathrm{ab}}, A) \cong \mathrm{Hom}_{\mathbf{Grp}}(G, A).
> $$

<!-- reflective_example_sheaf -->
> [!Example]+
> **层是预层的反射子范畴**：层范畴 $\mathrm{Sh}(\mathcal{C}) \subseteq \mathrm{PSh}(\mathcal{C})$ 为满子范畴。层化函子 $\mathbf{a}: \mathrm{PSh}(\mathcal{C}) \to \mathrm{Sh}(\mathcal{C})$ 是包含的左伴随：
> $$
> \mathrm{Hom}_{\mathrm{Sh}}(\mathbf{a}(P), F) \cong \mathrm{Hom}_{\mathrm{PSh}}(P, \iota(F)).
> $$

<!-- reflective_example_haus_in_top -->
> [!Example]+
> **Hausdorff 空间是 $\mathbf{Top}$ 的反射子范畴**：$\mathbf{Haus} \subseteq \mathbf{Top}$ 为满子范畴。Hausdorff 化函子（将拓扑空间商去最粗使其 Hausdorff 的等价关系）是包含的左伴随。

## 范畴的局部化简介

<!-- localization_def -->
> [!Definition]
> **范畴的局部化 Localization of a Category**：设 $\mathcal{C}$ 为范畴，$W \subseteq \mathrm{Mor}(\mathcal{C})$ 为一类态射（称为**弱等价**）。$\mathcal{C}$ 对 $W$ 的**局部化**是一对 $(\mathcal{C}[W^{-1}], \gamma: \mathcal{C} \to \mathcal{C}[W^{-1}])$，其中 $\mathcal{C}[W^{-1}]$ 为范畴，$\gamma$ 为函子，使得：
> - $W$ 中每个态射在 $\gamma$ 作用下成为同构；
> - **泛性质**：对任意将 $W$ 映为同构的函子 $F: \mathcal{C} \to \mathcal{D}$，存在唯一（在唯一同构意义下）的函子 $\bar{F}: \mathcal{C}[W^{-1}] \to \mathcal{D}$ 使得 $\bar{F} \circ \gamma = F$。

<!-- localization_reflective_connection -->
> [!Theorem]
> **局部化与反射子范畴的联系**：若 $\mathcal{D}$ 是 $\mathcal{C}$ 的反射子范畴，反射为 $r: \mathcal{C} \to \mathcal{D}$，则 $\mathcal{D} \simeq \mathcal{C}[W^{-1}]$，其中 $W$ 是被 $r$ 映为同构的全体态射（即 $W = \{f \in \mathrm{Mor}(\mathcal{C}) \mid r(f) \text{ 为同构}\}$）。
>
> **证明思路**：泛性质由 $r$ 是左伴随（保持余极限）和 $\mathcal{D}$ 是反射子范畴的结构给出。

<!-- localization_example -->
> [!Example]+
> **局部化的例子**：
> - 环 $R$ 关于乘法子集 $S$ 的模范畴局部化：$R\text{-}\mathbf{Mod}[S^{-1}] \simeq S^{-1}R\text{-}\mathbf{Mod}$；
> - 同伦范畴：拓扑空间范畴 $\mathbf{Top}$ 关于弱同伦等价的局部化是同伦范畴 $\mathbf{Ho}(\mathbf{Top})$；
> - 导出范畴：链复形范畴关于拟同构的局部化为导出范畴 $D(\mathcal{A})$（同调代数的核心工具）。
