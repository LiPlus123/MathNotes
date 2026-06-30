# 入射分解

## 入射模

<!-- injective_module_def -->
> [!Definition]
> **入射模 Injective Module**：左 $R$-模 $I$ 称为**入射的**（injective），若以下等价条件之一成立：
> 1. 对任意单态射 $\iota: A \hookrightarrow B$ 和 $R$-模同态 $f: A \to I$，存在扩张 $\tilde{f}: B \to I$ 使 $\tilde{f} \circ \iota = f$；
> 2. $\mathrm{Hom}_R(-, I)$ 是正合函子（即将短正合列变为短正合列）；
> 3. $I$ 是任意包含它的模的直和项（入射模是"可收缩的"）。

<!-- baer_criterion -->
> [!Theorem]
> **Baer 判别法 Baer's Criterion**：左 $R$-模 $I$ 是入射模，当且仅当对 $R$ 的每个左理想 $J \trianglelefteq R$ 和 $R$-模同态 $f: J \to I$，均存在扩张 $\tilde{f}: R \to I$（即 $f$ 可延拓至整个 $R$）。
>
> **证明思路**：充分性由 Zorn 引理得到：设 $A \subseteq B$，$f: A \to I$；令 $\mathcal{F}$ 为所有 $(A', f')$（$A \subseteq A' \subseteq B$，$f'$ 是 $f$ 在 $A'$ 上的扩张）的集合，按包含关系取极大元，利用 Baer 条件排除极大元 $A' \subsetneq B$ 的可能性。

## 入射分解的定义

<!-- injective_resolution_def -->
> [!Definition]
> **入射分解 Injective Resolution**：左 $R$-模 $M$ 的一个**入射分解**（injective resolution）是正合序列：
> $$
> 0 \to M \xrightarrow{\eta} I^0 \xrightarrow{d^0} I^1 \xrightarrow{d^1} I^2 \to \cdots,
> $$
> 其中每个 $I^n$（$n \geq 0$）均是入射 $R$-模。等价地，$(I^\bullet, d)$ 是有下界的上链复形（$I^n = 0$ 对 $n < 0$），配以**余增广映射**（coaugmentation）$\eta: M \to I^0$，使得增广上链复形
> $$
> 0 \to M \xrightarrow{\eta} I^0 \to I^1 \to \cdots
> $$
> 正合（即 $H^0(I^\bullet) \cong M$ 且 $H^n(I^\bullet) = 0$ 对 $n \geq 1$）。

## 入射分解的存在性

<!-- injective_resolution_existence -->
> [!Theorem]
> **入射分解的存在性 Existence of Injective Resolutions**：$R\text{-}\mathbf{Mod}$ 有**充足的入射对象**（enough injectives），即每个左 $R$-模 $M$ 均可嵌入某入射模中。从而每个模均有入射分解。
>
> **证明思路（对 $\mathbb{Z}$-模即阿贝尔群）**：
> 1. **可除群是入射的**（见下）；
> 2. 每个阿贝尔群 $M$ 可嵌入可除群：将 $M$ 写为自由模 $F$ 的商，$0 \to K \to F \to M \to 0$；将 $F \cong \bigoplus_i \mathbb{Z}$ 嵌入 $\bigoplus_i \mathbb{Q}$（可除），从而 $M$ 嵌入可除商群 $(\bigoplus_i \mathbb{Q})/K$；
> 3. 对一般环 $R$，由忘却函子的右伴随构造（$I = \mathrm{Hom}_\mathbb{Z}(R, D)$，$D$ 为可除阿贝尔群）将阿贝尔群入射模提升为 $R$-模入射模。

## 可除阿贝尔群与 $\mathbb{Z}$-入射模

<!-- divisible_group_injective -->
> [!Theorem]
> **可除阿贝尔群是 $\mathbb{Z}$-入射模 Divisible Groups are Injective $\mathbb{Z}$-modules**：阿贝尔群（即 $\mathbb{Z}$-模）$D$ 是入射的，当且仅当 $D$ 是**可除的**（divisible），即对所有 $d \in D$ 和非零 $n \in \mathbb{Z}$，存在 $d' \in D$ 使 $nd' = d$。
>
> **典型例子**：$\mathbb{Q}$、$\mathbb{Q}/\mathbb{Z}$、$\mathbb{Q}/n\mathbb{Z} \cong \mathbb{Z}[1/n]/\mathbb{Z}$（$n \geq 1$）、$p$-Prüfer 群 $\mathbb{Z}(p^\infty) = \mathbb{Z}[p^{-1}]/\mathbb{Z}$ 均是可除阿贝尔群，从而是 $\mathbb{Z}$-入射模。
>
> **证明思路**：可除性等价于 Baer 判别法对 $\mathbb{Z}$ 的所有理想 $n\mathbb{Z}$ 成立，而 $\mathbb{Z}$ 的理想均是主理想，故可直接验证。

> **注**：$M$ 的**入射维数**（injective dimension）$\mathrm{id}_R(M)$ 定义为最短入射分解的长度（若 $M$ 本身是入射模则为 $0$）。环 $R$ 的**整体维数**（global dimension）$\mathrm{gl.dim}(R) = \sup_M \mathrm{pd}_R(M) = \sup_M \mathrm{id}_R(M)$。
