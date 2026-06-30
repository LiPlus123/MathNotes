# 自然变换的定义

## 自然变换

<!-- natural_transformation_def -->
> [!Definition]
> **自然变换 Natural Transformation**：设 $F, G: \mathcal{C} \to \mathcal{D}$ 为两个函子。从 $F$ 到 $G$ 的**自然变换** $\alpha: F \Rightarrow G$ 是一族态射的集合
> $$
> \{\alpha_A: F(A) \to G(A)\}_{A \in \mathrm{Ob}(\mathcal{C})},
> $$
> 其中每个 $\alpha_A$ 称为 $\alpha$ 在 $A$ 处的**分量**，且对 $\mathcal{C}$ 中任意态射 $f: A \to B$，以下**自然性方块**交换：
> $$
> \begin{align*}
> G(f) \circ \alpha_A = \alpha_B \circ F(f).
> \end{align*}
> $$

## 自然性方块

> **注**：自然性方块是如下交换图（commutative diagram）：
> $$
> \begin{align*}
> &F(A) \xrightarrow{\alpha_A} G(A) \\
> &\downarrow_{F(f)} \quad\quad\quad \downarrow_{G(f)} \\
> &F(B) \xrightarrow{\alpha_B} G(B)
> \end{align*}
> $$
> 即沿两条不同路径复合后所得的态射相等：$G(f) \circ \alpha_A = \alpha_B \circ F(f)$。

## 基本性质

<!-- natural_transformation_identity -->
> [!Definition]
> **恒等自然变换 Identity Natural Transformation**：对函子 $F: \mathcal{C} \to \mathcal{D}$，定义**恒等自然变换** $\mathrm{id}_F: F \Rightarrow F$，其在 $A$ 处的分量为 $(\mathrm{id}_F)_A = \mathrm{id}_{F(A)}$。自然性方块平凡地交换。

<!-- natural_transformation_composition_vertical -->
> [!Definition]
> **自然变换的垂直复合（竖直复合） Vertical Composition**：设 $\alpha: F \Rightarrow G$，$\beta: G \Rightarrow H$ 为函子 $F, G, H: \mathcal{C} \to \mathcal{D}$ 之间的自然变换。定义**垂直复合** $\beta \circ \alpha: F \Rightarrow H$，其分量为
> $$
> (\beta \circ \alpha)_A = \beta_A \circ \alpha_A.
> $$
>
> **证明思路**（自然性）：对 $f: A \to B$，
> $$
> H(f) \circ (\beta \circ \alpha)_A = H(f) \circ \beta_A \circ \alpha_A = \beta_B \circ G(f) \circ \alpha_A = \beta_B \circ \alpha_B \circ F(f) = (\beta \circ \alpha)_B \circ F(f).
> $$
> 此处分别用了 $\beta$ 与 $\alpha$ 的自然性。

<!-- vertical_composition_assoc -->
> [!Theorem]
> **垂直复合的结合律与单位律 Associativity and Unit of Vertical Composition**：自然变换的垂直复合满足结合律，且 $\mathrm{id}_G \circ \alpha = \alpha$，$\beta \circ \mathrm{id}_G = \beta$。
>
> **证明思路**：分量级别上均为态射复合，结合律与单位律由 $\mathcal{D}$ 中态射复合的结合律与单位律保证。

## 自然变换的例子

<!-- natural_transformation_example_double_dual -->
> [!Example]+
> **双对偶嵌入 Double Dual Embedding**：设 $F = \mathrm{Id}_{\mathbf{Vect}_F}$ 为恒等函子，$G = (-)^{**}$ 为二次对偶函子。定义自然变换 $\varepsilon: \mathrm{Id} \Rightarrow (-)^{**}$，其在向量空间 $V$ 处的分量为赋值映射
> $$
> \varepsilon_V: V \to V^{**}, \quad v \mapsto \mathrm{ev}_v, \quad \mathrm{ev}_v(\varphi) = \varphi(v).
> $$
> 对任意线性映射 $T: V \to W$，自然性方块交换：$T^{**} \circ \varepsilon_V = \varepsilon_W \circ T$。

<!-- natural_transformation_example_det -->
> [!Example]+
> **行列式自然变换 Determinant Natural Transformation**：设 $\mathrm{GL}_n, \mathbb{G}_m: \mathbf{CRing} \to \mathbf{Grp}$ 分别为 $n$ 阶可逆矩阵群函子与乘法群函子。行列式 $\det: \mathrm{GL}_n \Rightarrow \mathbb{G}_m$ 是自然变换：对环同态 $\varphi: R \to S$，自然性方块交换，因为 $\det$ 与 $\varphi$ 的应用顺序可交换。

<!-- natural_transformation_example_abelianization -->
> [!Example]+
> **阿贝尔化的自然变换**：设 $U: \mathbf{Ab} \to \mathbf{Grp}$ 为包含函子，$(-)^{\mathrm{ab}}: \mathbf{Grp} \to \mathbf{Ab}$ 为阿贝尔化函子。自然投影 $\pi: \mathrm{Id}_{\mathbf{Grp}} \Rightarrow U \circ (-)^{\mathrm{ab}}$，其在群 $G$ 处的分量为商同态 $\pi_G: G \twoheadrightarrow G^{\mathrm{ab}} = G/[G, G]$，是自然变换。

<!-- natural_transformation_example_preorder -->
> [!Example]+
> **前序集范畴中的自然变换**：设 $F, G: \mathcal{C} \to \mathcal{D}$ 为前序集范畴之间的函子（即保序映射）。$\alpha: F \Rightarrow G$ 为自然变换当且仅当对每个 $A \in \mathrm{Ob}(\mathcal{C})$，$F(A) \leq G(A)$ 在 $\mathcal{D}$ 中成立（即 $\alpha_A$ 存在）。自然性方块在"至多一个态射"的范畴中自动交换。
