# 群的基本概念

## 基本定义

<!-- semigroup_def -->
> [!Definition]
> **半群 Semigroup**：设 $G$ 为非空集合，$\cdot: G \times G \to G$ 为二元运算。若 $\cdot$ 满足**结合律**，即对所有 $a, b, c \in G$ 有
> $$
> (a \cdot b) \cdot c = a \cdot (b \cdot c)
> $$
> 则称 $(G, \cdot)$ 为一个**半群**。

<!-- monoid_def -->
> [!Definition]
> **幺半群 Monoid**：若半群 $(G, \cdot)$ 中存在元素 $e \in G$，使得对所有 $a \in G$ 有
> $$
> e \cdot a = a \cdot e = a
> $$
> 则称 $e$ 为 $G$ 的**单位元**（幺元），称 $(G, \cdot)$ 为一个**幺半群**。

<!-- group_def -->
> [!Definition]
> **群 Group**：若幺半群 $(G, \cdot)$ 中每个元素 $a \in G$ 都存在**逆元** $a^{-1} \in G$，使得
> $$
> a \cdot a^{-1} = a^{-1} \cdot a = e
> $$
> 则称 $(G, \cdot)$ 为一个**群**。

<!-- abelian_group_def -->
> [!Definition]
> **阿贝尔群 Abelian Group**：若群 $(G, \cdot)$ 的运算还满足**交换律**，即对所有 $a, b \in G$ 有
> $$
> a \cdot b = b \cdot a
> $$
> 则称 $(G, \cdot)$ 为一个**阿贝尔群**（或**交换群**）。

> **注**：当 $G$ 为阿贝尔群时，其运算常记为加法 $+$，单位元记为 $0$，$a$ 的逆元记为 $-a$。

## 群的性质

<!-- group_identity_unique -->
> [!Theorem]
> **单位元唯一性 Uniqueness of Identity**：群 $(G, \cdot)$ 的单位元唯一。
>
> **证明思路**：设 $e, e'$ 均为单位元，则 $e = e \cdot e' = e'$。

<!-- group_inverse_unique -->
> [!Theorem]
> **逆元唯一性 Uniqueness of Inverse**：群 $(G, \cdot)$ 中每个元素 $a$ 的逆元唯一。
>
> **证明思路**：设 $b, c$ 均为 $a$ 的逆元，则 $b = b \cdot e = b \cdot (a \cdot c) = (b \cdot a) \cdot c = e \cdot c = c$。

<!-- group_inverse_involute -->
> [!Theorem]
> **逆元的逆 Inverse of Inverse**：在群 $(G, \cdot)$ 中，$(a^{-1})^{-1} = a$。
>
> **证明思路**：$a$ 满足 $a \cdot a^{-1} = a^{-1} \cdot a = e$，故 $a$ 即为 $a^{-1}$ 的逆元。

<!-- group_inverse_product -->
> [!Theorem]
> **乘积的逆 Inverse of Product**：在群 $(G, \cdot)$ 中，$(a \cdot b)^{-1} = b^{-1} \cdot a^{-1}$。
>
> **证明思路**：直接验证 $(a \cdot b) \cdot (b^{-1} \cdot a^{-1}) = a \cdot (b \cdot b^{-1}) \cdot a^{-1} = e$。

<!-- group_cancellation_law -->
> [!Theorem]
> **消去律 Cancellation Law**：在群 $(G, \cdot)$ 中：
> - **左消去律**：若 $a \cdot b = a \cdot c$，则 $b = c$；
> - **右消去律**：若 $b \cdot a = c \cdot a$，则 $b = c$。
>
> **证明思路**：在等式两边分别左乘（或右乘）$a^{-1}$ 即得。

## 群的阶

<!-- group_order_def -->
> [!Definition]
> **群的阶 Order of a Group**：群 $G$ 的**阶**定义为其元素的个数，记作 $|G|$。若 $|G|$ 有限，称 $G$ 为**有限群**；否则称为**无限群**。

<!-- element_order_def -->
> [!Definition]
> **元素的阶 Order of an Element**：设 $G$ 为群，$a \in G$。若存在正整数 $n$ 使得 $a^n = e$，则满足此条件的最小正整数称为 $a$ 的**阶**，记作 $\mathrm{ord}(a)$；若不存在这样的正整数，则称 $a$ 的阶为**无穷**，记作 $\mathrm{ord}(a) = \infty$。

<!-- element_order_divides -->
> [!Theorem]
> **元素阶的整除性 Divisibility of Element Order**：设 $G$ 为群，$a \in G$，$\mathrm{ord}(a) = n < \infty$。若 $a^m = e$，则 $n \mid m$。
>
> **证明思路**：对 $m$ 除以 $n$ 做带余除法 $m = qn + r$，$0 \leq r < n$，则 $a^r = (a^n)^{-q} \cdot a^m = e$，由 $n$ 的最小性知 $r = 0$。

## 群的例子

<!-- group_integer_example -->
> [!Example]+
> **整数加法群 Integer Additive Group**：$(\mathbb{Z}, +)$ 是阿贝尔群，单位元为 $0$，$n$ 的逆元为 $-n$。类似地，$(\mathbb{Q}, +)$、$(\mathbb{R}, +)$、$(\mathbb{C}, +)$ 均为阿贝尔群。

<!-- group_rational_mult_example -->
> [!Example]+
> **有理数乘法群 Rational Multiplicative Group**：$(\mathbb{Q}^+, \cdot)$ 是阿贝尔群，单位元为 $1$，$a$ 的逆元为 $\frac{1}{a}$。类似地，$(\mathbb{R}^+, \cdot)$ 也是阿贝尔群。

<!-- group_modular_example -->
> [!Example]+
> **模加法群 Modular Additive Group**：整数模 $m$ 的剩余类环 $(\mathbb{Z}/m\mathbb{Z}, +)$ 是阶为 $m$ 的有限阿贝尔群，单位元为 $\bar{0}$，$\bar{a}$ 的逆元为 $\overline{-a}$。

<!-- group_trivial_example -->
> [!Example]+
> **平凡群 Trivial Group**：仅含单位元 $\{e\}$ 的群称为**平凡群**，是最小的群，阶为 $1$。
