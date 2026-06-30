# Ext 的基本性质

## Ext 的零次项

<!-- ext0_is_hom_property -->
> [!Proposition]
> **Ext\textsuperscript{0} 等于 Hom Ext\textsuperscript{0} equals Hom**：对任意左 $R$-模 $A,B$，
> $$
> \mathrm{Ext}_R^0(A,B) \cong \mathrm{Hom}_R(A,B).
> $$

## 投射对象判别

<!-- projective_via_ext_characterization -->
> [!Theorem]
> **投射模的 Ext 判别 Characterization of Projectives by Ext**：对左 $R$-模 $A$，以下命题等价：
> 1. $A$ 是投射模；
> 2. 对任意左 $R$-模 $M$ 与任意 $n\ge1$，
> $$
> \mathrm{Ext}_R^n(A,M)=0;
> $$
> 3. 对任意左 $R$-模 $M$，
> $$
> \mathrm{Ext}_R^1(A,M)=0.
> $$
>
> **证明思路**：
> - $1\Rightarrow2$：投射模的长度 $0$ 投射分解给出高次 Ext 消失；
> - $2\Rightarrow3$：显然；
> - $3\Rightarrow1$：对任意满射 $E\twoheadrightarrow A$，短正合列 $0\to K\to E\to A\to0$ 的扩张类在 $\mathrm{Ext}_R^1(A,K)$ 中为零，故该列分裂，得 $A$ 为投射直和项。

## 入射对象判别

<!-- injective_via_ext_characterization -->
> [!Theorem]
> **入射模的 Ext 判别 Characterization of Injectives by Ext**：对左 $R$-模 $B$，以下命题等价：
> 1. $B$ 是入射模；
> 2. 对任意左 $R$-模 $M$ 与任意 $n\ge1$，
> $$
> \mathrm{Ext}_R^n(M,B)=0;
> $$
> 3. 对任意左 $R$-模 $M$，
> $$
> \mathrm{Ext}_R^1(M,B)=0.
> $$
>
> **证明思路**：与投射判别对偶。特别地，$\mathrm{Ext}_R^1(-,B)=0$ 等价于每个以 $B$ 为核的短正合列分裂。

## 对短正合列的长正合性

<!-- ext_half_exactness_property -->
> [!Proposition]
> **Ext 在每个变量上的长正合性 Long Exactness in Each Variable**：固定 $A$ 时，函子 $\mathrm{Ext}_R^n(A,-)$ 构成上同调 $\delta$-函子；固定 $B$ 时，函子 $\mathrm{Ext}_R^n(-,B)$ 在第一变量反变并给出对应长正合列（方向反转）。

> **注**：这些性质使 Ext 成为同调代数中最核心的双变量不变量之一，后续 Ext 的长正合列与扩张分类均以此为基础。