# 可表函子

## Hom 函子回顾

> **注**：协变 Hom 函子 $\mathrm{Hom}_{\mathcal{C}}(A, -): \mathcal{C} \to \mathbf{Set}$ 与反变 Hom 函子 $\mathrm{Hom}_{\mathcal{C}}(-, A): \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ 已在 [[definition_of_functor|函子的定义]] 中给出。本节以此为基础定义可表函子。

## 可表函子

<!-- representable_functor_def -->
> [!Definition]
> **可表函子 Representable Functor**：设 $\mathcal{C}$ 为局部小范畴，$F: \mathcal{C} \to \mathbf{Set}$ 为函子。若存在对象 $A \in \mathrm{Ob}(\mathcal{C})$ 与自然同构
> $$
> \alpha: \mathrm{Hom}_{\mathcal{C}}(A, -) \xRightarrow{\sim} F,
> $$
> 则称 $F$ 为**（协变）可表函子**，称 $A$ 为 $F$ 的**表示对象**（representing object），称自然同构 $\alpha$ 为**表示**（representation）。

<!-- contravariant_representable_functor_def -->
> [!Definition]
> **反变可表函子 Contravariant Representable Functor**：若反变函子 $F: \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$ 存在对象 $A$ 与自然同构
> $$
> \alpha: \mathrm{Hom}_{\mathcal{C}}(-, A) \xRightarrow{\sim} F,
> $$
> 则称 $F$ 为**反变可表函子**，$A$ 为其**表示对象**。

## 表示对象的唯一性

<!-- representing_object_unique -->
> [!Theorem]
> **表示对象在同构意义下唯一 Uniqueness of Representing Object**：若 $\mathrm{Hom}_{\mathcal{C}}(A, -) \cong \mathrm{Hom}_{\mathcal{C}}(B, -)$（作为函子 $\mathcal{C} \to \mathbf{Set}$ 的自然同构），则 $A \cong B$（在 $\mathcal{C}$ 中）。
>
> **证明思路**：由 Yoneda 引理（见 [[statement_of_yoneda_lemma]]），$\mathrm{Nat}(\mathrm{Hom}(A,-), \mathrm{Hom}(B,-)) \cong \mathrm{Hom}(B, A)$（取 $F = \mathrm{Hom}(B,-)$）；类似地 $\mathrm{Nat}(\mathrm{Hom}(B,-), \mathrm{Hom}(A,-)) \cong \mathrm{Hom}(A, B)$。自然同构给出互逆的态射对，从而 $A \cong B$。

## 泛元素与表示

<!-- representable_universal_element -->
> [!Theorem]
> **可表性等价于泛元素存在 Representability via Universal Element**：函子 $F: \mathcal{C} \to \mathbf{Set}$ 可表（表示对象为 $A$）当且仅当 $F$ 有泛元素 $(A, e)$（$e \in F(A)$）：对任意 $C$ 与 $x \in F(C)$，存在唯一 $f: A \to C$ 使 $F(f)(e) = x$。
>
> 此时，$e = \alpha_A(\mathrm{id}_A) \in F(A)$（其中 $\alpha: \mathrm{Hom}(A,-) \xRightarrow{\sim} F$ 为表示），且自然同构由
> $$
> \alpha_C: \mathrm{Hom}(A, C) \to F(C), \quad f \mapsto F(f)(e)
> $$
> 给出。
>
> **证明思路**：
> - 给定表示 $\alpha$，令 $e = \alpha_A(\mathrm{id}_A)$。对任意 $x \in F(C)$，令 $f = \alpha_C^{-1}(x) \in \mathrm{Hom}(A, C)$；由自然性 $F(f)(e) = F(f)(\alpha_A(\mathrm{id}_A)) = \alpha_C(\mathrm{id}_A \circ - |_{f}) = \alpha_C(f) = x$，唯一性由 $\alpha_C$ 为双射保证。
> - 反过来，若 $(A, e)$ 是泛元素，则上式定义的 $\alpha_C$ 是双射；验证关于 $\mathcal{C}$ 中态射的自然性即得自然同构。

## 可表函子的例子

<!-- representable_example_hom -->
> [!Example]+
> **Hom 函子自身可表**：$\mathrm{Hom}_{\mathcal{C}}(A, -)$ 由对象 $A$ 表示，表示为恒等（$\alpha = \mathrm{id}$），泛元素为 $\mathrm{id}_A \in \mathrm{Hom}_{\mathcal{C}}(A, A)$。

<!-- representable_example_forgetful_group -->
> [!Example]+
> **$\mathbf{Grp}$ 上的忘却函子可表**：忘却函子 $U: \mathbf{Grp} \to \mathbf{Set}$ 由整数加法群 $(\mathbb{Z}, +)$ 表示：$U(-) \cong \mathrm{Hom}_{\mathbf{Grp}}(\mathbb{Z}, -)$，因为群同态 $\mathbb{Z} \to G$ 由像 $f(1) \in G$ 唯一确定，故 $\mathrm{Hom}_{\mathbf{Grp}}(\mathbb{Z}, G) \cong |G|$（集合双射）。泛元素为 $1 \in \mathbb{Z}$。

<!-- representable_example_forgetful_ring -->
> [!Example]+
> **$\mathbf{Ring}$ 上的忘却函子可表**：$U: \mathbf{Ring} \to \mathbf{Set}$（取底集）由多项式环 $\mathbb{Z}[x]$ 表示：$U(-) \cong \mathrm{Hom}_{\mathbf{Ring}}(\mathbb{Z}[x], -)$，因为环同态 $\mathbb{Z}[x] \to R$ 由 $x$ 的像 $r \in R$ 唯一确定。泛元素为 $x \in \mathbb{Z}[x]$。

<!-- representable_example_dual_space -->
> [!Example]+
> **对偶空间函子的可表性**：对固定域 $F$，"取标量域"函子 $\mathrm{Hom}_{\mathbf{Vect}_F}(-, F): \mathbf{Vect}_F^{\mathrm{op}} \to \mathbf{Set}$ 是反变可表函子，由一维空间 $F$ 表示：$\mathrm{Hom}_{\mathbf{Vect}_F}(V, F) \cong \mathrm{Hom}_{\mathbf{Vect}_F}(V, F)$（平凡地）；实际意义在于：对偶空间函子 $(-)^* = \mathrm{Hom}(-, F)$ 是由 $F$ 表示的反变函子。

<!-- representable_example_det -->
> [!Example]+
> **行列式函子的可表性**：在 $\mathbf{CRing}$ 上，将交换环 $R$ 映为 $\mathrm{GL}_n(R)$（可逆 $n \times n$ 矩阵群）的"行列式为 $1$"子集 $\mathrm{SL}_n(R)$ 的函子 $\mathrm{SL}_n: \mathbf{CRing} \to \mathbf{Set}$ 由商环 $\mathbb{Z}[x_{11}, x_{12}, \ldots, x_{nn}] / (\det - 1)$ 表示。这是代数几何中**可表函子**（线性代数群为仿射概形）的基本例子。

<!-- representable_example_not_representable -->
> [!Example]+
> **不可表的函子**：集合范畴上的幂集函子 $\mathcal{P}: \mathbf{Set} \to \mathbf{Set}$（$X \mapsto \mathcal{P}(X)$，协变版本）**不可表**：若 $\mathcal{P} \cong \mathrm{Hom}(A, -)$，则对所有 $X$ 有 $|\mathcal{P}(X)| = 2^{|X|}$ 而 $|\mathrm{Hom}(A, X)| = |X|^{|A|}$；令 $|X| = 2$ 时要求 $|A| = \log_2 4 = 2$，但令 $|X| = 3$ 时要求 $|A| = \log_3 8$，矛盾。
