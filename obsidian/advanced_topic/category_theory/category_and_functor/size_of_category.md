# 范畴的大小

## 局部小范畴、小范畴与大范畴

> **注**：在 [[definition_of_category|范畴的定义]] 中，我们对 $\mathrm{Ob}(\mathcal{C})$ 与 $\mathrm{Hom}_{\mathcal{C}}(A, B)$ 究竟是集合还是真类未作要求。为避免 Russell 型悖论（如"所有集合构成的集合"不存在），本笔记采纳 NBG 集合论或带有 Grothendieck 宇宙的 ZFC：**集合**（set）与**真类**（proper class）严格区分，**类**（class）泛指其一。

<!-- locally_small_category_def -->
> [!Definition]
> **局部小范畴 Locally Small Category**：若对范畴 $\mathcal{C}$ 中任意两个对象 $A, B$，$\mathrm{Hom}_{\mathcal{C}}(A, B)$ 都是**集合**（而非真类），则称 $\mathcal{C}$ 为**局部小范畴**。

<!-- small_category_def -->
> [!Definition]
> **小范畴 Small Category**：若范畴 $\mathcal{C}$ 是局部小范畴，且 $\mathrm{Ob}(\mathcal{C})$ 也是**集合**，则称 $\mathcal{C}$ 为**小范畴**。

<!-- large_category_def -->
> [!Definition]
> **大范畴 Large Category**：若范畴 $\mathcal{C}$ 不是小范畴（即 $\mathrm{Ob}(\mathcal{C})$ 为真类），则称 $\mathcal{C}$ 为**大范畴**。

> **注**：在上述定义下，每个小范畴都是局部小的；局部小范畴可以是小的，也可以是大的。

## 大小的例子

<!-- size_example_set_locally_small -->
> [!Example]+
> **$\mathbf{Set}$ 是局部小的大范畴**：在 $\mathbf{Set}$ 中，全体集合构成真类，因此 $\mathbf{Set}$ 是大范畴；而任意两个集合之间的全体映射 $\mathrm{Hom}_{\mathbf{Set}}(A, B) = B^A$ 仍是一个集合，故 $\mathbf{Set}$ 局部小。同理 $\mathbf{Grp}$、$\mathbf{Ab}$、$\mathbf{Ring}$、$\mathbf{Top}$、$\mathbf{Vect}_F$、$R\text{-}\mathbf{Mod}$ 均为局部小的大范畴。

<!-- size_example_preorder_small -->
> [!Example]+
> **前序集作为小范畴**：设 $(P, \leq)$ 为前序集且 $P$ 为集合，则由其诱导的范畴（见 [[definition_of_category|范畴的例子]]）是小范畴。特别地，任何偏序集、有限全序集 $\{0 < 1 < \cdots < n\}$ 都给出小范畴。

<!-- size_example_monoid_small -->
> [!Example]+
> **幺半群作为小范畴**：任何幺半群 $M$ 视作单对象范畴 $\mathcal{B}M$ 时，$\mathrm{Ob}(\mathcal{B}M) = \{\ast\}$ 为单元素集，$\mathrm{Hom}(\ast, \ast) = M$ 为集合，故 $\mathcal{B}M$ 是小范畴。

<!-- size_example_discrete_category -->
> [!Example]+
> **离散范畴 Discrete Category**：设 $S$ 为集合。以 $S$ 为对象类，仅以恒等态射为态射，构成**离散范畴** $\mathrm{Disc}(S)$。它是小范畴当且仅当 $S$ 为集合。
