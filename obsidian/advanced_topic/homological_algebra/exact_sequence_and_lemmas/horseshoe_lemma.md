# 马蹄引理

## 马蹄引理（投射情形）

<!-- horseshoe_lemma_projective -->
> [!Lemma]
> **马蹄引理（投射情形）Horseshoe Lemma (Projective Case)**：设 $0 \to A' \xrightarrow{\alpha} A \xrightarrow{\beta} A'' \to 0$ 是 $R$-模的短正合列，且
> $$
> P'_\bullet \xrightarrow{\varepsilon'} A' \to 0, \quad P''_\bullet \xrightarrow{\varepsilon''} A'' \to 0
> $$
> 分别是 $A'$ 和 $A''$ 的投射分解。则存在 $A$ 的投射分解 $P_\bullet \xrightarrow{\varepsilon} A \to 0$，其中 $P_n = P'_n \oplus P''_n$，使得下图的三行均为链复形的短正合列（且各行为分解）：
> $$
> \begin{align*}
> 0 \to P'_\bullet \to P_\bullet \to P''_\bullet \to 0 \\
> \downarrow \varepsilon' \quad\quad \downarrow \varepsilon \quad\quad \downarrow \varepsilon'' \\
> 0 \to A' \xrightarrow{\alpha} A \xrightarrow{\beta} A'' \to 0
> \end{align*}
> $$
>
> **证明思路**：对每个 $n \geq 0$，令 $P_n = P'_n \oplus P''_n$（直和仍投射）。微分 $\partial^P_n: P_n \to P_{n-1}$ 构造为：
> $$
> \partial^P_n(p', p'') = (\partial^{P'}_{n}(p') + s_n(p''),\; \partial^{P''}_{n}(p'')),
> $$
> 其中 $s_n: P''_n \to P'_{n-1}$ 是待定提升（"马蹄"的形状），由 $P''_n$ 的投射性和归纳构造得到（保证 $(\partial^P)^2 = 0$）。增广映射 $\varepsilon: P_0 \to A$ 定义为 $\varepsilon(p', p'') = \alpha(\varepsilon'(p')) + \tilde{\varepsilon}''(p'')$，其中 $\tilde{\varepsilon}'': P''_0 \to A$ 是 $\varepsilon'': P''_0 \to A''$ 经 $\beta$ 的提升（由 $\beta$ 满且 $P''_0$ 投射）。归纳验证 $P_\bullet \to A \to 0$ 正合。

## 马蹄引理（入射情形）

<!-- horseshoe_lemma_injective -->
> [!Lemma]
> **马蹄引理（入射情形）Horseshoe Lemma (Injective Case)**：设 $0 \to A' \to A \to A'' \to 0$ 是 $R$-模的短正合列，且
> $$
> 0 \to A' \xrightarrow{\eta'} I'^\bullet, \quad 0 \to A'' \xrightarrow{\eta''} I''^\bullet
> $$
> 分别是 $A'$ 和 $A''$ 的入射分解。则存在 $A$ 的入射分解 $0 \to A \xrightarrow{\eta} I^\bullet$，其中 $I^n = I'^n \oplus I''^n$，使得三行均为上链复形的短正合列：
> $$
> \begin{align*}
> 0 \to A' \to A \to A'' \to 0 \\
> \downarrow \eta' \quad \downarrow \eta \quad \downarrow \eta'' \\
> 0 \to I'^\bullet \to I^\bullet \to I''^\bullet \to 0
> \end{align*}
> $$
>
> **证明思路**：与投射情形对偶。微分和增广由入射性提升构造，"马蹄"形状是投射情形的对偶。

## 与导出函子长正合列的关系

<!-- horseshoe_lemma_derived_functor_application -->
> [!Proposition]
> **马蹄引理为导出函子长正合列服务 Horseshoe Lemma and Long Exact Sequences of Derived Functors**：马蹄引理保证了：对短正合列 $0 \to A' \to A \to A'' \to 0$，存在对应分解的链复形短正合列 $0 \to P'_\bullet \to P_\bullet \to P''_\bullet \to 0$。对任意右正合加性函子 $F$（或左正合加性函子），将 $F$ 作用于此分解序列后，仍得到链复形的短正合列，从而可应用同调长正合列定理，诱导导出函子的长正合列：
> $$
> \cdots \to L_n F(A') \to L_n F(A) \to L_n F(A'') \to L_{n-1}F(A') \to \cdots
> $$
>
> **证明思路**：由马蹄引理，$0 \to P'_n \to P_n \to P''_n \to 0$ 是分裂短正合列（因 $P_n = P'_n \oplus P''_n$），故 $F$ 作用后（加性函子保分裂短正合列）仍正合，从而 $0 \to F(P'_\bullet) \to F(P_\bullet) \to F(P''_\bullet) \to 0$ 是链复形的短正合列，长正合列由定理给出。

> **注**：马蹄引理的关键在于分解之间形成分裂短正合列（$P_n = P'_n \oplus P''_n$ 的直和结构），这使得任何加性函子作用后短正合性均保持，从而避免了一般短正合列经函子作用后可能失去正合性的问题。
