# 笛卡尔闭范畴

## 笛卡尔闭范畴的定义

<!-- cartesian_closed_category_def -->
> [!Definition]
> **笛卡尔闭范畴 Cartesian Closed Category**：一个**笛卡尔闭范畴**（cartesian closed category，简称 CCC）是满足以下条件的范畴 $\mathcal{C}$：
> 1. $\mathcal{C}$ 有**终对象** $1$；
> 2. $\mathcal{C}$ 有任意两对象的**积** $A \times B$（从而有有限积）；
> 3. 对任意对象 $B$，函子 $- \times B: \mathcal{C} \to \mathcal{C}$ 有右伴随，记为 $B \Rightarrow -$（或 $[B, -]$）：
> $$
> (- \times B) \dashv (B \Rightarrow -),
> $$
> 即存在自然同构：
> $$
> \mathrm{Hom}(A \times B, C) \cong \mathrm{Hom}(A, B \Rightarrow C).
> $$

## 指数对象

<!-- exponential_object_def -->
> [!Definition]
> **指数对象 Exponential Object**：在笛卡尔闭范畴 $\mathcal{C}$ 中，$B$ 与 $C$ 的**指数对象**（exponential object）$C^B$（也记 $B \Rightarrow C$ 或 $[B, C]$）定义为函子 $- \times B$ 的右伴随在 $C$ 处的值，满足泛性质：
>
> 存在唯一的**求值态射**（evaluation map）
> $$
> \mathrm{ev}_{B,C}: C^B \times B \to C,
> $$
> 使得对任意 $f: A \times B \to C$，存在唯一的**柯里化**（currying）态射 $\mathrm{cur}(f): A \to C^B$，满足：
> $$
> \mathrm{ev}_{B,C} \circ (\mathrm{cur}(f) \times \mathrm{id}_B) = f.
> $$

> **注**：指数对象 $C^B$ 是"从 $B$ 到 $C$ 的内部函数空间"。柯里化同构
> $$
> \mathrm{Hom}(A \times B, C) \cong \mathrm{Hom}(A, C^B)
> $$
> 即逻辑上的"蕴含引入规则"（implication introduction）：$A \wedge B \to C$ 等价于 $A \to (B \Rightarrow C)$。

## 基本性质

<!-- ccc_properties -->
> [!Theorem]
> **笛卡尔闭范畴的基本性质**：在笛卡尔闭范畴 $\mathcal{C}$ 中：
> 1. $C^1 \cong C$（自然同构）；
> 2. $(C^B)^A \cong C^{A \times B}$（指数律，自然同构）；
> 3. $(B \times C)^A \cong B^A \times C^A$（分配律，自然同构）；
> 4. 函子 $- \times B$ 保持余极限（作为左伴随）；
> 5. 函子 $B \Rightarrow -$ 保持极限（作为右伴随）。
>
> **证明思路**：利用 Hom 集同构与 Yoneda 引理：(1) $\mathrm{Hom}(A, C^1) \cong \mathrm{Hom}(A \times 1, C) \cong \mathrm{Hom}(A, C)$，由 Yoneda 得 $C^1 \cong C$；(2)(3) 类似利用 Hom 集同构的复合与积的交换性；(4)(5) 由伴随函子的一般性质。

## 例子

<!-- ccc_examples -->
> [!Example]+
> **笛卡尔闭范畴的例子**：
> 1. **$\mathbf{Set}$**：指数对象 $C^B = \{f: B \to C\}$（函数集），求值 $\mathrm{ev}(f, b) = f(b)$，柯里化 $\mathrm{cur}(g)(a)(b) = g(a, b)$。
> 2. **预层范畴 $\widehat{\mathcal{C}} = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$**：积为逐点积，指数对象 $[P, Q](A) = \mathrm{Nat}(h_A \times P, Q)$（其中 $h_A = \mathrm{Hom}(-, A)$），由 Yoneda 引理保证存在性。
> 3. **偏序集（Heyting 代数）$(\mathbf{Pos}, \times, 1)$**：笛卡尔闭当且仅当偏序集是 Heyting 代数，指数对象 $b \Rightarrow c = \bigvee\{a \mid a \wedge b \leq c\}$（伪补元）。
> 4. **$\mathbf{Top}$ 不是笛卡尔闭**：拓扑空间范畴（以通常积拓扑）不是笛卡尔闭；但紧 Hausdorff 空间范畴与紧生成弱 Hausdorff 空间范畴是笛卡尔闭的。
> 5. **简单类型 $\lambda$-演算的语义**：简单类型 $\lambda$-演算的语义就是笛卡尔闭范畴（见 [[curry_howard_lambek_correspondence|Curry–Howard–Lambek 对应]]）。
