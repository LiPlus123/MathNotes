# 子群

## 子群的定义

<!-- subgroup_def -->
> [!Definition]
> **子群 Subgroup**：设 $(G, \cdot)$ 为群，$H \subseteq G$ 为非空子集。若 $H$ 在 $G$ 的运算下也构成群，则称 $H$ 为 $G$ 的**子群**，记作 $H \leq G$。

> **注**：$\{e\}$ 和 $G$ 本身均为 $G$ 的子群，分别称为**平凡子群**和**非真子群**。$G$ 的其他子群称为**真子群**，记作 $H < G$。

## 子群的判定法则

<!-- subgroup_criterion_1 -->
> [!Theorem]
> **子群判定法则一 Subgroup Criterion I**：设 $G$ 为群，$H \subseteq G$ 为非空子集。$H \leq G$ 当且仅当：
> 1. 对所有 $a, b \in H$，有 $a \cdot b \in H$（对运算封闭）；
> 2. 对所有 $a \in H$，有 $a^{-1} \in H$（对取逆封闭）。
>
> **证明思路**：必要性显然。充分性：条件 1 保证结合律和封闭性，条件 2 保证逆元存在，由 $a \cdot a^{-1} = e$ 知单位元 $e \in H$。

<!-- subgroup_criterion_2 -->
> [!Theorem]
> **子群判定法则二 Subgroup Criterion II**：设 $G$ 为群，$H \subseteq G$ 为非空子集。$H \leq G$ 当且仅当对所有 $a, b \in H$，有 $a \cdot b^{-1} \in H$。
>
> **证明思路**：充分性：取 $a = b$ 得 $e \in H$；取 $a = e$ 得 $b^{-1} \in H$；对 $a, b^{-1} \in H$ 再应用条件得 $a \cdot b \in H$。

<!-- subgroup_finite_criterion -->
> [!Theorem]
> **有限子群判定法则 Finite Subgroup Criterion**：设 $G$ 为群，$H \subseteq G$ 为非空有限子集。若 $H$ 对 $G$ 的运算封闭，则 $H \leq G$。
>
> **证明思路**：只需证逆元存在。对 $a \in H$，考虑序列 $a, a^2, a^3, \ldots$，由 $H$ 有限知存在 $i < j$ 使 $a^i = a^j$，故 $a^{j-i} = e \in H$，从而 $a^{-1} = a^{j-i-1} \in H$。

## 子群的例子

<!-- subgroup_even_integers -->
> [!Example]+
> **偶数构成子群 Even Integers as Subgroup**：$2\mathbb{Z} = \{\ldots, -4, -2, 0, 2, 4, \ldots\}$ 是 $(\mathbb{Z}, +)$ 的子群。更一般地，$n\mathbb{Z} = \{nk \mid k \in \mathbb{Z}\}$ 对任意 $n \in \mathbb{Z}$ 均为 $(\mathbb{Z}, +)$ 的子群。

<!-- subgroup_center_def -->
> [!Definition]
> **中心 Center**：群 $G$ 的**中心**定义为
> $$
> Z(G) = \{a \in G \mid a \cdot g = g \cdot a,\ \forall g \in G\}
> $$
> 即与 $G$ 中所有元素交换的元素的集合。$Z(G)$ 是 $G$ 的子群，且是阿贝尔子群。

<!-- subgroup_generated_def -->
> [!Definition]
> **生成子群 Generated Subgroup**：设 $G$ 为群，$S \subseteq G$。包含 $S$ 的所有子群的交仍为子群，称为由 $S$ **生成**的子群，记作 $\langle S \rangle$。即
> $$
> \langle S \rangle = \{s_1^{\varepsilon_1} \cdot s_2^{\varepsilon_2} \cdots s_k^{\varepsilon_k} \mid k \geq 0,\ s_i \in S,\ \varepsilon_i \in \{1, -1\}\}
> $$
