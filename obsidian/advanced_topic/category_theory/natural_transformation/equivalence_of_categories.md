# 范畴的等价

## 范畴等价的定义

<!-- equivalence_of_categories_def -->
> [!Definition]
> **范畴的等价 Equivalence of Categories**：一对函子 $F: \mathcal{C} \to \mathcal{D}$ 与 $G: \mathcal{D} \to \mathcal{C}$ 构成**范畴的等价**，若存在自然同构
> $$
> \eta: \mathrm{Id}_{\mathcal{C}} \xRightarrow{\sim} G \circ F, \qquad \varepsilon: F \circ G \xRightarrow{\sim} \mathrm{Id}_{\mathcal{D}}.
> $$
> 此时称 $F$（或 $(F, G, \eta, \varepsilon)$）为**等价函子**，称 $\mathcal{C}$ 与 $\mathcal{D}$ **等价**，记作 $\mathcal{C} \simeq \mathcal{D}$。称 $G$ 为 $F$ 的**拟逆函子**（quasi-inverse）。

> **注**：范畴的等价比同构（要求 $G \circ F = \mathrm{Id}_{\mathcal{C}}$ 严格相等）更弱，却是范畴论中**正确的**比较两个范畴的概念。同构的范畴一定等价，反之不成立。

## 全忠实加本质满的判定

<!-- equivalence_characterization -->
> [!Theorem]
> **等价的判定定理 Characterization of Equivalences**：函子 $F: \mathcal{C} \to \mathcal{D}$ 是范畴等价（即存在拟逆 $G$）当且仅当 $F$ 同时满足：
> 1. **全忠实**（fully faithful）：对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，$F_{A, B}: \mathrm{Hom}_{\mathcal{C}}(A, B) \to \mathrm{Hom}_{\mathcal{D}}(F(A), F(B))$ 是双射；
> 2. **本质满**（essentially surjective）：对每个 $D \in \mathrm{Ob}(\mathcal{D})$，存在 $C \in \mathrm{Ob}(\mathcal{C})$ 使得 $F(C) \cong D$。
>
> **证明思路**：
> - "$\Rightarrow$"：设 $(G, \eta, \varepsilon)$ 为拟逆。全忠实：由 $\eta, \varepsilon$ 为自然同构，利用自然性可证 $F_{A, B}$ 有逆映射 $G_{F(A), F(B)} \circ (-)$ 合适的构造；本质满：对 $D$，令 $C = G(D)$，则 $F(G(D)) \cong D$（由 $\varepsilon_D$ 给出同构）。
> - "$\Leftarrow$"：对每个 $D$ 选取 $G(D) \in \mathrm{Ob}(\mathcal{C})$ 及同构 $\varepsilon_D: F(G(D)) \xrightarrow{\sim} D$（本质满保证存在）；由全忠实对每个态射 $h: D \to D'$ 唯一确定 $G(h): G(D) \to G(D')$；验证 $G$ 是函子，且 $\varepsilon$ 与 $\eta$（用全忠实在对象 $A$ 处唯一确定 $\eta_A$）均为自然同构。此构造依赖选择公理。

## 对偶等价

<!-- dual_equivalence_def -->
> [!Definition]
> **对偶等价 Dual Equivalence / Contravariant Equivalence**：若存在反变函子 $F: \mathcal{C} \to \mathcal{D}^{\mathrm{op}}$（等价地，协变函子 $F: \mathcal{C} \to \mathcal{D}^{\mathrm{op}}$）是范畴等价，则称 $\mathcal{C}$ 与 $\mathcal{D}$ **对偶等价**，记作 $\mathcal{C} \simeq \mathcal{D}^{\mathrm{op}}$（或 $\mathcal{C}^{\mathrm{op}} \simeq \mathcal{D}$）。

<!-- dual_equivalence_example_stone -->
> [!Example]+
> **Stone 对偶 Stone Duality**：有限集范畴 $\mathbf{FinSet}$ 与有限 Boolean 代数范畴 $\mathbf{FinBool}$ 对偶等价：$\mathbf{FinSet}^{\mathrm{op}} \simeq \mathbf{FinBool}$。具体地，将有限集 $X$ 映为其幂集代数 $\mathcal{P}(X)$（有限 Boolean 代数），将 Boolean 代数 $B$ 映为其原子集（atom set）。

<!-- dual_equivalence_example_gelfand -->
> [!Example]+
> **Gel'fand 对偶 Gel'fand Duality**：紧 Hausdorff 空间范畴 $\mathbf{KHaus}$ 与（交换、带单位）$C^*$-代数范畴 $\mathbf{CAlg}^{\mathrm{op}}$ 对偶等价：将空间 $X$ 映为连续函数代数 $C(X)$，将代数 $A$ 映为其极大理想空间（Gel'fand 谱）。

## 骨架范畴

<!-- skeleton_def -->
> [!Definition]
> **骨架范畴 Skeleton**：范畴 $\mathcal{C}$ 的**骨架** $\mathrm{sk}(\mathcal{C})$ 是 $\mathcal{C}$ 的一个满子范畴，满足：
> 1. $\mathrm{sk}(\mathcal{C})$ 中每个对象只出现一次同构类的代表元，即对 $\mathrm{sk}(\mathcal{C})$ 中不同的对象 $A \neq B$，$A \not\cong B$（在 $\mathcal{C}$ 中）；
> 2. $\mathcal{C}$ 中每个对象都同构于 $\mathrm{sk}(\mathcal{C})$ 中某个对象。

<!-- skeleton_is_equivalent -->
> [!Theorem]
> **骨架与原范畴等价 Skeleton is Equivalent to Original Category**：包含函子 $\iota: \mathrm{sk}(\mathcal{C}) \hookrightarrow \mathcal{C}$ 是范畴等价。
>
> **证明思路**：$\iota$ 全忠实（满子范畴的包含函子总是全忠实）；$\iota$ 本质满（由骨架定义的条件 2）。由等价的判定定理即得。

<!-- skeleton_isomorphism -->
> [!Theorem]
> **同骨架的范畴等价 Equivalent Categories Have Isomorphic Skeletons**：两个范畴 $\mathcal{C} \simeq \mathcal{D}$ 当且仅当它们的骨架同构，$\mathrm{sk}(\mathcal{C}) \cong \mathrm{sk}(\mathcal{D})$（作为范畴的同构）。
>
> **证明思路**：骨架在等价下无同构类的"冗余"，等价函子在骨架上导出双射的对象映射与 Hom 集双射，从而给出范畴同构。

## 例子

<!-- equivalence_example_matrix -->
> [!Example]+
> **有限维向量空间与矩阵**：有限维 $F$-向量空间范畴 $\mathbf{Vect}_F^{\mathrm{fd}}$ 等价于以自然数为对象、以矩阵 $M_{m \times n}(F)$ 为从 $n$ 到 $m$ 的态射的范畴 $\mathbf{Mat}_F$（复合为矩阵乘法）。等价函子将向量空间 $V$ 映为 $\dim V \in \mathbb{N}$；在每个同构类（维数）中只选代表元 $F^n$。

<!-- equivalence_example_karoubi -->
> [!Example]+
> **Karoubi 包络**：任何范畴 $\mathcal{C}$ 的 Karoubi 包络（idempotent completion，幂等完备化）$\mathrm{Kar}(\mathcal{C})$ 与 $\mathcal{C}$ 等价当且仅当 $\mathcal{C}$ 中每个幂等（idempotent）态射 $e: A \to A$（满足 $e \circ e = e$）都分裂（即存在对象 $B$ 与态射使得 $e$ 分解为 $A \to B \to A$ 的复合）。
