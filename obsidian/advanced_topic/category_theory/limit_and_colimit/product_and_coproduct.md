# 积与余积

## 积的定义

<!-- product_def -->
> [!Definition]
> **积 Product**：设 $\mathcal{C}$ 为范畴，$\{A_i\}_{i \in I}$ 为对象族（$I$ 为集合）。**积** $\prod_{i \in I} A_i$ 是以 $I$ 为对象集、无非恒等态射的**离散图表** $D: \mathrm{Disc}(I) \to \mathcal{C}$（$D(i) = A_i$）的极限，即一个对象 $P$ 连同一族**投影态射** $\pi_i: P \to A_i$，满足以下泛性质：对任意对象 $X$ 与任意一族态射 $f_i: X \to A_i$，存在唯一的 $\langle f_i \rangle_{i \in I}: X \to P$ 使得对所有 $i$，
> $$
> \pi_i \circ \langle f_i \rangle = f_i.
> $$
> 两个对象 $A, B$ 的积记为 $A \times B$，投影记为 $\pi_1: A \times B \to A$，$\pi_2: A \times B \to B$。

## 余积的定义

<!-- coproduct_def -->
> [!Definition]
> **余积 Coproduct**：对象族 $\{A_i\}_{i \in I}$ 的**余积** $\coprod_{i \in I} A_i$（也记为 $\bigsqcup_{i \in I} A_i$）是对应离散图表的余极限，即一个对象 $Q$ 连同一族**嵌入态射** $\iota_i: A_i \to Q$，满足：对任意对象 $X$ 与一族态射 $g_i: A_i \to X$，存在唯一的 $[g_i]_{i \in I}: Q \to X$ 使得对所有 $i$，
> $$
> [g_i] \circ \iota_i = g_i.
> $$
> 两个对象 $A, B$ 的余积记为 $A \sqcup B$（或 $A + B$），嵌入记为 $\iota_1: A \to A \sqcup B$，$\iota_2: B \to A \sqcup B$。

## 积与余积的基本性质

<!-- product_properties -->
> [!Theorem]
> **积的结合律与交换律（同构意义下）**：在有积的范畴中，
> $$
> A \times (B \times C) \cong (A \times B) \times C, \qquad A \times B \cong B \times A.
> $$
> 若范畴有终对象 $T$，则 $A \times T \cong A$。
>
> **证明思路**：通过泛性质验证两侧具有相同的泛性质，从而同构。

<!-- coproduct_properties -->
> [!Theorem]
> **余积的结合律与交换律（同构意义下）**：在有余积的范畴中，
> $$
> A \sqcup (B \sqcup C) \cong (A \sqcup B) \sqcup C, \qquad A \sqcup B \cong B \sqcup A.
> $$
> 若范畴有初对象 $I$，则 $A \sqcup I \cong A$。
>
> **证明思路**：由对偶原理与积的结合律/交换律立得。

## 例子

<!-- product_example_set -->
> [!Example]+
> **$\mathbf{Set}$ 中的积与余积**：
> - **积**：集合 $A, B$ 的积为笛卡尔积 $A \times B = \{(a, b) \mid a \in A, b \in B\}$，投影为 $\pi_1(a,b) = a$，$\pi_2(a,b) = b$；
> - **余积**：集合 $A, B$ 的余积为不相交并 $A \sqcup B = A \times \{0\} \cup B \times \{1\}$，嵌入为 $\iota_1(a) = (a,0)$，$\iota_2(b) = (b,1)$。
>
> 更一般地，$\prod_{i \in I} A_i$ 为笛卡尔积，$\coprod_{i \in I} A_i$ 为不相交并。

<!-- product_example_grp -->
> [!Example]+
> **$\mathbf{Grp}$ 中的积与余积**：
> - **积**：群 $G, H$ 的积为直积 $G \times H$，群运算分量级别定义；
> - **余积（自由积）**：群 $G, H$ 的余积为自由积 $G * H$（由 $G, H$ 的生成元生成、仅满足各自群关系的群）；
> - **在 $\mathbf{Ab}$ 中**：阿贝尔群的积与余积均为直积/直和 $G \oplus H = G \times H$（因为 $\mathbf{Ab}$ 是加法范畴，积与余积重合，即**双积**，见 [[additive_category]]）。

<!-- product_example_top -->
> [!Example]+
> **$\mathbf{Top}$ 中的积与余积**：
> - **积**：拓扑空间 $X, Y$ 的积为赋予乘积拓扑的 $X \times Y$（以积集的投影开集生成的最粗拓扑）；
> - **余积**：$X, Y$ 的余积为赋予不相交并拓扑（各分量开集的并为开集）的 $X \sqcup Y$。

<!-- product_example_mod -->
> [!Example]+
> **$R\text{-}\mathbf{Mod}$ 中的积与余积**：
> - **有限积（直积）**：$M \times N$，分量级别运算；
> - **有限余积（直和）**：$M \oplus N = M \times N$（有限时积与余积重合）；
> - **无限时**：无限积为全直积 $\prod_{i} M_i$；无限余积（直和）$\bigoplus_i M_i$ 为仅有有限多个非零分量的子模，严格小于全直积。
