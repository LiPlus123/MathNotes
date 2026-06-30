# 精细与粗糙

## 拓扑的精细与粗糙

<!-- finer_coarser_definition -->
> [!Definition]
> **精细与粗糙 Finer and Coarser**：设 $\mathcal{T}_1$ 和 $\mathcal{T}_2$ 是集合 $X$ 上的两个拓扑。若 $\mathcal{T}_2 \subseteq \mathcal{T}_1$（即 $\mathcal{T}_2$ 中每个开集也是 $\mathcal{T}_1$ 中的开集），则称：
> - $\mathcal{T}_1$ **比 $\mathcal{T}_2$ 更精细 Finer**（或 $\mathcal{T}_1$ **细于 $\mathcal{T}_2$**）；
> - $\mathcal{T}_2$ **比 $\mathcal{T}_1$ 更粗糙 Coarser**（或 $\mathcal{T}_2$ **粗于 $\mathcal{T}_1$**）。
>
> 若 $\mathcal{T}_2 \subsetneq \mathcal{T}_1$，则称 $\mathcal{T}_1$ **严格比 $\mathcal{T}_2$ 精细 Strictly Finer**。若 $\mathcal{T}_1 = \mathcal{T}_2$，则两拓扑**相同**。若 $\mathcal{T}_1 \not\subseteq \mathcal{T}_2$ 且 $\mathcal{T}_2 \not\subseteq \mathcal{T}_1$，则称两拓扑**不可比 Incomparable**。

## 性质与例子

<!-- finer_coarser_partial_order -->
> [!Proposition]
> **拓扑的偏序 Partial Order on Topologies**：集合 $X$ 上所有拓扑关于"精细"关系构成一个偏序集（满足自反性、反对称性、传递性）。其中：
> - 最粗糙的拓扑为平凡拓扑 $\mathcal{T}_{\mathrm{triv}} = \{\varnothing, X\}$；
> - 最精细的拓扑为离散拓扑 $\mathcal{T}_{\mathrm{disc}} = 2^X$。
>
> **证明思路**：对任意拓扑 $\mathcal{T}$，$\{\varnothing, X\} \subseteq \mathcal{T} \subseteq 2^X$，故平凡拓扑最粗、离散拓扑最精细。

<!-- finer_coarser_identity_continuity -->
> [!Proposition]
> **精细性与连续性 Finer Topology and Continuity**：设 $\mathcal{T}_1$ 和 $\mathcal{T}_2$ 是 $X$ 上的两个拓扑，则以下等价：
> 1. $\mathcal{T}_1$ 比 $\mathcal{T}_2$ 更精细（$\mathcal{T}_2 \subseteq \mathcal{T}_1$）；
> 2. 恒等映射 $\mathrm{id}: (X, \mathcal{T}_1) \to (X, \mathcal{T}_2)$ 是连续的。
>
> **证明思路**：$\mathrm{id}$ 连续当且仅当 $\mathcal{T}_2$ 中每个开集的原像（即其本身）在 $\mathcal{T}_1$ 中，即 $\mathcal{T}_2 \subseteq \mathcal{T}_1$。

<!-- finer_coarser_examples -->
> [!Example]+
> **精细与粗糙的例子 Examples**：在 $\mathbb{R}$ 上有如下严格精细关系链：
> $$\mathcal{T}_{\mathrm{triv}} \subsetneq \mathcal{T}_{\mathrm{std}} \subsetneq \mathcal{T}_\ell,\ \mathcal{T}_u \subsetneq \mathcal{T}_{\mathrm{disc}}$$
> 其中 $\mathcal{T}_\ell$（下限拓扑）与 $\mathcal{T}_u$（上限拓扑）不可比。

## 通过拓扑基判定精细与粗糙

<!-- basis_finer_coarser_criterion -->
> [!Theorem]
> **拓扑基判定精细准则 Basis Criterion for Finer Topology**：设 $\mathcal{B}_1$ 和 $\mathcal{B}_2$ 分别是 $X$ 上拓扑 $\mathcal{T}_1$ 和 $\mathcal{T}_2$ 的基。则 $\mathcal{T}_1$ 比 $\mathcal{T}_2$ 更精细（$\mathcal{T}_2 \subseteq \mathcal{T}_1$），当且仅当：对每个 $x \in X$ 和每个含 $x$ 的 $B_2 \in \mathcal{B}_2$，存在含 $x$ 的 $B_1 \in \mathcal{B}_1$ 使得 $B_1 \subseteq B_2$。
>
> **证明思路**：$(\Rightarrow)$ 若 $\mathcal{T}_2 \subseteq \mathcal{T}_1$，则 $B_2 \in \mathcal{T}_2 \subseteq \mathcal{T}_1$，由 $\mathcal{B}_1$ 是 $\mathcal{T}_1$ 的基，对 $x \in B_2$ 存在 $B_1 \in \mathcal{B}_1$ 使 $x \in B_1 \subseteq B_2$。$(\Leftarrow)$ 对任意 $U \in \mathcal{T}_2$ 和 $x \in U$，存在 $B_2 \in \mathcal{B}_2$ 使 $x \in B_2 \subseteq U$，再由条件取 $B_1 \in \mathcal{B}_1$ 使 $x \in B_1 \subseteq B_2 \subseteq U$，故 $U \in \mathcal{T}_1$。
