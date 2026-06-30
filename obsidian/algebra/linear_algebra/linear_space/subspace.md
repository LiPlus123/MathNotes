---
title: 子空间
tags:
  - linear_algebra
  - linear_space
---

# 子空间

<!-- subspace_definition -->
> [!Definition]
> **子空间 Subspace**：设 $V$ 是数域 $F$ 上的线性空间，$W$ 是 $V$ 的非空子集。若 $W$ 对 $V$ 的加法和数乘运算封闭，即
> $$
> \forall u, v \in W,\ \forall \lambda \in F,\quad u + v \in W \text{ 且 } \lambda v \in W,
> $$
> 则称 $W$ 是 $V$ 的**子空间**，记作 $W \leq V$。

> **注**：$\{\mathbf{0}\}$ 和 $V$ 本身均为 $V$ 的子空间，分别称为**零子空间**和**平凡子空间**。

<!-- subspace_criterion -->
> [!Theorem]
> **子空间判定定理**：设 $V$ 是数域 $F$ 上的线性空间，$W \subseteq V$ 非空，则 $W \leq V$ 当且仅当
> $$
> \forall u, v \in W,\ \forall \lambda, \mu \in F,\quad \lambda u + \mu v \in W.
> $$

> **证明思路**：必要性由子空间封闭性直接得出；充分性：取 $\lambda = \mu = 1$ 得加法封闭，取 $\mu = 0$ 得数乘封闭，再验证零向量和负元的存在性（令 $\lambda = 0$ 得 $\mathbf{0} \in W$，令 $\mu = -1$ 得 $-v \in W$）。

<!-- sum_of_subspaces -->
> [!Definition]
> **子空间的和 Sum of Subspaces**：设 $W_1, W_2 \leq V$，定义其**和**为
> $$
> W_1 + W_2 = \{w_1 + w_2 \mid w_1 \in W_1,\ w_2 \in W_2\}.
> $$
> 更一般地，有限个子空间 $W_1, W_2, \ldots, W_k$ 的和为
> $$
> W_1 + W_2 + \cdots + W_k = \left\{\sum_{i=1}^k w_i\ \middle|\ w_i \in W_i\right\}.
> $$

<!-- sum_of_subspaces_is_subspace -->
> [!Theorem]
> **子空间之和仍是子空间**：若 $W_1, W_2 \leq V$，则 $W_1 + W_2 \leq V$，且 $W_1 + W_2$ 是包含 $W_1$ 和 $W_2$ 的最小子空间。

> **证明思路**：直接验证封闭性；最小性：任何包含 $W_1$ 和 $W_2$ 的子空间必须包含所有 $w_1 + w_2$，故包含 $W_1 + W_2$。

<!-- intersection_of_subspaces -->
> [!Theorem]
> **子空间之交仍是子空间**：若 $W_1, W_2 \leq V$，则 $W_1 \cap W_2 \leq V$。

> **证明思路**：直接验证：若 $u, v \in W_1 \cap W_2$，则 $\lambda u + \mu v \in W_1$ 且 $\lambda u + \mu v \in W_2$，故 $\lambda u + \mu v \in W_1 \cap W_2$。

<!-- direct_sum_definition -->
> [!Definition]
> **直和 Direct Sum**：设 $W_1, W_2 \leq V$，若 $V = W_1 + W_2$ 且 $W_1 \cap W_2 = \{\mathbf{0}\}$，则称 $V$ 是 $W_1$ 与 $W_2$ 的**直和**，记作 $V = W_1 \oplus W_2$，并称 $W_1$ 与 $W_2$ 互为**补子空间**。

<!-- direct_sum_characterization -->
> [!Theorem]
> **直和的等价刻画**：设 $W_1, W_2 \leq V$ 且 $V = W_1 + W_2$，以下命题等价：
> 1. $V = W_1 \oplus W_2$（即 $W_1 \cap W_2 = \{\mathbf{0}\}$）
> 2. $V$ 中每个向量 $v$ 可唯一分解为 $v = w_1 + w_2$，其中 $w_1 \in W_1,\ w_2 \in W_2$
> 3. $\mathbf{0}$ 的分解 $\mathbf{0} = w_1 + w_2$（$w_i \in W_i$）只有平凡解 $w_1 = w_2 = \mathbf{0}$

> **证明思路**：$(1) \Rightarrow (2)$：若分解不唯一，则两种分解之差给出 $W_1 \cap W_2$ 中的非零元，矛盾。$(2) \Rightarrow (3)$：$\mathbf{0}$ 的分解唯一即为平凡分解。$(3) \Rightarrow (1)$：若 $v \in W_1 \cap W_2$，则 $\mathbf{0} = v + (-v)$ 是一个分解，由唯一性得 $v = \mathbf{0}$。

<!-- dimension_of_sum_formula -->
> [!Theorem]
> **子空间维数公式**：设 $V$ 是有限维线性空间，$W_1, W_2 \leq V$，则
> $$
> \dim(W_1 + W_2) = \dim W_1 + \dim W_2 - \dim(W_1 \cap W_2).
> $$

> **证明思路**：取 $W_1 \cap W_2$ 的基，分别扩充为 $W_1$ 的基和 $W_2$ 的基，验证合并后的向量组是 $W_1 + W_2$ 的基，从而计算维数。

<!-- dimension_of_direct_sum -->
> [!Corollary]
> **直和的维数**：若 $V = W_1 \oplus W_2$，则 $\dim V = \dim W_1 + \dim W_2$。

> **证明思路**：由直和条件 $W_1 \cap W_2 = \{\mathbf{0}\}$ 知 $\dim(W_1 \cap W_2) = 0$，代入维数公式即得。
