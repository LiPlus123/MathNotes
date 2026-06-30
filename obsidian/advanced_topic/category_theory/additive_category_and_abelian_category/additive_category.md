# 加法范畴

## 双积

<!-- biproduct_def -->
> [!Definition]
> **双积 Biproduct**：设 $\mathcal{C}$ 是预加法范畴，$A, B \in \mathrm{Ob}(\mathcal{C})$。对象 $A \oplus B$ 连同态射
> $$
> \pi_1: A \oplus B \to A, \quad \pi_2: A \oplus B \to B, \quad \iota_1: A \to A \oplus B, \quad \iota_2: B \to A \oplus B
> $$
> 称为 $A$ 与 $B$ 的**双积**（biproduct）或**直和**（direct sum），若满足：
> $$
> \pi_1 \circ \iota_1 = \mathrm{id}_A, \quad \pi_2 \circ \iota_2 = \mathrm{id}_B, \quad \pi_1 \circ \iota_2 = 0_{B,A}, \quad \pi_2 \circ \iota_1 = 0_{A,B},
> $$
> $$
> \iota_1 \circ \pi_1 + \iota_2 \circ \pi_2 = \mathrm{id}_{A \oplus B}.
> $$

> **注**：双积同时是**积**（以 $\pi_1, \pi_2$ 为投影）和**余积**（以 $\iota_1, \iota_2$ 为嵌入）。前四个等式说明 $(\pi_i, \iota_j)$ 构成"矩阵单位"；最后一个等式是关键的补全条件，它蕴含双积在普通意义下也是积与余积。

## 加法范畴的定义

<!-- additive_category_def -->
> [!Definition]
> **加法范畴 Additive Category**：一个**加法范畴**（additive category）是满足以下条件的预加法范畴 $\mathcal{C}$：
> 1. $\mathcal{C}$ 有**零对象**（zero object）$0$（既是初对象又是终对象）；
> 2. $\mathcal{C}$ 中任意两对象 $A, B$ 有**双积** $A \oplus B$。

> **注**：由于加法范畴同时有零对象与有限双积，可归纳得任意有限族对象的双积 $A_1 \oplus A_2 \oplus \cdots \oplus A_n$ 均存在（空双积为零对象）。

## 有限积与余积的重合

<!-- finite_product_coproduct_coincide -->
> [!Theorem]
> **有限积与余积的重合**：设 $\mathcal{C}$ 是加法范畴。则 $A$ 与 $B$ 的积、余积均存在，且与双积 $A \oplus B$ 自然同构。具体地：
> - $A \oplus B$ 配以 $(\pi_1, \pi_2)$ 是 $A$ 与 $B$ 的积；
> - $A \oplus B$ 配以 $(\iota_1, \iota_2)$ 是 $A$ 与 $B$ 的余积。
>
> 反之，若预加法范畴有有限积（或有限余积），则有限积（余积）自动也是双积，从而是加法范畴。
>
> **证明思路**：
> - **积**：对任意 $f: X \to A$，$g: X \to B$，令 $\langle f, g \rangle = \iota_1 \circ f + \iota_2 \circ g: X \to A \oplus B$，验证 $\pi_1 \circ \langle f, g \rangle = f$，$\pi_2 \circ \langle f, g \rangle = g$，且此配对态射唯一（利用 $\iota_1 \circ \pi_1 + \iota_2 \circ \pi_2 = \mathrm{id}$）；
> - **余积**：对任意 $f: A \to X$，$g: B \to X$，令 $[f, g] = f \circ \pi_1 + g \circ \pi_2: A \oplus B \to X$，类似验证。

<!-- additive_functor_def -->
> [!Definition]
> **加法函子 Additive Functor**：设 $\mathcal{C}$，$\mathcal{D}$ 为预加法范畴。函子 $F: \mathcal{C} \to \mathcal{D}$ 称为**加法函子**（additive functor），若对任意 $A, B \in \mathrm{Ob}(\mathcal{C})$，映射 $F_{A,B}: \mathrm{Hom}_{\mathcal{C}}(A, B) \to \mathrm{Hom}_{\mathcal{D}}(F(A), F(B))$ 是阿贝尔群同态，即 $F(f + g) = F(f) + F(g)$。

> **注**：加法函子保持零态射、双积（在加法范畴之间）。加法范畴之间的自然变换无需额外条件：任意函子范畴中的自然变换已足够。

## 例子

<!-- additive_category_examples -->
> [!Example]+
> **加法范畴的例子**：
> 1. $\mathbf{Ab}$（阿贝尔群范畴）：双积为直和 $A \oplus B$（作为集合即笛卡尔积，群运算分量进行）。
> 2. $R\text{-}\mathbf{Mod}$（左 $R$-模范畴）：双积为模的直和 $M \oplus N$。
> 3. $\mathbf{Vect}_F$（$F$-向量空间范畴）：双积为向量空间直和。
> 4. **矩阵范畴 $\mathbf{Mat}_R$**（对象为非负整数，$\mathrm{Hom}(m,n) = n \times m$ 矩阵）：双积为 $m \oplus n = m + n$。
