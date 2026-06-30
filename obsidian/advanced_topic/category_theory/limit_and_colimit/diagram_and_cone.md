# 图表、锥与余锥

## 指标范畴与图表

<!-- index_category_def -->
> [!Definition]
> **指标范畴 Index Category**：用于参数化图表的（通常为小）范畴 $\mathcal{I}$ 称为**指标范畴**。$\mathcal{I}$ 的对象确定图表的"顶点"，$\mathcal{I}$ 的态射确定图表的"箭头"。

<!-- diagram_def -->
> [!Definition]
> **图表 Diagram**：设 $\mathcal{C}$ 为范畴，$\mathcal{I}$ 为小范畴（指标范畴）。一个**形状为 $\mathcal{I}$ 的图表**是函子
> $$
> D: \mathcal{I} \to \mathcal{C}.
> $$
> $D$ 将 $\mathcal{I}$ 的对象 $i$ 映为 $\mathcal{C}$ 中的对象 $D(i)$，将 $\mathcal{I}$ 中的态射 $f: i \to j$ 映为 $\mathcal{C}$ 中的态射 $D(f): D(i) \to D(j)$。

> **注**：不同形状的指标范畴给出不同类型的极限，例如：离散范畴给出积/余积，平行双箭头范畴给出等化子/余等化子，跨形范畴给出拉回/推出，等等（见后续各节）。

## 锥

<!-- cone_def -->
> [!Definition]
> **锥 Cone**：设 $D: \mathcal{I} \to \mathcal{C}$ 为图表，$X \in \mathrm{Ob}(\mathcal{C})$。以 $X$ 为**顶（apex）**的图表 $D$ 上的**锥**是一族态射
> $$
> \lambda = \{\lambda_i: X \to D(i)\}_{i \in \mathrm{Ob}(\mathcal{I})},
> $$
> 满足：对 $\mathcal{I}$ 中每个态射 $f: i \to j$，有
> $$
> D(f) \circ \lambda_i = \lambda_j.
> $$
> 等价地，锥是自然变换 $\lambda: \Delta_X \Rightarrow D$，其中 $\Delta_X: \mathcal{I} \to \mathcal{C}$ 是值恒为 $X$ 的常函子。
>
> 每个 $\lambda_i$ 称为锥的**投影分量**（或**腿**，leg）。

<!-- cone_morphism_def -->
> [!Definition]
> **锥的态射 Morphism of Cones**：设 $(X, \lambda)$ 与 $(Y, \mu)$ 均为图表 $D: \mathcal{I} \to \mathcal{C}$ 上的锥。从 $(X, \lambda)$ 到 $(Y, \mu)$ 的**锥态射**是 $\mathcal{C}$ 中的态射 $u: X \to Y$，使得对每个 $i \in \mathrm{Ob}(\mathcal{I})$，
> $$
> \mu_i \circ u = \lambda_i.
> $$
> 图表 $D$ 上的全体锥及其态射构成范畴，记作 $\mathrm{Cone}(D)$（或 $(\Delta \downarrow D)$，即切片范畴的逗号范畴形式）。

## 余锥

<!-- cocone_def -->
> [!Definition]
> **余锥 Cocone**：设 $D: \mathcal{I} \to \mathcal{C}$ 为图表，$X \in \mathrm{Ob}(\mathcal{C})$。以 $X$ 为**底（nadir）**的图表 $D$ 下的**余锥**是一族态射
> $$
> \mu = \{\mu_i: D(i) \to X\}_{i \in \mathrm{Ob}(\mathcal{I})},
> $$
> 满足：对 $\mathcal{I}$ 中每个态射 $f: i \to j$，有
> $$
> \mu_j \circ D(f) = \mu_i.
> $$
> 等价地，余锥是自然变换 $\mu: D \Rightarrow \Delta_X$。

<!-- cocone_morphism_def -->
> [!Definition]
> **余锥的态射 Morphism of Cocones**：从余锥 $(X, \mu)$ 到 $(Y, \nu)$ 的**余锥态射**是 $\mathcal{C}$ 中的态射 $v: X \to Y$，使得对每个 $i$，$v \circ \mu_i = \nu_i$。图表 $D$ 下的全体余锥构成范畴，记作 $\mathrm{Cocone}(D)$（或 $(D \downarrow \Delta)$）。

> **注**：锥与余锥互为对偶：$(X, \lambda)$ 是 $D: \mathcal{I} \to \mathcal{C}$ 上的锥，当且仅当 $(X, \lambda^{\mathrm{op}})$ 是 $D^{\mathrm{op}}: \mathcal{I}^{\mathrm{op}} \to \mathcal{C}^{\mathrm{op}}$ 下的余锥。

## 例子

<!-- cone_example_product -->
> [!Example]+
> **积对应的锥**：设 $\mathcal{I} = \{1, 2\}$（无非恒等态射的离散范畴），$D(1) = A$，$D(2) = B$。以 $X$ 为顶的锥即一对态射 $\lambda_1: X \to A$，$\lambda_2: X \to B$（无需满足额外条件，因为 $\mathcal{I}$ 无非恒等态射）。锥的终对象（极限）即 $A$ 与 $B$ 的积 $A \times B$（见 [[product_and_coproduct]]）。

<!-- cone_example_equalizer -->
> [!Example]+
> **等化子对应的锥**：设 $\mathcal{I}$ 为平行双箭头范畴（两个对象 $\bullet \rightrightarrows \bullet$），图表 $D$ 为 $f, g: A \rightrightarrows B$。以 $X$ 为顶的锥为 $h: X \to A$ 使得 $f \circ h = g \circ h$（自然性条件化为此等式）。其锥的终对象即 $f, g$ 的等化子（见 [[equalizer_and_coequalizer]]）。
