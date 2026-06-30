# 函子的性质

## 忠实、满、全忠实

<!-- faithful_functor_def -->
> [!Definition]
> **忠实函子 Faithful Functor**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**忠实**，若对任意对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，由 $F$ 诱导的映射
> $$
> F_{A, B}: \mathrm{Hom}_{\mathcal{C}}(A, B) \to \mathrm{Hom}_{\mathcal{D}}(F(A), F(B))
> $$
> 是单射。

<!-- full_functor_def -->
> [!Definition]
> **满函子 Full Functor**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**满**，若对任意对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，$F_{A, B}$ 是满射。

<!-- fully_faithful_functor_def -->
> [!Definition]
> **全忠实函子 Fully Faithful Functor**：若函子 $F: \mathcal{C} \to \mathcal{D}$ 既忠实又满，即每个 $F_{A, B}$ 都是双射，则称 $F$ 为**全忠实函子**。

> **注**：忠实函子未必在对象上是单射；满函子未必在对象上是满射。例如忘却函子 $U: \mathbf{Grp} \to \mathbf{Set}$ 忠实但不满（不是所有映射都是同态）；包含函子 $\mathbf{Ab} \hookrightarrow \mathbf{Grp}$ 是全忠实的（满子范畴的包含总是全忠实），但在对象上是真包含。

## 本质满

<!-- essentially_surjective_functor_def -->
> [!Definition]
> **本质满函子 Essentially Surjective Functor**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**本质满**（或**在同构意义下满**），若对每个对象 $D \in \mathrm{Ob}(\mathcal{D})$，存在对象 $C \in \mathrm{Ob}(\mathcal{C})$ 使得 $F(C) \cong D$。

## 保持与反射

<!-- preserve_reflect_property_def -->
> [!Definition]
> **保持、反射性质 Preservation and Reflection**：设 $\mathbf{P}$ 是关于态射的某种性质（如"是单态射""是满态射""是同构"），$F: \mathcal{C} \to \mathcal{D}$ 为函子。
> - 称 $F$ **保持** $\mathbf{P}$，若对每个具有性质 $\mathbf{P}$ 的态射 $f \in \mathcal{C}$，$F(f) \in \mathcal{D}$ 也具有性质 $\mathbf{P}$；
> - 称 $F$ **反射** $\mathbf{P}$，若反之：每当 $F(f)$ 具有性质 $\mathbf{P}$，$f$ 也具有性质 $\mathbf{P}$。
>
> 类似地定义对象性质的保持与反射（例如"是初对象""是终对象""是零对象"等）。

<!-- functor_preserves_iso_again -->
> [!Theorem]
> **函子总保持同构 Functors Always Preserve Isomorphisms**：任何函子 $F: \mathcal{C} \to \mathcal{D}$ 保持"是同构"。
>
> **证明思路**：见 [[definition_of_functor|函子的定义]] 中关于「函子保持同构」的论证。

<!-- fully_faithful_reflects_iso -->
> [!Theorem]
> **全忠实函子反射同构 Fully Faithful Functor Reflects Isomorphisms**：设 $F: \mathcal{C} \to \mathcal{D}$ 全忠实。若 $f: A \to B$ 在 $\mathcal{C}$ 中使得 $F(f)$ 是 $\mathcal{D}$ 中的同构，则 $f$ 是 $\mathcal{C}$ 中的同构。
>
> **证明思路**：设 $F(f)^{-1} \in \mathrm{Hom}_{\mathcal{D}}(F(B), F(A))$。由 $F$ 满，存在 $g \in \mathrm{Hom}_{\mathcal{C}}(B, A)$ 使 $F(g) = F(f)^{-1}$。则 $F(g \circ f) = F(g) \circ F(f) = \mathrm{id}_{F(A)} = F(\mathrm{id}_A)$；由 $F$ 忠实，$g \circ f = \mathrm{id}_A$。同理 $f \circ g = \mathrm{id}_B$。

<!-- faithful_reflects_mono_epi -->
> [!Theorem]
> **忠实函子反射单态射与满态射 Faithful Functor Reflects Mono / Epi**：设 $F: \mathcal{C} \to \mathcal{D}$ 忠实。若 $F(f)$ 是 $\mathcal{D}$ 中的单态射（resp. 满态射），则 $f$ 是 $\mathcal{C}$ 中的单态射（resp. 满态射）。
>
> **证明思路**：设 $F(f)$ 单，$f \circ g_1 = f \circ g_2$，应用 $F$ 得 $F(f) \circ F(g_1) = F(f) \circ F(g_2)$；由 $F(f)$ 单得 $F(g_1) = F(g_2)$；由 $F$ 忠实得 $g_1 = g_2$。满态射情形对偶。

## 范畴的同构

<!-- isomorphism_of_categories_def -->
> [!Definition]
> **范畴的同构 Isomorphism of Categories**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**范畴的同构**，若存在函子 $G: \mathcal{D} \to \mathcal{C}$ 使得
> $$
> G \circ F = \mathrm{Id}_{\mathcal{C}}, \qquad F \circ G = \mathrm{Id}_{\mathcal{D}}.
> $$
> 此时也说范畴 $\mathcal{C}$ 与 $\mathcal{D}$ **同构**，记作 $\mathcal{C} \cong \mathcal{D}$。

> **注**：范畴的同构是 $\mathbf{Cat}$ 范畴中作为同构态射的函子；它要求两边的复合**严格相等**，是过强的相等概念。范畴论中更自然且常用的是**范畴的等价**，将在 [[equivalence_of_categories]] 中讨论：那里只要求 $G \circ F$ 与 $\mathrm{Id}_{\mathcal{C}}$、$F \circ G$ 与 $\mathrm{Id}_{\mathcal{D}}$ 间存在**自然同构**。

<!-- iso_of_categories_characterization -->
> [!Theorem]
> **范畴同构的刻画 Characterization of Isomorphism of Categories**：函子 $F: \mathcal{C} \to \mathcal{D}$ 是范畴的同构当且仅当 $F$ 在对象上是双射，且对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，$F_{A, B}$ 是双射（即 $F$ 在对象上双射且全忠实）。
>
> **证明思路**：
> - "$\Rightarrow$"：若 $G$ 是 $F$ 的逆函子，则在对象与每个 Hom 集上 $F$ 与 $G$ 互为双射的逆，故 $F$ 在对象与每个 Hom 集上均双射。
> - "$\Leftarrow$"：在对象上构造 $G$ 为 $F$ 的对象双射的逆；在态射上，$F_{A, B}$ 双射使得我们可以定义 $G_{F(A), F(B)} := (F_{A, B})^{-1}$。验证保持恒等与复合即可。

## 函子性质的例子

<!-- functor_property_example_forgetful -->
> [!Example]+
> **忘却函子的性质**：$U: \mathbf{Grp} \to \mathbf{Set}$ 是**忠实**的（不同的群同态在底层映射上不同）但**不满**（并非每个映射都是同态）。$U$ 在对象上是满射但不是单射（不同群的底集可以相同），并且 $U$ 反射同构（$\mathbf{Grp}$ 中的同构即底层双射的同态——这一陈述需要 $U$ 反射"同构"性质，对忠实+保守的函子成立）。

<!-- functor_property_example_full_inclusion -->
> [!Example]+
> **满子范畴的包含函子全忠实**：若 $\mathcal{D} \subseteq \mathcal{C}$ 为满子范畴，则包含函子 $\iota: \mathcal{D} \hookrightarrow \mathcal{C}$ 是**全忠实**的；反过来，任何全忠实函子都是其像（构成 $\mathcal{D}$ 中的满子范畴的等价）的"嵌入"。

<!-- functor_property_example_abelianization -->
> [!Example]+
> **阿贝尔化函子的性质**：阿贝尔化函子 $(-)^{\mathrm{ab}}: \mathbf{Grp} \to \mathbf{Ab}$ 将群 $G$ 映为 $G / [G, G]$，将同态 $\varphi: G \to H$ 映为诱导的 $\varphi^{\mathrm{ab}}: G^{\mathrm{ab}} \to H^{\mathrm{ab}}$。它**本质满**（每个阿贝尔群 $A$ 满足 $A^{\mathrm{ab}} \cong A$），但既不忠实（许多不同同态在阿贝尔化后相同）也不满。

<!-- functor_property_example_iso_categories -->
> [!Example]+
> **范畴同构的例子**：
> - 单点范畴 $\mathbf{1}$（只有一个对象与恒等态射）与离散范畴 $\mathrm{Disc}(\{*\})$ 同构；
> - $\mathbf{Vect}_F \cong \mathbf{Vect}_F^{\mathrm{op}}$ 通常**不成立**（仅在适当的有限维子范畴上有对偶等价），故对偶函子并不给出严格同构；
> - 但 $\mathbf{Set}^{\mathrm{op}}$ 与"完备原子布尔代数范畴"严格同构（Lindenbaum–Tarski 定理的范畴版本），见后续章节。
