# 阿贝尔范畴

## 阿贝尔范畴的定义

<!-- abelian_category_def -->
> [!Definition]
> **阿贝尔范畴 Abelian Category**：一个**阿贝尔范畴**（abelian category）是满足以下条件的范畴 $\mathcal{A}$：
> 1. $\mathcal{A}$ 是加法范畴（预加法、有零对象、有有限双积）；
> 2. $\mathcal{A}$ 中每个态射都有**核**（kernel）与**余核**（cokernel）；
> 3. 每个单态射（monomorphism）均为**正规单态射**（normal monomorphism）：即是某态射的核；
> 4. 每个满态射（epimorphism）均为**正规满态射**（normal epimorphism）：即是某态射的余核。

> **注**：条件 3 和 4 合称"单/满态射的正规性"。在满足条件 1、2 的范畴中，若还满足 3 和 4，则典范态射 $\bar{f}: \mathrm{coim}\, f \to \mathrm{im}\, f$ 自动为同构（见下方典范分解定理），这是阿贝尔范畴的核心性质。

## 单/满态射的正规性

<!-- normal_mono_epi -->
> [!Definition]
> **正规单态射与正规满态射 Normal Monomorphism and Normal Epimorphism**：
> - **正规单态射**（normal monomorphism）：态射 $m: A \to B$，存在 $f: B \to C$ 使得 $m = \ker f$；
> - **正规满态射**（normal epimorphism）：态射 $e: A \to B$，存在 $g: C \to A$ 使得 $e = \mathrm{coker}\, g$。
>
> 在阿贝尔范畴中，$m$ 是单态射 $\Leftrightarrow$ $m$ 是正规单态射；$e$ 是满态射 $\Leftrightarrow$ $e$ 是正规满态射。

> **注**：在 $R\text{-}\mathbf{Mod}$ 中，单态射（单射模同态）即为子模的嵌入（正规：$m = \ker(\mathrm{coker}\, m)$）；满态射（满射模同态）即为商模的投影（正规：$e = \mathrm{coker}(\ker e)$）。

## 典范分解

<!-- canonical_decomposition -->
> [!Theorem]
> **典范分解定理 Canonical Decomposition**：设 $\mathcal{A}$ 是阿贝尔范畴，$f: A \to B$ 是态射。则 $f$ 有唯一分解：
> $$
> A \xrightarrow{p} \mathrm{coim}\, f \xrightarrow{\bar{f}} \mathrm{im}\, f \xrightarrow{\iota} B,
> $$
> 其中 $p: A \twoheadrightarrow \mathrm{coim}\, f$ 是正规满态射（满态射），$\iota: \mathrm{im}\, f \hookrightarrow B$ 是正规单态射（单态射），$\bar{f}: \mathrm{coim}\, f \xrightarrow{\sim} \mathrm{im}\, f$ 是**同构**。
>
> **证明思路**：由阿贝尔范畴公理，典范态射 $\bar{f}$ 既是单态射（因 $\ker \bar{f} = 0$）又是满态射（因 $\mathrm{coker}\, \bar{f} = 0$），再由正规性知单且满的态射为同构。

> **注**：典范分解表明阿贝尔范畴中每个态射均分解为"满射+同构+单射"，类比向量空间线性映射的秩-零化度定理。

## 例子

<!-- abelian_category_examples -->
> [!Example]+
> **阿贝尔范畴的例子**：
> 1. **$R$-模范畴 $R\text{-}\mathbf{Mod}$**（$R$ 为环）：最典型的阿贝尔范畴。对象为左 $R$-模，态射为 $R$-模同态；核、余核、像均为通常意义下的核、商模、像子模。
> 2. **阿贝尔群范畴 $\mathbf{Ab}$**：$\mathbf{Ab} = \mathbb{Z}\text{-}\mathbf{Mod}$，是 $R\text{-}\mathbf{Mod}$ 的特例。
> 3. **有限阿贝尔群范畴 $\mathbf{Ab}^{\mathrm{fin}}$**：$\mathbf{Ab}$ 的满子范畴，也是阿贝尔范畴。
> 4. **阿贝尔层范畴 $\mathrm{Sh}(X, \mathbf{Ab})$**：拓扑空间 $X$ 上阿贝尔群层的范畴，是阿贝尔范畴（核为逐点核的层，余核为对应预层的层化）。
> 5. **函子范畴 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Ab}]$**：对任意小范畴 $\mathcal{C}$，$\mathbf{Ab}$-值预层范畴是阿贝尔范畴，极限与余极限逐点计算。
> 6. **非例子**：$\mathbf{Top}$（拓扑空间范畴）不是阿贝尔范畴（Hom 集无自然群结构）；$\mathbf{Grp}$（群范畴）不是阿贝尔范畴（非交换群范畴中满态射不都是正规满态射）。

<!-- abelian_opposite -->
> [!Theorem]
> **对偶性**：若 $\mathcal{A}$ 是阿贝尔范畴，则对偶范畴 $\mathcal{A}^{\mathrm{op}}$ 也是阿贝尔范畴（核与余核、单与满、像与余像互换）。
>
> **证明思路**：验证 $\mathcal{A}^{\mathrm{op}}$ 满足阿贝尔范畴的所有条件——各条件在对偶下不变或互换后仍成立。
