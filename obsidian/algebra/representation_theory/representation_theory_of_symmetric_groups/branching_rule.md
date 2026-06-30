# 分支规则 Branching Rule

<!-- youngs_lattice_definition -->
> [!Definition]
> **Young 格 Young's Lattice**：定义偏序集 $\mathbb{Y}$，其元素为所有整数的分拆（包括空分拆 $\varnothing$），偏序关系为：$\mu \leq \lambda$ 当且仅当 $\mu_i \leq \lambda_i$ 对所有 $i$ 成立（即 $[\mu] \subseteq [\lambda]$ 作为方格集合）。在 $\mathbb{Y}$ 中，$\mu \lessdot \lambda$（$\mu$ 是 $\lambda$ 的覆盖元）当且仅当 $\lambda \vdash n$，$\mu \vdash n-1$，且 $[\lambda] \setminus [\mu]$ 恰好由一个方格构成。$\mathbb{Y}$ 称为 **Young 格**（Young's lattice）。

> **注**：Young 格的第 $n$ 层（$n$ 级）由 $\mathcal{P}(n)$ 中的所有分拆构成。从 $\varnothing$ 到 $\lambda$ 的饱和链（saturated chain）一一对应 $\mathrm{SYT}(\lambda)$ 中的标准 Young 表。

<!-- corner_box_definition -->
> [!Definition]
> **角方格 Corner Box**：设 $\lambda \vdash n$。Young 图 $[\lambda]$ 的**内角方格**（inner corner）是可以从 $[\lambda]$ 中删去后仍得到某个分拆的方格，即满足以下条件的方格 $(i, \lambda_i)$：删去 $(i, \lambda_i)$ 后剩余图形仍是一个 Young 图。**外角方格**（outer corner / addable cell）是可以添加到 $[\lambda]$ 后仍得到某个分拆的方格，即满足条件的方格 $(i, \lambda_i+1)$（或新的一行）。

<!-- branching_rule_restriction -->
> [!Theorem]
> **分支规则（限制）Branching Rule for Restriction**：将 $S_{n-1}$ 嵌入 $S_n$ 为固定元素 $n$ 的子群。设 $\lambda \vdash n$，则
> $$\mathrm{Res}^{S_n}_{S_{n-1}} S^\lambda \cong \bigoplus_{\mu} S^\mu,$$
> 其中直和遍历所有由 $[\lambda]$ 删去一个内角方格所得的分拆 $\mu \vdash n-1$，且每个 $S^\mu$ 在分解中出现**恰好一次**（无重数）。

> **证明思路**：利用 Specht 模的标准 Young 表基。限制到 $S_{n-1}$ 时，数字 $n$ 所在位置必须是内角（保证删去后剩余部分是标准 Young 表的形状），故可按 $n$ 的位置将基向量分组，每组给出一个形状为 $\mu$ 的 $S_{n-1}$-不变子空间，从而得到分解。

<!-- branching_rule_induction -->
> [!Theorem]
> **分支规则（诱导）Branching Rule for Induction**：设 $\lambda \vdash n$，则
> $$\mathrm{Ind}^{S_{n+1}}_{S_n} S^\lambda \cong \bigoplus_{\nu} S^\nu,$$
> 其中直和遍历所有由 $[\lambda]$ 添加一个外角方格所得的分拆 $\nu \vdash n+1$，且每个 $S^\nu$ 在分解中出现**恰好一次**。

> **证明思路**：由 Frobenius 互反律，$[\mathrm{Ind}^{S_{n+1}}_{S_n} S^\lambda : S^\nu] = [\mathrm{Res}^{S_{n+1}}_{S_n} S^\nu : S^\lambda]$。由限制分支规则，$\mathrm{Res}^{S_{n+1}}_{S_n} S^\nu$ 中 $S^\lambda$ 出现当且仅当 $[\lambda]$ 由 $[\nu]$ 删去一个内角方格所得，即 $[\nu]$ 由 $[\lambda]$ 添加一个外角方格所得。

<!-- branching_rule_example -->
> [!Example]+
> **分支规则示例 Branching Rule Example**：
>
> **限制** $\mathrm{Res}^{S_4}_{S_3} S^{(3,1)}$：分拆 $(3,1) \vdash 4$ 的内角方格为 $(1,3)$（第一行末）和 $(2,1)$（第二行末），删去后分别得到 $(2,1) \vdash 3$ 和 $(3) \vdash 3$。故
> $$\mathrm{Res}^{S_4}_{S_3} S^{(3,1)} \cong S^{(2,1)} \oplus S^{(3)}.$$
> 维数验证：$\dim S^{(3,1)} = 3 = 2 + 1 = \dim S^{(2,1)} + \dim S^{(3)}$。$\checkmark$
>
> **诱导** $\mathrm{Ind}^{S_4}_{S_3} S^{(2,1)}$：分拆 $(2,1) \vdash 3$ 的外角方格为 $(1,3)$（第一行后）、$(2,2)$（第二行后）和 $(3,1)$（新第三行），添加后分别得到 $(3,1), (2,2), (2,1,1) \vdash 4$。故
> $$\mathrm{Ind}^{S_4}_{S_3} S^{(2,1)} \cong S^{(3,1)} \oplus S^{(2,2)} \oplus S^{(2,1,1)}.$$
> 维数验证：$|S_4|/|S_3| \cdot \dim S^{(2,1)} = 4 \cdot 2 = 8 = 3+2+3$。$\checkmark$

<!-- branching_rule_and_youngs_lattice -->
> [!Proposition]
> **分支规则与 Young 格的对应 Branching Rule and Young's Lattice**：Young 格 $\mathbb{Y}$ 中从 $\varnothing$ 到 $\lambda \vdash n$ 的饱和链的条数恰好等于 $f^\lambda$（形状 $\lambda$ 的标准 Young 表个数）。分支规则说明：每条这样的饱和链
> $$\varnothing = \mu^{(0)} \lessdot \mu^{(1)} \lessdot \cdots \lessdot \mu^{(n)} = \lambda$$
> 对应于 $S_\lambda$ 的一次完全分解 $S^\lambda \supset S^{\mu^{(n-1)}} \supset \cdots \supset S^{\mu^{(1)}} \supset \{0\}$ 的选取方式，以及 $\mathrm{SYT}(\lambda)$ 中填有 $k$ 的方格对应 $\mu^{(k)}$ 与 $\mu^{(k-1)}$ 之差的那个角方格。

<!-- branching_rule_recursive_formula -->
> [!Corollary]
> **钩长公式的递归推导 Recursive Derivation of the Hook Length Formula**：由限制分支规则，$f^\lambda = \sum_{\mu \lessdot \lambda} f^\mu$（其中 $f^\varnothing = 1$）。结合边界条件（单行分拆 $f^{(n)} = 1$，单列分拆 $f^{(1^n)} = 1$），此递推关系与钩长公式 $f^\lambda = n!/\prod h(i,j)$ 完全一致，可作为验证钩长公式的一种途径。
