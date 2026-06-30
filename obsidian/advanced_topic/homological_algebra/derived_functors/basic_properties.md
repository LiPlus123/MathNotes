# 导出函子的基本性质

## 零次导出与原函子

<!-- left_derived_degree_zero -->
> [!Theorem]
> **零次左导出 Zero-th Left Derived Functor**：若 $F: R\text{-}\mathbf{Mod} \to S\text{-}\mathbf{Mod}$ 是右正合加性函子，则存在自然同构
> $$
> L_0F \cong F.
> $$
>
> **证明思路**：取 $M$ 的投射分解 $P_1 \to P_0 \to M \to 0$。右正合性给出
> $$
> F(P_1) \to F(P_0) \to F(M) \to 0
> $$
> 正合，故
> $$
> H_0(F(P_\bullet)) = \mathrm{coker}(F(P_1)\to F(P_0)) \cong F(M).
> $$

<!-- right_derived_degree_zero -->
> [!Theorem]
> **零次右导出 Zero-th Right Derived Functor**：若 $G: R\text{-}\mathbf{Mod} \to S\text{-}\mathbf{Mod}$ 是左正合加性函子，则存在自然同构
> $$
> R^0G \cong G.
> $$
>
> **证明思路**：取入射分解 $0\to M\to I^0\to I^1$。左正合性给出
> $$
> 0\to G(M)\to G(I^0)\to G(I^1)
> $$
> 正合，故 $H^0(G(I^\bullet))\cong G(M)$。

## 在投射对象/入射对象上的消失

<!-- left_derived_vanish_on_projective -->
> [!Proposition]
> **左导出在投射对象上高次为零 Vanishing of Left Derived Functors on Projectives**：若 $P$ 是投射 $R$-模，则
> $$
> L_nF(P)=0, \quad n\ge1.
> $$
>
> **证明思路**：$P$ 的长度 $0$ 投射分解为 $0\to P\xrightarrow{\mathrm{id}}P\to0$（或视为仅 $P_0=P$ 非零），作用 $F$ 后高次同调全为零。

<!-- right_derived_vanish_on_injective -->
> [!Proposition]
> **右导出在入射对象上高次为零 Vanishing of Right Derived Functors on Injectives**：若 $I$ 是入射 $R$-模，则
> $$
> R^nG(I)=0, \quad n\ge1.
> $$
>
> **证明思路**：$I$ 的长度 $0$ 入射分解为 $0\to I\xrightarrow{\mathrm{id}}I\to0$，作用 $G$ 后高次上同调为零。

## 维数界带来的消失

<!-- derived_functor_vanishing_by_dimension -->
> [!Corollary]
> **由同调维数控制的消失 Vanishing Controlled by Homological Dimensions**：
> - 若 $\mathrm{pd}_R(M) \le d$，则对任意右正合加性函子 $F$，
> $$
> L_nF(M)=0 \quad (n>d).
> $$
> - 若 $\mathrm{id}_R(M) \le d$，则对任意左正合加性函子 $G$，
> $$
> R^nG(M)=0 \quad (n>d).
> $$

> **注**：这些性质使导出函子可用来度量对象偏离投射/入射的程度，是定义投射维数、入射维数和全局维数的核心工具。