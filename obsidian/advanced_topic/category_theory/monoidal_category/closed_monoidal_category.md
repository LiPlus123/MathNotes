# 闭幺半范畴

## 内部 Hom 对象

<!-- internal_hom_def -->
> [!Definition]
> **内部 Hom 对象 Internal Hom Object**：设 $(\mathcal{C}, \otimes, I)$ 是幺半范畴，$B \in \mathrm{Ob}(\mathcal{C})$。若函子 $- \otimes B: \mathcal{C} \to \mathcal{C}$ 有右伴随，记其右伴随在对象 $C$ 处的值为 $[B, C]$（也记作 $B \Rightarrow C$ 或 $\mathcal{C}(B, C)$），则 $[B, C]$ 称为**内部 Hom 对象**（internal hom object）或**指数对象**（exponential object，在笛卡尔闭范畴的语境中）。

<!-- closed_monoidal_category_def -->
> [!Definition]
> **闭幺半范畴 Closed Monoidal Category**：一个**（右）闭幺半范畴**（right closed monoidal category）是幺半范畴 $(\mathcal{C}, \otimes, I)$，使得对每个 $B \in \mathrm{Ob}(\mathcal{C})$，函子 $- \otimes B: \mathcal{C} \to \mathcal{C}$ 有右伴随 $[B, -]: \mathcal{C} \to \mathcal{C}$，即存在**张量-Hom 伴随**：
> $$
> (- \otimes B) \dashv [B, -],
> $$
> 对应自然同构：
> $$
> \varphi_{A,B,C}: \mathrm{Hom}_{\mathcal{C}}(A \otimes B, C) \xrightarrow{\sim} \mathrm{Hom}_{\mathcal{C}}(A, [B, C]).
> $$
> 类似地，若 $B \otimes -$ 也有右伴随 $\{B, -\}$（左内部 Hom），则称为**双闭幺半范畴**（biclosed monoidal category）。若幺半范畴是对称的，则左右内部 Hom 自然同构，统称**闭对称幺半范畴**（closed symmetric monoidal category）。

> **注**：伴随同构的余单位给出**求值态射**（evaluation map）：
> $$
> \mathrm{ev}_{B,C}: [B, C] \otimes B \to C,
> $$
> 它是 $\mathrm{id}_{[B,C]}$ 在伴随下对应的态射。单位给出**柯里化**（currying）映射：
> $$
> \mathrm{cur}(f): A \to [B, C], \quad \text{对应于 } f: A \otimes B \to C.
> $$

## 对称闭幺半范畴

<!-- symmetric_closed_monoidal -->
> [!Definition]
> **对称闭幺半范畴 Symmetric Closed Monoidal Category**：**对称闭幺半范畴**（symmetric closed monoidal category）是既是闭幺半范畴又是对称幺半范畴的幺半范畴 $(\mathcal{C}, \otimes, I, \alpha, \lambda, \rho, \beta)$，其中内部 Hom $[-, -]$ 满足：
> $$
> [A, [B, C]] \cong [A \otimes B, C] \cong [B, [A, C]],
> $$
> 自然性由 $\alpha$ 与 $\beta$ 保证。

## 笛卡尔闭范畴作为特例

<!-- cartesian_closed_as_special_case -->
> [!Theorem]
> **笛卡尔闭范畴是特殊的对称闭幺半范畴**：若 $(\mathcal{C}, \times, \{*\})$ 是笛卡尔闭范畴（即 $\otimes = \times$，$I$ 为终对象），则它是对称闭幺半范畴。内部 Hom $[B, C]$ 即为指数对象 $C^B$，张量-Hom 伴随即为：
> $$
> \mathrm{Hom}(A \times B, C) \cong \mathrm{Hom}(A, C^B).
> $$
>
> **证明思路**：笛卡尔积天然是对称的（交换律成立），且笛卡尔闭范畴的定义要求 $- \times B$ 有右伴随，即满足闭条件。

<!-- internal_hom_properties -->
> [!Theorem]
> **内部 Hom 的性质**：设 $(\mathcal{C}, \otimes, I)$ 是闭对称幺半范畴。则：
> 1. $[I, A] \cong A$（自然同构）；
> 2. $[A \otimes B, C] \cong [A, [B, C]]$（柯里化同构，自然于 $A, B, C$）；
> 3. $[A, -]$ 是右伴随，故保持极限；
> 4. $- \otimes B$ 是左伴随，故保持余极限（特别地，保持余积）。
>
> **证明思路**：(1) 由 $\mathrm{Hom}(X, [I, A]) \cong \mathrm{Hom}(X \otimes I, A) \cong \mathrm{Hom}(X, A)$，由 Yoneda 引理得同构；(2) 由伴随的复合 $(- \otimes A) \circ (- \otimes B) = - \otimes (A \otimes B)$（利用结合子）推出；(3)(4) 由伴随函子保持（余）极限（RAPL/LAPL）直接得到。

## 例子

<!-- closed_monoidal_examples -->
> [!Example]+
> **闭幺半范畴的例子**：
> 1. **集合范畴**：$(\mathbf{Set}, \times, \{*\})$ 是笛卡尔闭范畴，$[B, C] = C^B$（从 $B$ 到 $C$ 的全体函数构成的集合），求值为函数应用 $\mathrm{ev}(f, b) = f(b)$。
> 2. **向量空间范畴**：$(\mathbf{Vect}_F, \otimes_F, F)$ 是对称闭幺半范畴，$[V, W] = \mathrm{Hom}_F(V, W)$（线性映射空间），伴随同构为 $\mathrm{Hom}(U \otimes V, W) \cong \mathrm{Hom}(U, \mathrm{Hom}_F(V, W))$（张量积的泛性质）。
> 3. **左 $R$-模范畴（$R$ 交换）**：$(R\text{-}\mathbf{Mod}, \otimes_R, R)$ 是对称闭幺半范畴，$[M, N] = \mathrm{Hom}_R(M, N)$，张量-Hom 伴随为 $\mathrm{Hom}_R(L \otimes_R M, N) \cong \mathrm{Hom}_R(L, \mathrm{Hom}_R(M, N))$。
> 4. **预层范畴**：$(\widehat{\mathcal{C}}, \times, \{*\})$ 是笛卡尔闭范畴（$\widehat{\mathcal{C}} = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$），指数对象 $[P, Q](A) = \mathrm{Nat}(h_A \times P, Q)$（其中 $h_A = \mathrm{Hom}(-, A)$）。
