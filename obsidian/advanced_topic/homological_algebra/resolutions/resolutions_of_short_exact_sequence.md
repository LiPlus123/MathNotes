# 短正合列的分解

## 协调分解

<!-- compatible_resolutions_of_ses_def -->
> [!Definition]
> **短正合列的协调分解 Compatible Resolutions of a Short Exact Sequence**：设
> $$
> 0 \to A' \xrightarrow{\alpha} A \xrightarrow{\beta} A'' \to 0
> $$
> 是左 $R$-模短正合列。若存在 $A',A,A''$ 的投射分解
> $$
> P'_\bullet \to A' \to 0, \quad P_\bullet \to A \to 0, \quad P''_\bullet \to A'' \to 0,
> $$
> 使得
> $$
> 0 \to P'_\bullet \to P_\bullet \to P''_\bullet \to 0
> $$
> 是链复形的短正合列，且与增广映射兼容，则称这组三个分解是该短正合列的**协调分解**（compatible resolutions）。

## 马蹄引理给出的协调分解

<!-- compatible_resolutions_from_horseshoe -->
> [!Theorem]
> **马蹄引理给出协调投射分解 Compatible Projective Resolutions via Horseshoe Lemma**：设 $0 \to A' \to A \to A'' \to 0$ 是左 $R$-模短正合列。给定 $A'$ 和 $A''$ 的投射分解，则可构造 $A$ 的投射分解，使三者形成协调分解：
> $$
> 0 \to P'_\bullet \to P_\bullet \to P''_\bullet \to 0,
> $$
> 且逐次分裂：$P_n \cong P'_n \oplus P''_n$。
>
> **证明思路**：直接应用马蹄引理（投射情形）。由于每级是直和，短正合列在每级分裂，链级结构由"马蹄"提升项粘合得到。

<!-- compatible_injective_resolutions_from_horseshoe -->
> [!Corollary]
> **入射分解的对偶协调性 Dual Compatible Injective Resolutions**：对短正合列 $0 \to A' \to A \to A'' \to 0$，给定 $A'$ 和 $A''$ 的入射分解，也可构造 $A$ 的入射分解，使之形成上链复形短正合列
> $$
> 0 \to I'^\bullet \to I^\bullet \to I''^\bullet \to 0.
> $$
>
> **证明思路**：马蹄引理的入射对偶版本。

## 为导出函子长正合列服务

<!-- compatible_resolutions_derived_les -->
> [!Proposition]
> **协调分解导出导出函子长正合列 Compatible Resolutions Yield Long Exact Sequences of Derived Functors**：设 $F$ 是右正合加性函子。对短正合列 $0\to A'\to A\to A''\to 0$ 取马蹄引理给出的协调投射分解：
> $$
> 0 \to P'_\bullet \to P_\bullet \to P''_\bullet \to 0.
> $$
> 作用 $F$ 后得到链复形短正合列：
> $$
> 0 \to F(P'_\bullet) \to F(P_\bullet) \to F(P''_\bullet) \to 0,
> $$
> 从而同调长正合列给出：
> $$
> \cdots \to L_nF(A') \to L_nF(A) \to L_nF(A'') \xrightarrow{\delta_n} L_{n-1}F(A') \to \cdots \to L_0F(A'') \to 0.
> $$
>
> 对偶地，若 $G$ 是左正合加性函子，利用协调入射分解得到：
> $$
> 0 \to G(A') \to G(A) \to G(A'') \xrightarrow{\delta^0} R^1G(A') \to R^1G(A) \to R^1G(A'') \to \cdots.
> $$
>
> **证明思路**：关键是马蹄引理给出的逐次分裂短正合列，保证加性函子作用后短正合性仍成立，再应用链复形同调长正合列定理。

## 自然性

<!-- compatible_resolutions_naturality -->
> [!Proposition]
> **协调分解与连接同态的自然性 Naturality for Compatible Resolutions and Connecting Morphisms**：短正合列之间的交换态射诱导协调分解之间的链映射；由同调长正合列的自然性，连接同态 $\delta_n$（或 $\delta^n$）在这些态射下可交换。故由协调分解得到的导出函子长正合列是自然的。

> **注**：这一步是导出函子理论中的函子性核心，保证了 Ext、Tor 的长正合列不仅存在，而且与原短正合列的态射兼容。
