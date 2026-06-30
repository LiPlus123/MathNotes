# 膨胀、限制与上限制

## 限制与膨胀

<!-- restriction_map_def -->
> [!Definition]
> **限制 Restriction**：设 $H\le G$ 是子群，$M$ 是左 $G$-模。由忘却 $G$-作用到 $H$-作用，可得自然映射
> $$
> \mathrm{res}_{G,H}: H^n(G,M)\to H^n(H,M),
> $$
> 称为**限制映射**（restriction）。

<!-- inflation_map_def -->
> [!Definition]
> **膨胀 Inflation**：设 $N\trianglelefteq G$ 为正规子群，$Q=G/N$。若 $M$ 是一个 $Q$-模（等价地 $N$ 在 $M$ 上平凡作用的 $G$-模），则商映射 $G\twoheadrightarrow Q$ 诱导
> $$
> \mathrm{inf}_{Q,G}: H^n(Q,M)\to H^n(G,M),
> $$
> 称为**膨胀映射**（inflation）。

## 膨胀-限制正合列

<!-- inflation_restriction_exact_sequence -->
> [!Theorem]
> **膨胀-限制正合列 Inflation-Restriction Exact Sequence**：设 $N\trianglelefteq G$，$Q=G/N$，$M$ 为 $G$-模。则有自然正合列
> $$
> 0\to H^1(Q,M^N)\xrightarrow{\mathrm{inf}} H^1(G,M)
> \xrightarrow{\mathrm{res}} H^1(N,M)^Q
> \xrightarrow{\mathrm{tr}} H^2(Q,M^N)
> \xrightarrow{\mathrm{inf}} H^2(G,M).
> $$
> 这里 $H^1(N,M)^Q$ 表示商群 $Q$ 对 $H^1(N,M)$ 作用下的不变量，$\mathrm{tr}$ 为连接同态。
>
> **证明思路**：由 Lyndon-Hochschild-Serre 谱序列
> $$
> E_2^{p,q}=H^p(Q,H^q(N,M))\Rightarrow H^{p+q}(G,M)
> $$
> 的低次部分抽取而得。也可将其看作谱序列的五项正合列。

## 上限制与转移

<!-- corestriction_def -->
> [!Definition]
> **上限制 Corestriction / Transfer in Cohomology**：若 $H\le G$ 是有限指数子群，则存在映射
> $$
> \mathrm{cor}_{H,G}: H^n(H,M)\to H^n(G,M),
> $$
> 称为**上限制**（corestriction）或**转移映射**（transfer），它在同调上是限制映射的某种“平均逆”。

<!-- transfer_on_h0_h1 -->
> [!Proposition]
> **低次上的转移 Low-degree Description of Transfer**：
> - 在 $H^0$ 上，$\mathrm{cor}_{H,G}$ 由对陪集代表求和给出；
> - 在适当有限性条件下，满足
> $$
> \mathrm{cor}_{H,G}\circ \mathrm{res}_{G,H} = [G:H]\cdot \mathrm{id}
> $$
> 在某些次数上成立（例如平凡系数情形）。
>
> **证明思路**：直接从 bar 复形中对陪集代表作求和构造 cochain 映射，并验证其与余微分相容。

## 应用说明

<!-- inflation_restriction_corestriction_note -->
> [!Corollary]
> **膨胀、限制与上限制的作用 Role of Inflation, Restriction, and Corestriction**：这些映射把大群、子群与商群的上同调联系起来，是研究群扩张、有限群上同调以及后续 Lyndon-Hochschild-Serre 谱序列的基本工具。