# 几何 Satake 与 Langlands 导向

## 卷积范畴中的对偶群

<!-- geometric_affine_grassmannian_definition -->
> [!Definition]
> **仿射 Grassmannian Affine Grassmannian**：设 $G$ 为复连通约化群，记 $\mathcal{O}=\mathbb{C}[[t]]$ 与 $\mathcal{K}=\mathbb{C}((t))$。其仿射 Grassmannian 是 ind-代数簇
> $$
> \operatorname{Gr}_G=G(\mathcal{K})/G(\mathcal{O}).
> $$
> 它参数化 $G$-丛在形式圆盘上的平凡化修改；$G(\mathcal{O})$-轨道由余权格中的优势余权标记。

<!-- geometric_satake_convolution_definition -->
> [!Definition]
> **Satake 卷积 Satake Convolution**：在 $G(\mathcal{O})$-等变 perverse sheaf 范畴中，卷积由卷积图的适当推前定义，记为 $\mathcal{F}\star\mathcal{G}$。经过适当移位后，卷积保持 perverse sheaf 并赋予该范畴对称幺半结构。

<!-- geometric_satake_equivalence -->
> [!Theorem]
> **几何 Satake 等价 Geometric Satake Equivalence**：对特征零系数域，有张量范畴等价
> $$
> \operatorname{Perv}_{G(\mathcal{O})}(\operatorname{Gr}_G)
> \simeq\operatorname{Rep}(\widehat{G}),
> $$
> 其中 $\widehat{G}$ 是 $G$ 的 Langlands 对偶群。等价把卷积对应为张量积，并将每个优势余权轨道闭包的交叉上同调复形对应为相应最高权不可约表示。
>
> **证明思路**：以总上同调为纤维函子，借助卷积的交换约束得到 Tannakian 范畴。分析轨道闭包的权重函子可识别其 Tannaka 对偶为根数据对偶的群 $\widehat{G}$。

<!-- geometric_spherical_hecke_categorification -->
> [!Proposition]
> **球面 Hecke 代数的范畴化 Categorification of the Spherical Hecke Algebra**：在有限域上的适当函数--层对应下，$G(\mathcal{O})$-等变 perverse sheaf 的卷积迹函数形成球面 Hecke 代数；几何 Satake 等价在 Grothendieck 群上恢复经典 Satake 同构。
>
> **证明思路**：卷积与函数卷积相容，故其 Grothendieck 群映到球面 Hecke 代数。几何 Satake 将此乘法识别为 $\widehat{G}$ 表示环的张量积乘法。

<!-- geometric_langlands_orientation_concept -->
> [!Concept]
> **几何 Langlands 导向 Geometric Langlands Orientation**：若 $C$ 是光滑射影曲线，几何 Langlands 寻求将 $G$-局部系统（或对偶群 $\widehat{G}$-局部系统）与 $G$-丛模空间上的 Hecke 本征层联系起来。几何 Satake 提供局部 Hecke 修改的表示论模型，因此是从自守调和分析走向几何 Langlands 的基本局部机制。

> **来源**：Ivan Mirkovic and Kari Vilonen, "Geometric Langlands duality and representations of algebraic groups over commutative rings", *Annals of Mathematics* 166 (2007)；Dennis Gaitsgory and Jacob Lurie, *Weil's Conjecture for Function Fields*。
