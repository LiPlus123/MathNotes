# 函子范畴

## 函子范畴的定义

<!-- functor_category_def -->
> [!Definition]
> **函子范畴 Functor Category**：设 $\mathcal{C}, \mathcal{D}$ 为范畴（$\mathcal{C}$ 为小范畴，或 $\mathcal{D}$ 足够"大"使得 Hom 集为真正的集合）。定义**函子范畴** $[\mathcal{C}, \mathcal{D}]$（也记作 $\mathcal{D}^{\mathcal{C}}$ 或 $\mathrm{Fun}(\mathcal{C}, \mathcal{D})$）如下：
> - **对象**：从 $\mathcal{C}$ 到 $\mathcal{D}$ 的全体（协变）函子；
> - **态射**：$\mathrm{Hom}_{[\mathcal{C}, \mathcal{D}]}(F, G) = $ 从 $F$ 到 $G$ 的全体自然变换，也记作 $\mathrm{Nat}(F, G)$；
> - **复合**：自然变换的垂直复合；
> - **恒等态射**：恒等自然变换 $\mathrm{id}_F$。

<!-- functor_category_is_category -->
> [!Theorem]
> **函子范畴是范畴 Functor Category is a Category**：上述定义的 $[\mathcal{C}, \mathcal{D}]$ 满足范畴公理。
>
> **证明思路**：结合律与单位律由垂直复合的相应性质（分量级别归结为 $\mathcal{D}$ 中态射的结合律与单位律）保证；自然性在垂直复合下封闭，已在 [[definition_of_natural_transformation|自然变换的定义]] 中验证。

> **注**：若 $\mathcal{C}$ 不是小范畴，$\mathrm{Nat}(F, G)$ 可能是真类而非集合，此时需借助宇宙（universe）方能使 $[\mathcal{C}, \mathcal{D}]$ 成为范畴。当 $\mathcal{C}$ 为小范畴时，$[\mathcal{C}, \mathcal{D}]$ 是局部小的。

## 函子范畴的例子

<!-- functor_category_example_presheaf -->
> [!Example]+
> **预层范畴 Presheaf Category**：设 $\mathcal{C}$ 为小范畴。函子范畴 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 称为 $\mathcal{C}$ 上的**预层范畴**，常记作 $\widehat{\mathcal{C}}$ 或 $\mathrm{PSh}(\mathcal{C})$。其对象是反变集值函子（即**集合值预层**），态射是自然变换。Yoneda 嵌入（见 [[yoneda_embedding]]）将 $\mathcal{C}$ 全忠实地嵌入 $\widehat{\mathcal{C}}$。

<!-- functor_category_example_ab_valued -->
> [!Example]+
> **阿贝尔群值函子范畴**：$[\mathcal{C}^{\mathrm{op}}, \mathbf{Ab}]$（$\mathcal{C}$ 小）是阿贝尔群值预层的范畴，具有良好的代数结构（是阿贝尔范畴），是代数几何与同调代数的基础。

<!-- functor_category_example_diagrams -->
> [!Example]+
> **图表范畴**：设 $\mathcal{I}$ 为小范畴（**指标范畴**）。函子范畴 $[\mathcal{I}, \mathcal{C}]$ 的对象即 $\mathcal{I}$ 形状的**图表** $D: \mathcal{I} \to \mathcal{C}$，态射即图表间的自然变换。极限与余极限正是在此范畴中讨论（见 [[diagram_and_cone]]）。

<!-- functor_category_example_cat -->
> [!Example]+
> **$\mathbf{Cat}$ 中的函子范畴**：在小范畴的范畴 $\mathbf{Cat}$ 中，两小范畴 $\mathcal{C}, \mathcal{D}$ 之间的"内部 Hom"正是函子范畴 $[\mathcal{C}, \mathcal{D}]$；这赋予 $\mathbf{Cat}$ 笛卡尔闭结构（见 [[cartesian_closed_category]]）。

<!-- functor_category_example_two_objects -->
> [!Example]+
> **形状为 $\mathbf{2}$ 的函子范畴**：设 $\mathbf{2}$ 为仅含两个对象 $0, 1$ 和一个非恒等态射 $0 \to 1$ 的范畴。函子范畴 $[\mathbf{2}, \mathcal{C}]$ 与 $\mathcal{C}$ 中的**态射范畴**（morphism category / arrow category）$\mathcal{C}^{\to}$ 等价：对象为 $\mathcal{C}$ 中的态射 $f: A \to B$，从 $f: A \to B$ 到 $g: C \to D$ 的态射为使方块交换的态射对 $(u: A \to C, v: B \to D)$。
