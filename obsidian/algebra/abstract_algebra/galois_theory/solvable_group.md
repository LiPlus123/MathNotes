# 可解群

## 换位子与导群

<!-- commutator_def -->
> [!Definition]
> **换位子 Commutator**：设 $G$ 为群，$a, b \in G$。定义 $a$ 与 $b$ 的**换位子**为
> $$
> [a, b] = a^{-1} b^{-1} a b.
> $$
> 注意 $[a,b] = e$ 当且仅当 $ab = ba$。

<!-- commutator_subgroup_def -->
> [!Definition]
> **导群（换位子群）Derived Subgroup**：设 $G$ 为群。$G$ 的所有换位子 $[a,b]$（$a,b \in G$）生成的子群称为 $G$ 的**导群**（或**换位子群**），记作
> $$
> G' = [G, G] = \langle [a,b] \mid a, b \in G \rangle.
> $$

<!-- derived_series_def -->
> [!Definition]
> **导群列 Derived Series**：定义 $G$ 的**导群列**（**导出列**）为
> $$
> G = G^{(0)} \geq G^{(1)} \geq G^{(2)} \geq \cdots,
> $$
> 其中 $G^{(0)} = G$，$G^{(n+1)} = [G^{(n)}, G^{(n)}]$（$G^{(n)}$ 的导群）。

## 可解群的定义

<!-- solvable_group_def -->
> [!Definition]
> **可解群 Solvable Group**：若群 $G$ 的导群列在有限步后终止于平凡群，即存在正整数 $n$ 使得
> $$
> G^{(n)} = \{ e \},
> $$
> 则称 $G$ 为**可解群**。

> **注**：等价地，$G$ 可解当且仅当存在正规群列（次正规列）
> $$
> \{ e \} = N_0 \trianglelefteq N_1 \trianglelefteq \cdots \trianglelefteq N_k = G,
> $$
> 使得每个商群 $N_{i+1}/N_i$ 均为交换群。

## 性质

<!-- solvable_abelian_is_solvable -->
> [!Theorem]
> **交换群是可解群**：任何交换群 $G$ 均是可解群。
>
> **证明思路**：$G$ 交换，故 $G^{(1)} = [G,G] = \{e\}$，导群列一步终止。

<!-- solvable_subgroup_and_quotient -->
> [!Theorem]
> **子群与商群的可解性**：设 $G$ 为可解群，则：
> 1. $G$ 的任意子群 $H \leq G$ 也是可解群；
> 2. $G$ 的任意商群 $G/N$（$N \trianglelefteq G$）也是可解群。
>
> **证明思路**：对子群：$H^{(n)} \leq G^{(n)}$，由 $G^{(n)}=\{e\}$ 推出 $H^{(n)}=\{e\}$。对商群：同态像保持导群列的性质，$G^{(n)} = \{e\}$ 意味着商群的导群列也终止。

<!-- solvable_extension_theorem -->
> [!Theorem]
> **可解群的扩张**：设 $N \trianglelefteq G$，若 $N$ 与 $G/N$ 均可解，则 $G$ 也可解。
>
> **证明思路**：设 $G/N$ 可解，则 $(G/N)^{(m)} = \{e\}$，即 $G^{(m)} \leq N$；又 $N$ 可解，$N^{(k)} = \{e\}$，于是 $G^{(m+k)} = \{e\}$。

<!-- solvable_direct_product -->
> [!Theorem]
> **直积的可解性**：若 $G_1, G_2$ 均可解，则 $G_1 \times G_2$ 也可解。
>
> **证明思路**：$(G_1 \times G_2)^{(n)} = G_1^{(n)} \times G_2^{(n)}$；当 $G_1^{(n_1)} = G_2^{(n_2)} = \{e\}$ 时，取 $n = \max(n_1, n_2)$ 即可。

## 对称群的可解性

<!-- solvable_S3_S4 -->
> [!Theorem]
> **$S_3, S_4$ 可解**：对称群 $S_3$ 与 $S_4$ 均是可解群。
>
> **证明思路**：对 $S_3$：$S_3 \geq A_3 \geq \{e\}$，$S_3/A_3 \cong \mathbb{Z}/2\mathbb{Z}$，$A_3 \cong \mathbb{Z}/3\mathbb{Z}$，均为交换群。对 $S_4$：$S_4 \geq A_4 \geq V_4 \geq \{e\}$，其中 $V_4 = \{e,(12)(34),(13)(24),(14)(23)\}$ 为 Klein 四元群，各商均交换。

<!-- solvable_Sn_not_solvable -->
> [!Theorem]
> **$S_n$（$n \geq 5$）不可解**：当 $n \geq 5$ 时，$S_n$ 是不可解群。
>
> **证明思路**：对 $n \geq 5$，$A_n$ 是单群（无非平凡正规子群）。$S_n$ 的导群为 $A_n$，$A_n$ 的导群仍为 $A_n$（因 $A_n$ 单且非交换），故导群列不终止于平凡群。

## 例子

<!-- solvable_group_example_cyclic -->
> [!Example]+
> **循环群可解**：$\mathbb{Z}/n\mathbb{Z}$ 是交换群，故可解。

<!-- solvable_group_example_dihedral -->
> [!Example]+
> **二面体群可解**：$D_n$（$n$ 阶二面体群，$|D_n|=2n$）是可解群。其正规子群列为 $\{e\} \trianglelefteq C_n \trianglelefteq D_n$，商 $D_n/C_n \cong \mathbb{Z}/2\mathbb{Z}$，$C_n \cong \mathbb{Z}/n\mathbb{Z}$，均交换。

<!-- solvable_group_example_A5_not_solvable -->
> [!Example]+
> **$A_5$ 不可解**：$A_5$ 是阶为 $60$ 的单群，$A_5^{(1)} = A_5$，故 $A_5$ 不可解。这是最小的不可解群。
