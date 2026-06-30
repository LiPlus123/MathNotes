# 平坦分解

## 平坦模

<!-- flat_module_def -->
> [!Definition]
> **平坦模 Flat Module**：右 $R$-模（或左 $R$-模，按张量方向对偶）$F$ 称为**平坦的**（flat），若函子
> $$
> - \otimes_R F: R\text{-}\mathbf{Mod} \to \mathbf{Ab}
> $$
> 是正合函子（等价地，保持单射）。即对任意短正合列
> $$
> 0 \to A' \to A \to A'' \to 0,
> $$
> 张量后仍正合：
> $$
> 0 \to A' \otimes_R F \to A \otimes_R F \to A'' \otimes_R F \to 0.
> $$

> **注**：
> - 投射模必平坦；
> - 自由模必平坦；
> - 平坦模不必投射（如 $\mathbb{Q}$ 作为 $\mathbb{Z}$-模是平坦但非投射）。

## 平坦分解的定义

<!-- flat_resolution_def -->
> [!Definition]
> **平坦分解 Flat Resolution**：左 $R$-模 $M$ 的一个**平坦分解**（flat resolution）是正合序列：
> $$
> \cdots \to F_2 \to F_1 \to F_0 \xrightarrow{\varepsilon} M \to 0,
> $$
> 其中每个 $F_n$ 均为平坦 $R$-模。等价地，它是一个增广链复形 $F_\bullet \to M$，满足 $H_0(F_\bullet) \cong M$ 且 $H_n(F_\bullet)=0$（$n\ge 1$）。

## 平坦分解的存在性

<!-- flat_resolution_existence -->
> [!Theorem]
> **平坦分解的存在性 Existence of Flat Resolutions**：每个左 $R$-模 $M$ 都有平坦分解。
>
> **证明思路**：自由模平坦，且每个模有自由分解（从而有投射分解），故自由分解自动是平坦分解。

## 与投射分解的关系

<!-- relation_flat_projective_resolution -->
> [!Proposition]
> **平坦分解与投射分解的关系 Relation between Flat and Projective Resolutions**：
> 1. 任一投射分解都是平坦分解；
> 2. 计算 $\mathrm{Tor}$ 时，既可用投射分解也可用平坦分解，得到同构结果；
> 3. 若模的投射维数有限，则其平坦维数不超过投射维数：
> $$
> \mathrm{fd}_R(M) \leq \mathrm{pd}_R(M).
> $$

> **注**：平坦分解在某些非 Noether 情形比投射分解更易处理；同时，平坦模族在直极限下封闭，适合处理局部化与极限构造。

## 为 Tor 的计算做准备

<!-- tor_via_flat_resolution -->
> [!Proposition]
> **由平坦分解计算 Tor Computing Tor via Flat Resolutions**：设 $M$ 是右 $R$-模，$N$ 是左 $R$-模。取 $N$ 的平坦分解 $F_\bullet \to N \to 0$，定义：
> $$
> \mathrm{Tor}_n^R(M, N) := H_n(M \otimes_R F_\bullet).
> $$
> 该定义与平坦分解的选取无关（自然同构意义下），并与用投射分解给出的经典定义一致。
>
> **证明思路**：对两个平坦分解可由比较定理构造链映射，并证明其在同调上给出同构；或先用投射分解定义 Tor，再用平坦分解与投射分解之间的链同伦比较证明一致性。

> **注**：由定义立刻得到
> $$
> \mathrm{Tor}_0^R(M,N) \cong M \otimes_R N,
> $$
> 且当 $N$ 平坦时，$\mathrm{Tor}_n^R(M,N)=0$（$n\ge1$）。这正是平坦性的同调刻画。
