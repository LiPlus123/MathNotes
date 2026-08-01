# 诱导表示与 Mackey 理论

## 从闭子群构造表示

<!-- abstract_induced_representation_realization -->
> [!Definition]
> **诱导表示的实现 Realization of an Induced Representation**：设 $H$ 为局部紧群 $G$ 的闭子群，$\sigma$ 为 $H$ 的酉表示。$\operatorname{Ind}_H^G\sigma$ 可在协变函数空间上实现；若商空间测度需要修正，则协变条件含有由 $\Delta_G$ 与 $\Delta_H$ 给出的平方根密度因子。$G$ 通过左平移作用于该函数空间。

<!-- abstract_frobenius_reciprocity -->
> [!Theorem]
> **Frobenius 互反性 Frobenius Reciprocity**：在适当的表示范畴和技术假设下，诱导与限制互为伴随，形式上表现为
> $$
> \operatorname{Hom}_G\bigl(\operatorname{Ind}_H^G\sigma,\pi\bigr)
> \cong\operatorname{Hom}_H\bigl(\sigma,\operatorname{Res}_H^G\pi\bigr).
> $$
> 对紧群或有限群，这一同构直接刻画不可约表示的重数；局部紧群情形需依赖所选的光滑、酉或可容许表示范畴。
>
> **证明思路**：从 $G$-intertwining 算子取单位陪集处的值，得到 $H$-intertwining 算子；反向以协变函数的积分或紧支撑模型延拓，验证二者互逆。

<!-- abstract_compact_induction_definition -->
> [!Definition]
> **紧诱导 Compact Induction**：若 $H\leq G$ 为闭子群，紧诱导 $\operatorname{c\!\text{-}Ind}_H^G\sigma$ 由满足协变条件且在 $G/H$ 上具有紧支撑的函数构成。它在全不连通局部紧群的光滑表示理论中尤其重要。

<!-- abstract_mackey_machine_note -->
> [!Theorem]
> **Mackey 机器 Mackey Machine**：对形如 $G=N\rtimes H$ 的适当半直积群，Mackey 理论以 $H$ 在 $\widehat N$ 上的轨道和稳定子为参数，构造并分类 $G$ 的不可约酉表示。该方法适用于许多可解 Lie 群和运动群。
>
> **证明思路**：先由 Pontryagin 对偶描述正规 Abel 子群 $N$ 的不可约表示；再对每个轨道代表元的稳定子表示作诱导，并用轨道分解控制等价关系。

<!-- abstract_parabolic_induction_note -->
> [!Definition]
> **抛物诱导 Parabolic Induction**：在约化代数群或半单 Lie 群中，从抛物子群 $P=MAN$ 的表示构造到 $G$ 的表示称为抛物诱导（常取归一化诱导）。主级数表示是从极小抛物子群诱导得到的基本例子。

> **来源**：George W. Mackey, *Induced Representations of Groups and Quantum Mechanics*；Anthony W. Knapp, *Representation Theory of Semisimple Groups*。
