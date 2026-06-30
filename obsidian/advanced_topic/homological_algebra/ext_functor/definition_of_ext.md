# Ext 的定义

## Ext 的导出函子定义

<!-- ext_right_derived_def -->
> [!Definition]
> **Ext 的定义 Ext via Right Derived Functor**：设 $R$ 是环，$A,B$ 是左 $R$-模。定义
> $$
> \mathrm{Ext}_R^n(A,B) := R^n\mathrm{Hom}_R(A,-)(B), \quad n\ge 0,
> $$
> 即把左正合加性函子 $\mathrm{Hom}_R(A,-): R\text{-}\mathbf{Mod}\to \mathbf{Ab}$ 对第二变量做右导出。
>
> 若 $0\to B\to I^\bullet$ 是 $B$ 的入射分解，则
> $$
> \mathrm{Ext}_R^n(A,B) \cong H^n\!\bigl(\mathrm{Hom}_R(A,I^\bullet)\bigr).
> $$

## 用投射分解计算 Ext

<!-- ext_via_projective_resolution -->
> [!Proposition]
> **Ext 的投射分解计算 Ext via Projective Resolution**：取 $A$ 的投射分解 $P_\bullet\to A\to0$，则
> $$
> \mathrm{Ext}_R^n(A,B) \cong H^n\!\bigl(\mathrm{Hom}_R(P_\bullet,B)\bigr).
> $$
> 这里右边复形是余链复形：
> $$
> 0\to \mathrm{Hom}_R(P_0,B)\to \mathrm{Hom}_R(P_1,B)\to \mathrm{Hom}_R(P_2,B)\to\cdots.
> $$

## 平衡性表述

<!-- ext_balanced_definition -->
> [!Theorem]
> **Ext 的平衡性 Balancedness of Ext**：对任意 $A,B$ 与 $n\ge0$，有自然同构
> $$
> R^n\mathrm{Hom}_R(A,-)(B) \cong R^n\mathrm{Hom}_R(-,B)(A),
> $$
> 即 Ext 既可由第二变量的入射分解计算，也可由第一变量的投射分解计算。
>
> **证明思路**：由比较定理知两边对分解选取不敏感；再通过双复形（或 Cartan-Eilenberg 分解）比较两种上同调，得到自然同构。

## 零次项

<!-- ext_degree_zero_hom -->
> [!Corollary]
> **零次 Ext 与 Hom Ext\textsuperscript{0} equals Hom**：
> $$
> \mathrm{Ext}_R^0(A,B) \cong \mathrm{Hom}_R(A,B).
> $$
>
> **证明思路**：这是右导出函子的一般性质 $R^0G\cong G$ 应用于 $G=\mathrm{Hom}_R(A,-)$ 的直接结论。

> **注**：Ext 的定义本质上度量了 Hom 在"不正合"方向上的缺失程度；高次 Ext 越大，表示对象偏离投射/入射越显著。