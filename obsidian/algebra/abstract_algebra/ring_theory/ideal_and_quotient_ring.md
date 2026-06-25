# 理想与商环

## 理想的定义

<!-- left_ideal_def -->
> [!Definition]
> **左理想 Left Ideal**：设 $R$ 为环，非空子集 $I \subseteq R$ 称为 $R$ 的**左理想**，若：
> 1. $(I, +)$ 是 $(R, +)$ 的子群；
> 2. 对所有 $r \in R$，$a \in I$，有 $r \cdot a \in I$（左乘封闭）。

<!-- right_ideal_def -->
> [!Definition]
> **右理想 Right Ideal**：设 $R$ 为环，非空子集 $I \subseteq R$ 称为 $R$ 的**右理想**，若：
> 1. $(I, +)$ 是 $(R, +)$ 的子群；
> 2. 对所有 $r \in R$，$a \in I$，有 $a \cdot r \in I$（右乘封闭）。

<!-- ideal_def -->
> [!Definition]
> **双边理想 Two-sided Ideal**：若非空子集 $I \subseteq R$ 既是左理想又是右理想，则称 $I$ 为 $R$ 的**（双边）理想**，记作 $I \trianglelefteq R$。

> **注**：在交换环中，左理想、右理想与双边理想三者等价，统称为理想。

<!-- ideal_criterion -->
> [!Theorem]
> **理想判定**：非空子集 $I \subseteq R$ 是 $R$ 的理想当且仅当对所有 $a, b \in I$ 及 $r \in R$，有
> $$
> a - b \in I, \quad ra \in I, \quad ar \in I
> $$

## 理想的生成

<!-- principal_ideal_def -->
> [!Definition]
> **主理想 Principal Ideal**：含幺环 $R$ 中，由元素 $a \in R$ 生成的**主理想**为
> $$
> (a) = RaR = \left\{\sum_{i=1}^n r_i a s_i \;\middle|\; r_i, s_i \in R,\, n \geq 1\right\}
> $$
> 在交换含幺环中，$(a) = Ra = \{ra \mid r \in R\}$。

<!-- ideal_generated_def -->
> [!Definition]
> **由子集生成的理想**：设 $R$ 为环，$A \subseteq R$，由 $A$ 生成的理想为包含 $A$ 的所有理想的交：
> $$
> (A) = \bigcap_{A \subseteq I \trianglelefteq R} I
> $$
> 这是包含 $A$ 的最小理想。

<!-- trivial_ideal_theorem -->
> [!Theorem]
> **平凡理想**：任意环 $R$ 中，$\{0\}$ 和 $R$ 本身都是 $R$ 的理想，称为**平凡理想**。若含幺环 $R$ 的理想只有平凡理想，则称 $R$ 为**单环 Simple Ring**。

> **注**：域是单交换含幺环（因域的非零元都可逆，任何包含非零元的理想即为整个环）。

## 理想的例子

<!-- ideal_example_nZ -->
> [!Example]+
> **$n\mathbb{Z}$ 是整数的理想**：对任意 $n \in \mathbb{Z}$，$n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$ 是 $\mathbb{Z}$ 的理想，且等于主理想 $(n)$。$\mathbb{Z}$ 的所有理想均形如 $n\mathbb{Z}$（$n \geq 0$）。

<!-- ideal_example_matrix -->
> [!Example]+
> **域上矩阵环是单环**：域 $F$ 上的 $n \times n$ 矩阵环 $M_n(F)$ 是单环，即 $M_n(F)$ 的理想只有 $\{0\}$ 和 $M_n(F)$。

## 商环

<!-- quotient_ring_def -->
> [!Definition]
> **商环 Quotient Ring**：设 $I \trianglelefteq R$，以陪集集合 $R/I = \{a + I \mid a \in R\}$ 为载体，定义加法和乘法：
> $$
> (a + I) + (b + I) = (a + b) + I, \quad (a + I)(b + I) = ab + I
> $$
> 需验证运算与陪集代表元的选取无关（利用 $I$ 是理想）。则 $(R/I, +, \cdot)$ 构成一个环，称为 $R$ 关于 $I$ 的**商环**。

<!-- quotient_ring_canonical_map -->
> [!Theorem]
> **自然投影 Canonical Projection**：映射 $\pi: R \to R/I$，$a \mapsto a + I$，是环满同态，且 $\ker\pi = I$。
>
> **证明思路**：由商环运算定义直接验证 $\pi$ 保加法和乘法；$\ker\pi = \{a \mid a + I = 0 + I\} = I$。

## 商环的性质

<!-- quotient_ring_commutative -->
> [!Theorem]
> **商环继承交换性与含幺性**：设 $I \trianglelefteq R$，则：
> - 若 $R$ 是交换环，则 $R/I$ 也是交换环；
> - 若 $R$ 是含幺环，则 $R/I$ 也是含幺环，单位元为 $1_R + I$。

<!-- quotient_ring_example_Zn -->
> [!Example]+
> **剩余类环作为商环**：$\mathbb{Z}/n\mathbb{Z}$ 是 $\mathbb{Z}$ 关于理想 $n\mathbb{Z}$ 的商环，其中 $n \in \mathbb{Z}^+$。
