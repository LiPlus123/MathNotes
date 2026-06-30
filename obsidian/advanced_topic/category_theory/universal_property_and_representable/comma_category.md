# 逗号范畴

## 逗号范畴的定义

<!-- comma_category_def -->
> [!Definition]
> **逗号范畴 Comma Category**：设 $F: \mathcal{A} \to \mathcal{C}$ 与 $G: \mathcal{B} \to \mathcal{C}$ 为函子。定义**逗号范畴** $(F \downarrow G)$ 如下：
>
> - **对象**：三元组 $(A, B, f)$，其中 $A \in \mathrm{Ob}(\mathcal{A})$，$B \in \mathrm{Ob}(\mathcal{B})$，$f: F(A) \to G(B)$ 是 $\mathcal{C}$ 中的态射；
> - **态射**：从 $(A, B, f)$ 到 $(A', B', f')$ 的态射是态射对 $(h: A \to A', k: B \to B')$（$h \in \mathcal{A}$，$k \in \mathcal{B}$），使得以下方块在 $\mathcal{C}$ 中交换：
> $$
> f' \circ F(h) = G(k) \circ f;
> $$
> - **复合**：$(h', k') \circ (h, k) = (h' \circ h, k' \circ k)$；
> - **恒等态射**：$\mathrm{id}_{(A, B, f)} = (\mathrm{id}_A, \mathrm{id}_B)$。

<!-- comma_category_is_category -->
> [!Theorem]
> **逗号范畴是范畴**：上述定义满足范畴公理。
>
> **证明思路**：复合的结合律与单位律分别由 $\mathcal{A}$、$\mathcal{B}$ 中复合的相应性质分量级别保证；交换方块在复合后仍交换，由函子保持复合验证。

## 切片范畴与余切片范畴

<!-- slice_category_def -->
> [!Definition]
> **切片范畴 Slice Category**：设 $\mathcal{C}$ 为范畴，$C \in \mathrm{Ob}(\mathcal{C})$。取 $F = \mathrm{Id}_{\mathcal{C}}: \mathcal{C} \to \mathcal{C}$ 与 $G = \Delta_C: \mathbf{1} \to \mathcal{C}$（常函子，值为 $C$），则逗号范畴 $(\mathrm{Id}_{\mathcal{C}} \downarrow \Delta_C)$ 称为 $C$ 上的**切片范畴**，记作 $\mathcal{C}/C$。
>
> 显式地：
> - **对象**：$\mathcal{C}$ 中的态射 $f: X \to C$；
> - **态射**：从 $f: X \to C$ 到 $g: Y \to C$ 的态射为 $h: X \to Y$ 使得 $g \circ h = f$。

<!-- coslice_category_def -->
> [!Definition]
> **余切片范畴 Coslice Category**：取 $F = \Delta_C: \mathbf{1} \to \mathcal{C}$ 与 $G = \mathrm{Id}_{\mathcal{C}}$，则逗号范畴 $(\Delta_C \downarrow \mathrm{Id}_{\mathcal{C}})$ 称为 $C$ 下的**余切片范畴**，记作 $C/\mathcal{C}$。
>
> 显式地：
> - **对象**：从 $C$ 出发的 $\mathcal{C}$ 中的态射 $f: C \to X$；
> - **态射**：从 $f: C \to X$ 到 $g: C \to Y$ 的态射为 $h: X \to Y$ 使得 $h \circ f = g$。

> **注**：切片范畴与余切片范畴互为对偶：$(\mathcal{C}/C)^{\mathrm{op}} \cong C^{\mathrm{op}}/\mathcal{C}^{\mathrm{op}}$（其中 $C^{\mathrm{op}}$ 在 $\mathcal{C}^{\mathrm{op}}$ 中代表同一对象）。

## 泛态射的统一描述

<!-- universal_morphism_as_initial_object -->
> [!Theorem]
> **泛态射作为初/终对象 Universal Morphism as Initial / Terminal Object**：设 $G: \mathcal{D} \to \mathcal{C}$ 为函子，$A \in \mathrm{Ob}(\mathcal{C})$。
> 1. 从 $A$ 到 $G$ 的泛态射 $(U, u)$（$u: A \to G(U)$）等价于逗号范畴 $(A \downarrow G)$ 中的**初对象**，其中 $(A \downarrow G)$ 指取 $F = \Delta_A: \mathbf{1} \to \mathcal{C}$（常函子，值为 $A$）时的逗号范畴 $(\Delta_A \downarrow G)$；
> 2. 从 $G$ 到 $A$ 的泛态射 $(U, u)$（$u: G(U) \to A$）等价于逗号范畴 $(G \downarrow A)$（即 $(G \downarrow \Delta_A)$）中的**终对象**。
>
> **证明思路**：$(A \downarrow G)$ 中的对象为对 $(D, f: A \to G(D))$，态射从 $(D, f)$ 到 $(D', f')$ 为 $k: D \to D'$ 使得 $G(k) \circ f = f'$。初对象 $(U, u)$ 即满足：对每个对象 $(D, f)$，存在唯一态射 $k: U \to D$ 使 $G(k) \circ u = f$——这正是泛态射的定义。

## 逗号范畴的例子

<!-- comma_category_example_slice -->
> [!Example]+
> **切片范畴 $\mathbf{Set}/S$**：以集合 $S$ 为底的切片范畴 $\mathbf{Set}/S$ 的对象是从集合到 $S$ 的映射 $f: X \to S$（即以 $S$ 为指标集的集合族），态射是保持纤维的映射。这等价于 $S$-指标集族的范畴，是描述"参数化"结构的自然框架。

<!-- comma_category_example_arrow -->
> [!Example]+
> **态射范畴（箭头范畴）$\mathcal{C}^{\to}$**：取 $F = G = \mathrm{Id}_{\mathcal{C}}$，逗号范畴 $(\mathrm{Id}_{\mathcal{C}} \downarrow \mathrm{Id}_{\mathcal{C}})$ 即态射范畴 $\mathcal{C}^{\to}$：对象为 $\mathcal{C}$ 中的全体态射，从 $f: A \to B$ 到 $g: C \to D$ 的态射为使方块交换的态射对 $(h: A \to C, k: B \to D)$，满足 $k \circ f = g \circ h$。

<!-- comma_category_example_pointed -->
> [!Example]+
> **带基点集合范畴**：取 $\mathcal{C} = \mathbf{Set}$，$C = \{\ast\}$（单元素集）。余切片范畴 $\{\ast\}/\mathbf{Set}$ 的对象是从 $\{\ast\}$ 到集合的映射，即带基点集合 $(X, x_0)$，态射是保基点的映射。这正是带基点集合范畴 $\mathbf{Set}_*$。

<!-- comma_category_example_free_adjunction -->
> [!Example]+
> **自由-遗忘的逗号范畴描述**：对忘却函子 $U: \mathbf{Grp} \to \mathbf{Set}$ 与集合 $X$，逗号范畴 $(X \downarrow U)$ 的初对象恰为自由群 $F(X)$ 连同 $\iota: X \to U(F(X))$。一般地，$F \dashv U$（自由-遗忘伴随）等价于对每个 $X \in \mathbf{Set}$，逗号范畴 $(X \downarrow U)$ 有初对象（见 [[definition_of_adjoint_functor|伴随函子的定义]]）。
