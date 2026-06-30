# 2-范畴初步

## 2-范畴的定义

<!-- two_category_def -->
> [!Definition]
> **2-范畴 2-Category**：一个**（严格）2-范畴** $\mathfrak{K}$ 由如下数据构成：
> 1. 一个**对象类**（0-胞 / 0-cell）$\mathrm{Ob}(\mathfrak{K})$；
> 2. 对每对对象 $A, B$，一个（普通）范畴 $\mathfrak{K}(A, B)$，其中
>    - $\mathfrak{K}(A, B)$ 的**对象**称为从 $A$ 到 $B$ 的 **1-态射**（1-cell），也记作 $f: A \to B$；
>    - $\mathfrak{K}(A, B)$ 的**态射**称为 **2-态射**（2-cell），也记作 $\alpha: f \Rightarrow g$；
>    - $\mathfrak{K}(A, B)$ 中的复合即 2-态射的**垂直复合**；
> 3. 对每三个对象 $A, B, C$，一个**水平复合函子**（双函子）
> $$
> \circ: \mathfrak{K}(B, C) \times \mathfrak{K}(A, B) \to \mathfrak{K}(A, C);
> $$
> 4. 对每个对象 $A$，一个**恒等 1-态射** $\mathrm{id}_A: A \to A$ 与恒等 2-态射 $\mathrm{id}_{\mathrm{id}_A}$。
>
> 这些数据须满足：
> - **水平复合的结合律与单位律**（严格成立，即等号而非同构）；
> - **交换律（interchange law）**：垂直与水平复合满足
> $$
> (\beta' \circ \beta) \ast (\alpha' \circ \alpha) = (\beta' \ast \alpha') \circ (\beta \ast \alpha);
> $$
> - **水平复合函子保持恒等**：$\mathrm{id}_g \ast \mathrm{id}_f = \mathrm{id}_{g \circ f}$。

> **注**：上述定义中所有的结合律与单位律均为**严格等式**；若改为自然同构（以及更高阶的相干条件），则得到**弱 2-范畴**（双范畴 bicategory）。本节仅讨论严格 2-范畴。

## 2-范畴的基本术语

<!-- two_cell_notion -->
> [!Definition]
> **胞形记号 Cell Notation**：在 2-范畴 $\mathfrak{K}$ 中：
> - 0-胞（对象）用字母 $A, B, C$ 表示；
> - 1-胞（1-态射）用 $f, g, h: A \to B$ 表示；
> - 2-胞（2-态射）用 $\alpha: f \Rightarrow g$（$f, g: A \to B$）表示，也记为
> $$
> A \underset{g}{\overset{f}{\rightrightarrows}} B \xRightarrow{\alpha}.
> $$
>
> 2-态射存在两种复合：
> - **垂直复合**（vertical composition）$\beta \circ \alpha: f \Rightarrow h$，对 $\alpha: f \Rightarrow g$，$\beta: g \Rightarrow h: A \to B$；
> - **水平复合**（horizontal composition）$\beta \ast \alpha: g' \circ f \Rightarrow g' \circ g$（更一般地如定义中所述）。

## Cat 作为 2-范畴

<!-- cat_as_two_category -->
> [!Example]+
> **$\mathbf{Cat}$ 是严格 2-范畴 Cat as a 2-Category**：
> - 0-胞：（小）范畴 $\mathcal{C}, \mathcal{D}, \mathcal{E}, \ldots$；
> - 1-胞：函子 $F: \mathcal{C} \to \mathcal{D}$；
> - 2-胞：自然变换 $\alpha: F \Rightarrow G$（$F, G: \mathcal{C} \to \mathcal{D}$）；
> - 垂直复合：自然变换的垂直复合（分量级别复合）；
> - 水平复合：自然变换的水平复合（Godement 乘积）。
>
> 交换律由 [[composition_of_natural_transformation|自然变换的复合]] 中的交换律保证，结合律与单位律由函子复合与恒等函子的相应性质保证。$\mathbf{Cat}$ 是范畴论的"宇宙语言"，其 2-范畴结构使得可以同时谈论范畴（0-胞）、函子（1-胞）与自然变换（2-胞）的相互作用。

## 2-函子与 2-自然变换（简介）

<!-- two_functor_def -->
> [!Definition]
> **2-函子 2-Functor**：设 $\mathfrak{K}, \mathfrak{L}$ 为 2-范畴。**严格 2-函子** $\Phi: \mathfrak{K} \to \mathfrak{L}$ 由如下数据构成：
> - 对每个 0-胞 $A \in \mathfrak{K}$，给定 0-胞 $\Phi(A) \in \mathfrak{L}$；
> - 对每对 0-胞 $A, B$，给定函子 $\Phi_{A, B}: \mathfrak{K}(A, B) \to \mathfrak{L}(\Phi(A), \Phi(B))$（即同时映射 1-胞与 2-胞）；
>
> 且严格保持水平复合与恒等 1-胞。特别地，$\Phi$ 在 1-胞上的限制是 $\mathbf{Cat}$ 中的"函子间的函子"，在 2-胞上保持垂直复合与水平复合。

<!-- two_natural_transformation_def -->
> [!Definition]
> **2-自然变换 2-Natural Transformation**：设 $\Phi, \Psi: \mathfrak{K} \to \mathfrak{L}$ 为 2-函子。**2-自然变换** $T: \Phi \Rightarrow \Psi$ 为：对每个 0-胞 $A \in \mathfrak{K}$ 给定 1-胞 $T_A: \Phi(A) \to \Psi(A)$（自然性条件：对每个 1-胞 $f: A \to B$，有 $T_B \circ \Phi(f) = \Psi(f) \circ T_A$，以及对 2-胞的相容性）。

> **注**：$\mathbf{Cat}$ 作为 2-范畴的框架揭示了函子论的层级结构：普通范畴论处理 0-胞和 1-胞，自然变换引入 2-胞，而更高阶的构造（$n$-范畴）继续推广，是高阶范畴论（Higher Category Theory）的起点。
