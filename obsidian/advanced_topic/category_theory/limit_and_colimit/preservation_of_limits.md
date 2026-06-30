# 极限的保持、反射与创建

## 保持极限

<!-- preserve_limit_def -->
> [!Definition]
> **保持极限 Preservation of Limits**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**保持极限**（对指标范畴 $\mathcal{I}$），若对每个图表 $D: \mathcal{I} \to \mathcal{C}$，若 $(\lim D, \pi)$ 是 $D$ 在 $\mathcal{C}$ 中的极限，则 $(F(\lim D), F \circ \pi)$ 是 $F \circ D: \mathcal{I} \to \mathcal{D}$ 在 $\mathcal{D}$ 中的极限；即存在自然同构
> $$
> F(\lim D) \cong \lim(F \circ D).
> $$

<!-- preserve_colimit_def -->
> [!Definition]
> **保持余极限 Preservation of Colimits**：类似地，函子 $F$ 称为**保持余极限**，若将余极限映为余极限，即 $F(\operatorname{colim} D) \cong \operatorname{colim}(F \circ D)$。

<!-- continuous_functor_def -->
> [!Definition]
> **连续函子与余连续函子**：若函子 $F: \mathcal{C} \to \mathcal{D}$ 保持所有（小）极限，则称 $F$ 为**连续函子**（continuous functor）；若保持所有小余极限，则称为**余连续函子**（cocontinuous functor）。

## 反射极限

<!-- reflect_limit_def -->
> [!Definition]
> **反射极限 Reflection of Limits**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**反射极限**（对指标范畴 $\mathcal{I}$），若对图表 $D: \mathcal{I} \to \mathcal{C}$，只要 $(F(\lim D), F \circ \pi)$ 是 $F \circ D$ 在 $\mathcal{D}$ 中的极限，则 $(\lim D, \pi)$ 已是 $D$ 在 $\mathcal{C}$ 中的极限。

## 创建极限

<!-- create_limit_def -->
> [!Definition]
> **创建极限 Creation of Limits**：函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**创建极限**（对指标范畴 $\mathcal{I}$），若对图表 $D: \mathcal{I} \to \mathcal{C}$，当 $F \circ D$ 在 $\mathcal{D}$ 中的极限存在时，$D$ 在 $\mathcal{C}$ 中存在唯一使 $F$ 保持的极限（即存在唯一的锥 $(\ell, \lambda)$ 使得 $(F(\ell), F \circ \lambda)$ 为 $F \circ D$ 的极限，且 $(\ell, \lambda)$ 为 $D$ 的极限）。

> **注**：创建极限 $\Rightarrow$ 保持极限 $+$ 反射极限；反之不然。忘却函子常创建极限（见下方例子）。

## 基本定理

<!-- right_adjoint_preserves_limits -->
> [!Theorem]
> **右伴随保持极限 RAPL：Right Adjoints Preserve Limits**：若 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$ 左伴随，$G: \mathcal{D} \to \mathcal{C}$ 右伴随），则 $G$ 保持所有（小）极限。
>
> **证明思路**：对图表 $D: \mathcal{I} \to \mathcal{D}$ 的极限 $(\lim D, \pi)$，用伴随的 Hom 集自然同构：
> $$
> \mathrm{Hom}_{\mathcal{C}}(X, G(\lim D)) \cong \mathrm{Hom}_{\mathcal{D}}(F(X), \lim D) \cong \mathrm{Nat}(\Delta_{F(X)}, D) \cong \mathrm{Nat}(\Delta_X, G \circ D) \cong \mathrm{Hom}_{\mathcal{C}}(X, \lim(G \circ D)),
> $$
> 其中最后一步用了 $G \circ D$ 的极限的 Yoneda 刻画。由 Yoneda 引理，$G(\lim D) \cong \lim(G \circ D)$。

<!-- left_adjoint_preserves_colimits -->
> [!Theorem]
> **左伴随保持余极限 LAPC：Left Adjoints Preserve Colimits**：若 $F \dashv G$，则 $F$ 保持所有（小）余极限。
>
> **证明思路**：由对偶原理与 RAPL 立得。

<!-- forgetful_creates_limits -->
> [!Theorem]
> **遗忘函子创建极限 Forgetful Functors Create Limits**：许多代数范畴上的遗忘函子创建（小）极限，例如：$U: \mathbf{Grp} \to \mathbf{Set}$、$U: R\text{-}\mathbf{Mod} \to \mathbf{Set}$、$U: \mathbf{Top} \to \mathbf{Set}$ 均创建极限（对应的极限在底层集合上构造，然后赋予相应结构）。
>
> **证明思路**（以 $\mathbf{Grp}$ 为例）：设 $D: \mathcal{I} \to \mathbf{Grp}$，$U \circ D$ 在 $\mathbf{Set}$ 中有极限 $(\ell, \lambda)$。在 $\ell$ 上定义分量级别的群运算（由投影与各 $D(i)$ 的运算确定）；验证此运算使 $\ell$ 成群、$\lambda_i$ 均为群同态，且 $(\ell, \lambda)$ 满足 $\mathbf{Grp}$ 中极限的泛性质。

## 例子

<!-- preservation_example_hom -->
> [!Example]+
> **Hom 函子保持极限**：对固定对象 $A$，协变 Hom 函子 $\mathrm{Hom}(A, -): \mathcal{C} \to \mathbf{Set}$ 保持极限（因为它是右伴随 $-$ 对某个左伴随的右伴随，或直接由 RAPL 的应用：它是 Yoneda 嵌入后的切片，关于伴随可参见后续章节）。更直接地，$\mathrm{Hom}(A, \lim D) \cong \lim \mathrm{Hom}(A, D(-))$（由极限的 Yoneda 刻画）。

<!-- preservation_example_tensor -->
> [!Example]+
> **张量函子保持余极限**：对固定 $R$-模 $M$，张量函子 $M \otimes_R -: R\text{-}\mathbf{Mod} \to \mathbf{Ab}$ 是左伴随（伴随于 $\mathrm{Hom}_R(M, -)$），故保持所有余极限，特别地保持直和 $M \otimes_R \bigoplus_i N_i \cong \bigoplus_i (M \otimes_R N_i)$ 与余等化子。但 $M \otimes_R -$ 一般不保持极限（不平坦时不保持等化子，即不正合）。

<!-- preservation_example_diagonal -->
> [!Example]+
> **对角函子与积/余积**：对角函子 $\Delta: \mathcal{C} \to \mathcal{C} \times \mathcal{C}$，$A \mapsto (A, A)$ 与积函子 $\times: \mathcal{C} \times \mathcal{C} \to \mathcal{C}$ 构成伴随 $\Delta \dashv \times$（即 $\mathrm{Hom}(A, B \times C) \cong \mathrm{Hom}(A, B) \times \mathrm{Hom}(A, C)$）；对称地 $\sqcup \dashv \Delta$（即 $\mathrm{Hom}(B \sqcup C, A) \cong \mathrm{Hom}(B, A) \times \mathrm{Hom}(C, A)$）。由 RAPL/LAPC，积函子（右伴随）保持极限，余积函子（左伴随）保持余极限。
