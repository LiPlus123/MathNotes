# 投射分解

## 投射模回顾

<!-- projective_module_def -->
> [!Definition]
> **投射模 Projective Module**：左 $R$-模 $P$ 称为**投射的**（projective），若以下等价条件之一成立：
> 1. 对任意满态射 $\pi: B \twoheadrightarrow C$ 和 $R$-模同态 $f: P \to C$，存在提升 $\tilde{f}: P \to B$ 使 $\pi \circ \tilde{f} = f$；
> 2. $\mathrm{Hom}_R(P, -)$ 是正合函子（即保短正合列）；
> 3. $P$ 是某自由模的直和项，即存在 $R$-模 $Q$ 使 $P \oplus Q$ 是自由模。

## 投射分解的定义

<!-- projective_resolution_def -->
> [!Definition]
> **投射分解 Projective Resolution**：左 $R$-模 $M$ 的一个**投射分解**（projective resolution）是一个正合序列：
> $$
> \cdots \to P_2 \xrightarrow{\partial_2} P_1 \xrightarrow{\partial_1} P_0 \xrightarrow{\varepsilon} M \to 0,
> $$
> 其中每个 $P_n$（$n \geq 0$）均是投射 $R$-模。等价地，$(P_\bullet, \partial)$ 是有下界的链复形（$P_n = 0$ 对 $n < 0$），配以**增广映射**（augmentation map）$\varepsilon: P_0 \to M$，使得增广链复形
> $$
> \cdots \to P_1 \to P_0 \xrightarrow{\varepsilon} M \to 0
> $$
> 正合（即 $(P_\bullet, \partial)$ 是 $M$ 的投射分解当且仅当 $H_0(P_\bullet) \cong M$ 且 $H_n(P_\bullet) = 0$ 对 $n \geq 1$）。

## 投射分解的存在性

<!-- projective_resolution_existence -->
> [!Theorem]
> **投射分解的存在性 Existence of Projective Resolutions**：每个左 $R$-模 $M$ 均有投射分解。
>
> **证明思路**：归纳构造。取 $P_0$ 为以 $M$ 的生成元为基的自由模（从而是投射模），令 $\varepsilon: P_0 \twoheadrightarrow M$ 为自然满射，令 $K_0 = \ker\varepsilon$。再取 $P_1$ 为以 $K_0$ 的生成元为基的自由模，令 $\partial_1: P_1 \twoheadrightarrow K_0 \hookrightarrow P_0$。以此类推，在每步取 $K_n = \ker\partial_n$，令 $P_{n+1}$ 为自由模覆盖 $K_n$，得到所需投射分解。

## 自由分解

<!-- free_resolution_def -->
> [!Definition]
> **自由分解 Free Resolution**：若投射分解 $P_\bullet \to M \to 0$ 中每个 $P_n$ 均是自由 $R$-模，则称之为 $M$ 的**自由分解**（free resolution）。由于自由模是投射模的特例，自由分解是投射分解的特例。上述存在性定理的构造实际给出了自由分解。

> **注**：对 Noether 环上有限生成模，可取有限生成自由模构造分解。$M$ 的**投射维数**（projective dimension）$\mathrm{pd}_R(M)$ 定义为最短投射分解的长度（若 $M$ 本身是投射模则为 $0$）。

## 最小投射分解

<!-- minimal_projective_resolution_def -->
> [!Definition]
> **最小投射分解 Minimal Projective Resolution**：设 $(R, \mathfrak{m}, k)$ 是 Noether 局部环，$M$ 是有限生成 $R$-模。$M$ 的**最小投射分解**（minimal projective resolution）是满足 $\mathrm{im}\,\partial_n \subseteq \mathfrak{m} P_{n-1}$（即微分"没有多余性"）的投射分解 $P_\bullet \to M$，此时每个 $P_n$ 均为有限生成自由模，且 $\mathrm{rank}\, P_n = \dim_k \mathrm{Tor}_n^R(M, k)$（称为 $M$ 的第 $n$ 个 **Betti 数**）。
>
> 最小投射分解在同构意义下唯一，可由 Nakayama 引理归纳构造：每步取 $P_n$ 为覆盖 $K_{n-1}/\mathfrak{m} K_{n-1}$ 的最小自由模。

> **注**：最小投射分解的存在与唯一性是局部代数中计算 Betti 数和 Poincaré 级数的基础，在交换代数和代数几何中有重要应用。
