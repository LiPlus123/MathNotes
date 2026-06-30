# (余)完备性

## 完备范畴与余完备范畴

<!-- complete_category_def -->
> [!Definition]
> **完备范畴 Complete Category**：若范畴 $\mathcal{C}$ 有所有（小）图表的极限（即对每个小范畴 $\mathcal{I}$ 与每个函子 $D: \mathcal{I} \to \mathcal{C}$，$D$ 的极限存在），则称 $\mathcal{C}$ 为**（小）完备范畴**，简称**完备范畴**。

<!-- cocomplete_category_def -->
> [!Definition]
> **余完备范畴 Cocomplete Category**：若 $\mathcal{C}$ 有所有小图表的余极限，则称 $\mathcal{C}$ 为**余完备范畴**。

<!-- finitely_complete_def -->
> [!Definition]
> **有限完备 / 有限余完备 Finitely Complete / Finitely Cocomplete**：若 $\mathcal{C}$ 有所有**有限**图表的极限（即 $\mathcal{I}$ 为有限范畴时），则称 $\mathcal{C}$ **有限完备**；类似地定义有限余完备。

## 极限由积与等化子构造

<!-- limits_from_products_equalizers -->
> [!Theorem]
> **极限 = 积 + 等化子 Limits from Products and Equalizers**：若范畴 $\mathcal{C}$ 有所有（小）积与所有等化子，则 $\mathcal{C}$ 完备。具体地，图表 $D: \mathcal{I} \to \mathcal{C}$ 的极限可通过以下构造得到：
> $$
> \lim D \cong \mathrm{Eq}\!\left(\prod_{i \in \mathrm{Ob}(\mathcal{I})} D(i) \underset{g}{\overset{f}{\rightrightarrows}} \prod_{(f: i \to j) \in \mathrm{Mor}(\mathcal{I})} D(j)\right),
> $$
> 其中 $f, g$ 由 $D$ 的函子性定义（$f$ 沿指标函子作用，$g$ 为投影的复合）。
>
> **证明思路**：将锥的条件转化为等化子条件：锥 $(X, \lambda)$ 满足对所有 $\mathcal{I}$ 中态射 $\alpha: i \to j$，$D(\alpha) \circ \lambda_i = \lambda_j$；这等价于两个到 $\prod_{j} D(j)$ 的映射相等，即落在等化子中。

## 有限极限由终对象与拉回构造

<!-- finite_limits_from_terminal_pullback -->
> [!Theorem]
> **有限极限 = 终对象 + 拉回 Finite Limits from Terminal Object and Pullbacks**：若范畴 $\mathcal{C}$ 有终对象 $T$ 与所有拉回，则 $\mathcal{C}$ 有限完备。
>
> **证明思路**：
> - 由终对象与拉回可构造二元积：$A \times B \cong A \times_T B$（拉回沿 $A \to T$ 与 $B \to T$）；
> - 由二元积（迭代）可构造有限积；
> - 由拉回 $A \times_B A$ 与积可构造等化子：$\mathrm{Eq}(f, g) = A \times_{B \times B} B$（在适当解释下）；
> - 由积与等化子可构造有限极限（由上一定理的有限版本）。

## 例子

<!-- complete_examples -->
> [!Example]+
> **完备与余完备范畴的例子**：
> - $\mathbf{Set}$ 完备且余完备；
> - $\mathbf{Grp}$、$\mathbf{Ab}$、$\mathbf{Top}$、$\mathbf{Vect}_F$、$R\text{-}\mathbf{Mod}$ 均完备且余完备；
> - $\mathbf{Ring}$ 完备且余完备（余极限较复杂）；
> - 预层范畴 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$（$\mathcal{C}$ 小）完备且余完备（极限/余极限逐点计算）；
> - 任意偏序集（视作范畴）完备当且仅当有所有下确界（meet），余完备当且仅当有所有上确界（join）——即为**完备格**。

<!-- not_complete_examples -->
> [!Example]+
> **不完备范畴的例子**：
> - 有限集范畴 $\mathbf{FinSet}$ 有有限极限（有限完备），但不完备（无限积不存在）；
> - 域范畴 $\mathbf{Field}$（以域为对象、域同态为态射）不完备，因为两个域的积（若存在）必须为域，但 $\mathbb{Q} \times \mathbb{Q}$ 不是域；
> - 紧 Hausdorff 空间范畴 $\mathbf{KHaus}$ 完备且余完备（完备性来自闭子集，余完备性来自商空间）。
