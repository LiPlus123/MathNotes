# 子环

## 子环的定义

<!-- subring_def -->
> [!Definition]
> **子环 Subring**：设 $R$ 为环，$S \subseteq R$ 为非空子集。若 $S$ 在 $R$ 的加法和乘法下也构成环（即 $S$ 对 $R$ 的加法和乘法封闭），则称 $S$ 为 $R$ 的**子环**，记作 $S \leq R$。

> **注**：若 $R$ 是含幺环，子环不要求包含 $R$ 的单位元 $1$；若子环包含 $1_R$，则称为**含幺子环**。

## 子环的判定法则

<!-- subring_criterion -->
> [!Theorem]
> **子环判定定理 Subring Criterion**：设 $R$ 为环，非空子集 $S \subseteq R$。$S$ 是 $R$ 的子环当且仅当对所有 $a, b \in S$，有：
> 1. $a - b \in S$；
> 2. $a \cdot b \in S$。
>
> **证明思路**：充分性：由条件 1，取 $a = b$ 得 $0 \in S$，取 $a = 0$ 得 $-b \in S$，从而 $S$ 对加法构成子群；由条件 2，$S$ 对乘法封闭；分配律从 $R$ 继承。必要性显然。

## 子环的例子

<!-- subring_example_chain -->
> [!Example]+
> **整数是有理数的子环**：$\mathbb{Z} \leq \mathbb{Q} \leq \mathbb{R} \leq \mathbb{C}$ 构成一个子环链，其中每个均为含幺子环。

<!-- subring_example_even -->
> [!Example]+
> **偶数构成子环**：偶数集 $2\mathbb{Z} = \{2k \mid k \in \mathbb{Z}\}$ 是 $\mathbb{Z}$ 的子环，但不含乘法单位元 $1$（因 $1 \notin 2\mathbb{Z}$），故为非含幺子环。

<!-- subring_example_Gaussian -->
> [!Example]+
> **高斯整数环**：$\mathbb{Z}[i] = \{a + bi \mid a, b \in \mathbb{Z}\}$ 是 $\mathbb{C}$ 的含幺子环，称为**高斯整数环**。由子环判定定理：$(a+bi) - (c+di) = (a-c) + (b-d)i \in \mathbb{Z}[i]$，$(a+bi)(c+di) = (ac-bd) + (ad+bc)i \in \mathbb{Z}[i]$。

<!-- subring_example_center -->
> [!Example]+
> **环的中心**：环 $R$ 的**中心** $Z(R) = \{z \in R \mid zr = rz,\, \forall r \in R\}$ 是 $R$ 的含幺子环（若 $R$ 含幺）。
