# 范畴的定义

## 范畴

<!-- category_def -->
> [!Definition]
> **范畴 Category**：一个**范畴** $\mathcal{C}$ 由如下数据构成：
> 1. 一个**对象类** $\mathrm{Ob}(\mathcal{C})$，其元素称为 $\mathcal{C}$ 的**对象**；
> 2. 对每一对对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，给定一个集合（或类）$\mathrm{Hom}_{\mathcal{C}}(A, B)$，其元素 $f$ 称为**从 $A$ 到 $B$ 的态射**，记作 $f: A \to B$；
> 3. 对每三个对象 $A, B, C \in \mathrm{Ob}(\mathcal{C})$，给定一个**复合运算**
> $$
> \circ : \mathrm{Hom}_{\mathcal{C}}(B, C) \times \mathrm{Hom}_{\mathcal{C}}(A, B) \to \mathrm{Hom}_{\mathcal{C}}(A, C), \quad (g, f) \mapsto g \circ f;
> $$
> 4. 对每个对象 $A \in \mathrm{Ob}(\mathcal{C})$，给定一个**恒等态射** $\mathrm{id}_A \in \mathrm{Hom}_{\mathcal{C}}(A, A)$。
>
> 这些数据须满足：
> - **结合律**：对任意 $f: A \to B$，$g: B \to C$，$h: C \to D$，有
> $$
> h \circ (g \circ f) = (h \circ g) \circ f;
> $$
> - **单位律**：对任意 $f: A \to B$，有
> $$
> \mathrm{id}_B \circ f = f = f \circ \mathrm{id}_A.
> $$
>
> 此外，不同 Hom 集互不相交：当 $(A, B) \neq (A', B')$ 时，$\mathrm{Hom}_{\mathcal{C}}(A, B) \cap \mathrm{Hom}_{\mathcal{C}}(A', B') = \varnothing$，从而每个态射 $f$ 都有唯一确定的**源** $\mathrm{dom}(f)$ 与**靶** $\mathrm{cod}(f)$。

> **注**：本笔记中也常将 $\mathrm{Hom}_{\mathcal{C}}(A, B)$ 简记为 $\mathcal{C}(A, B)$。当上下文清晰时，对象 $A$ 与其恒等态射 $\mathrm{id}_A$ 不再区分，态射 $f: A \to B$ 称 $A$ 为**定义域**、$B$ 为**陪域**。是否要求 Hom 是真正的集合，留待 [[size_of_category]] 讨论。

## 范畴的例子

<!-- category_example_set -->
> [!Example]+
> **集合范畴 Category of Sets**：以所有集合为对象、以集合间的映射为态射、以映射的复合为复合、以恒等映射 $\mathrm{id}_X: X \to X$ 为恒等态射，构成**集合范畴**，记作 $\mathbf{Set}$。结合律与单位律来自映射复合的相应性质。

<!-- category_example_grp -->
> [!Example]+
> **群范畴 Category of Groups**：以所有群为对象、以群同态为态射、以同态的复合为复合，构成**群范畴**，记作 $\mathbf{Grp}$。类似地，以所有阿贝尔群为对象、以群同态为态射，构成**阿贝尔群范畴** $\mathbf{Ab}$；以所有环为对象、以环同态为态射，构成**环范畴** $\mathbf{Ring}$。

<!-- category_example_top -->
> [!Example]+
> **拓扑空间范畴 Category of Topological Spaces**：以所有拓扑空间为对象、以连续映射为态射、以映射的复合为复合，构成**拓扑空间范畴**，记作 $\mathbf{Top}$。

<!-- category_example_vect -->
> [!Example]+
> **向量空间范畴 Category of Vector Spaces**：设 $F$ 为一个域。以所有 $F$ 上的向量空间为对象、以 $F$-线性映射为态射、以线性映射的复合为复合，构成 $F$ 上的**向量空间范畴**，记作 $\mathbf{Vect}_F$。类似地，对环 $R$，以所有左 $R$-模为对象、以 $R$-线性映射为态射，构成**模范畴** $R\text{-}\mathbf{Mod}$。

<!-- category_example_preorder -->
> [!Example]+
> **前序集作为范畴 Preorder as a Category**：设 $(P, \leq)$ 为一个前序集（即 $\leq$ 自反、传递）。定义范畴 $\mathcal{P}$：$\mathrm{Ob}(\mathcal{P}) = P$；对 $a, b \in P$，
> $$
> \mathrm{Hom}_{\mathcal{P}}(a, b) = \begin{cases} \{\ast_{a, b}\}, & a \leq b, \\ \varnothing, & a \not\leq b. \end{cases}
> $$
> 复合由传递性给出，恒等态射由自反性给出。由此，**每个前序集都自然地视为一个范畴**，其中任意两个对象之间至多有一个态射。

<!-- category_example_monoid -->
> [!Example]+
> **幺半群作为单对象范畴 Monoid as a One-Object Category**：设 $(M, \cdot, e)$ 为一个幺半群。定义范畴 $\mathcal{B}M$：仅有一个对象 $\ast$，$\mathrm{Hom}_{\mathcal{B}M}(\ast, \ast) = M$，复合由幺半群的乘法给出，恒等态射为 $e$。反之，仅含一个对象的范畴本质上就是一个幺半群。

## 同构态射

<!-- isomorphism_def -->
> [!Definition]
> **同构 Isomorphism**：设 $\mathcal{C}$ 为范畴，$f: A \to B$ 为 $\mathcal{C}$ 中的态射。若存在态射 $g: B \to A$ 使得
> $$
> g \circ f = \mathrm{id}_A, \qquad f \circ g = \mathrm{id}_B,
> $$
> 则称 $f$ 为**同构（同构态射）**，称 $g$ 为 $f$ 的**逆**，记作 $f^{-1}$。当存在同构 $f: A \to B$ 时，称 $A$ 与 $B$ **同构**，记作 $A \cong B$。

<!-- isomorphism_inverse_unique -->
> [!Theorem]
> **同构的逆唯一 Uniqueness of Inverse**：设 $f: A \to B$ 为范畴 $\mathcal{C}$ 中的同构，则其逆 $f^{-1}$ 唯一。
>
> **证明思路**：设 $g, g'$ 均为 $f$ 的逆，则
> $$
> g = g \circ \mathrm{id}_B = g \circ (f \circ g') = (g \circ f) \circ g' = \mathrm{id}_A \circ g' = g'.
> $$

<!-- isomorphism_composition -->
> [!Theorem]
> **同构的复合仍是同构 Composition of Isomorphisms**：设 $f: A \to B$，$g: B \to C$ 均为同构，则 $g \circ f: A \to C$ 亦为同构，且 $(g \circ f)^{-1} = f^{-1} \circ g^{-1}$。恒等态射 $\mathrm{id}_A$ 亦为同构，且 $\mathrm{id}_A^{-1} = \mathrm{id}_A$。
>
> **证明思路**：直接验证 $(f^{-1} \circ g^{-1}) \circ (g \circ f) = \mathrm{id}_A$ 与 $(g \circ f) \circ (f^{-1} \circ g^{-1}) = \mathrm{id}_C$ 即可。

<!-- isomorphism_equivalence_relation -->
> [!Corollary]
> **对象同构是等价关系 Isomorphism is an Equivalence Relation**：在范畴 $\mathcal{C}$ 的对象类上，关系 $A \cong B$ 是等价关系。
>
> **证明思路**：自反性由 $\mathrm{id}_A$ 给出，对称性由逆同构给出，传递性由同构的复合给出。
