# 滤过余极限

## 滤过范畴

<!-- filtered_category_def -->
> [!Definition]
> **滤过范畴 Filtered Category**：小范畴 $\mathcal{I}$ 称为**滤过的**（filtered），若它满足以下三个条件：
> 1. **非空**：$\mathcal{I}$ 至少有一个对象；
> 2. **上界条件**：对任意两个对象 $i, j \in \mathcal{I}$，存在对象 $k$ 与态射 $i \to k$，$j \to k$；
> 3. **并行态射条件**：对任意平行态射 $f, g: i \rightrightarrows j$，存在对象 $k$ 与态射 $h: j \to k$ 使得 $h \circ f = h \circ g$。

<!-- directed_set_category_def -->
> [!Definition]
> **有向集作为滤过范畴 Directed Set as Filtered Category**：称偏序集 $(I, \leq)$ 为**有向集**（directed set），若对任意 $i, j \in I$，存在 $k \in I$ 使得 $i \leq k$ 且 $j \leq k$。有向集视作范畴（前序集范畴）时，满足滤过条件的 1 与 2（条件 3 自动成立，因为至多一个态射），从而是滤过范畴的特例。

> **注**：余滤过范畴（cofiltered category）定义为 $\mathcal{I}^{\mathrm{op}}$ 滤过；余滤过余极限对应**Pro-对象**与**有向极限**（directed limit / inverse limit）。

## 滤过余极限

<!-- filtered_colimit_def -->
> [!Definition]
> **滤过余极限 Filtered Colimit**：形状为滤过范畴的余极限称为**滤过余极限**。特别地，形状为有向集的余极限称为**有向余极限**（direct limit / inductive limit），记作 $\varinjlim_{i \in I} D(i)$。

## 滤过余极限的性质

<!-- filtered_colimit_in_set -->
> [!Theorem]
> **$\mathbf{Set}$ 中的滤过余极限 Filtered Colimits in Set**：在集合范畴中，滤过余极限 $\varinjlim D$ 可显式构造为：
> $$
> \varinjlim_{i \in \mathcal{I}} D(i) = \left(\bigsqcup_{i \in \mathcal{I}} D(i)\right) \Big/ \sim,
> $$
> 其中 $x \in D(i)$ 与 $y \in D(j)$ 等价（$x \sim y$），当且仅当存在对象 $k$ 与态射 $f: i \to k$，$g: j \to k$ 使得 $D(f)(x) = D(g)(y)$。
>
> **证明思路**：验证 $\sim$ 是等价关系（利用滤过条件）；验证商集满足余极限的泛性质。

<!-- filtered_colimit_commutes_with_finite_limits -->
> [!Theorem]
> **滤过余极限与有限极限交换 Filtered Colimits Commute with Finite Limits in Set**：在 $\mathbf{Set}$ 中，滤过余极限与有限极限交换：若 $D: \mathcal{I} \times \mathcal{J} \to \mathbf{Set}$（$\mathcal{I}$ 滤过，$\mathcal{J}$ 有限），则
> $$
> \varinjlim_{i \in \mathcal{I}} \lim_{j \in \mathcal{J}} D(i, j) \cong \lim_{j \in \mathcal{J}} \varinjlim_{i \in \mathcal{I}} D(i, j).
> $$
>
> **证明思路**：利用 $\mathbf{Set}$ 中滤过余极限的显式描述，逐步验证两侧的元素一一对应且兼容极限条件；关键在于滤过条件保证了"有限多个条件可同时被满足"。

> **注**：在 $\mathbf{Ab}$、$R\text{-}\mathbf{Mod}$ 中，滤过余极限也与有限极限（特别是有限积与等化子）交换；在一般完备范畴中，滤过余极限与有限极限交换当且仅当范畴中的滤过余极限具有此"正合性"。

## 紧对象

<!-- compact_object_def -->
> [!Definition]
> **紧对象 Compact Object**：设 $\mathcal{C}$ 为有滤过余极限的范畴，$X \in \mathrm{Ob}(\mathcal{C})$。若 $\mathrm{Hom}_{\mathcal{C}}(X, -): \mathcal{C} \to \mathbf{Set}$ 保持所有滤过余极限（即对每个滤过图表 $D$，$\mathrm{Hom}(X, \varinjlim D) \cong \varinjlim \mathrm{Hom}(X, D(-))$），则称 $X$ 为**紧对象**（也称**有限表现对象** finitely presented object 或 $\omega$-紧对象）。

<!-- compact_object_example -->
> [!Example]+
> **紧对象的例子**：
> - 在 $\mathbf{Set}$ 中，紧对象恰为有限集；
> - 在 $R\text{-}\mathbf{Mod}$ 中，紧对象恰为有限表现模（即存在有限生成自由模的有限表示 $R^m \to R^n \to M \to 0$）；
> - 在 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$（$\mathcal{C}$ 小）中，可表预层 $h_A = \mathrm{Hom}(-, A)$ 是紧对象（由 Yoneda 引理：$\mathrm{Nat}(h_A, \varinjlim D) \cong (\varinjlim D)(A) \cong \varinjlim D(A) \cong \varinjlim \mathrm{Nat}(h_A, D(-))$）。

## 例子

<!-- filtered_colimit_example_union -->
> [!Example]+
> **集合的升链的有向余极限**：设 $A_1 \subseteq A_2 \subseteq A_3 \subseteq \cdots$ 为集合的升链，视为有向集 $(\mathbb{N}, \leq)$ 上的图表。有向余极限为 $\varinjlim A_n = \bigcup_{n \geq 1} A_n$（集合的并）。

<!-- filtered_colimit_example_ring -->
> [!Example]+
> **有理数作为整数的局部化的有向余极限**：$\mathbb{Q} = \varinjlim \frac{1}{n!}\mathbb{Z}$（在 $\mathbf{Ab}$ 中），其中有向系是 $\mathbb{Z} \subseteq \frac{1}{1!}\mathbb{Z} \subseteq \frac{1}{2!}\mathbb{Z} \subseteq \cdots$，每个嵌入为乘以相应整数。更一般地，任何局部化 $S^{-1}R$ 均可表示为有向余极限。

<!-- filtered_colimit_example_field -->
> [!Example]+
> **代数闭包作为有向余极限**：域 $F$ 的代数闭包 $\overline{F}$ 是所有有限次代数扩张的有向余极限：$\overline{F} = \varinjlim_{[E:F] < \infty,\, E/F \text{ 代数}} E$。
