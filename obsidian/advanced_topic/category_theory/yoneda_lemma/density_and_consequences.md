# 稠密性与推论

## 米田观点：对象由其关系决定

<!-- yoneda_philosophy -->
> [!Theorem]
> **米田观点 Yoneda Philosophy**：设 $\mathcal{C}$ 为局部小范畴，$A, B \in \mathrm{Ob}(\mathcal{C})$。若对所有 $X \in \mathrm{Ob}(\mathcal{C})$，集合 $\mathrm{Hom}(X, A)$ 与 $\mathrm{Hom}(X, B)$ 关于 $X$ 自然同构（即 $h_A \cong h_B$ 作为 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 中的对象），则 $A \cong B$。
>
> **证明思路**：由 Yoneda 嵌入的全忠实性，$\mathrm{Nat}(h_A, h_B) \cong \mathrm{Hom}(A, B)$ 且 $\mathrm{Nat}(h_B, h_A) \cong \mathrm{Hom}(B, A)$；自然同构 $h_A \cong h_B$ 给出互逆的 $f: A \to B$ 与 $g: B \to A$，从而 $A \cong B$。

> **注**：这一原则即"一个对象由它与所有对象之间的关系完全决定"。换言之，**范畴 $\mathcal{C}$ 可以完全"嵌入"其预层范畴 $\widehat{\mathcal{C}}$**，而在 $\widehat{\mathcal{C}}$ 中，$\mathcal{C}$ 的对象以其 Hom 函子的形式出现。这是 Yoneda 嵌入全忠实性的哲学诠释，也是 Grothendieck 将代数几何建立在函子观点上的思想基础。

## 可表函子的唯一性

<!-- representable_uniqueness_via_yoneda -->
> [!Corollary]
> **可表函子的表示对象唯一 Uniqueness of Representation via Yoneda**：若函子 $F: \mathcal{C} \to \mathbf{Set}$（或 $F: \mathcal{C}^{\mathrm{op}} \to \mathbf{Set}$）可表，则其表示对象在同构意义下唯一。
>
> **证明思路**：若 $A$ 与 $B$ 均表示 $F$，则 $h_A = \mathrm{Hom}(A,-) \cong F \cong \mathrm{Hom}(B,-) = h_B$（协变情形），由米田观点得 $A \cong B$（反变情形对称）。

## 稠密性定理

<!-- density_theorem -->
> [!Theorem]
> **稠密性定理 Density Theorem**：设 $\mathcal{C}$ 为小范畴，$P \in \widehat{\mathcal{C}} = [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 为预层。则 $P$ 是可表预层的**规范余极限**（canonical colimit）：
> $$
> P \cong \operatorname*{colim}_{(A,\, x) \in \mathbf{el}(P)} h_A,
> $$
> 其中 $\mathbf{el}(P)$（$P$ 的**元素范畴**，category of elements）以 $(A, x)$（$A \in \mathcal{C}$，$x \in P(A)$）为对象、以 $f: A \to B$ 满足 $P(f)(y) = x$ 为从 $(A, x)$ 到 $(B, y)$ 的态射，$h_A = \mathrm{Hom}(-, A)$ 为 Yoneda 嵌入的像。
>
> **证明思路**：对每个 $C \in \mathcal{C}$，需构造双射
> $$
> \operatorname*{colim}_{(A, x) \in \mathbf{el}(P)} \mathrm{Hom}(C, A) \xrightarrow{\sim} P(C).
> $$
> 余极限在 $\mathbf{Set}$ 中逐点计算，由 Yoneda 引理 $\mathrm{Nat}(h_A, P) \cong P(A)$，利用余极限的泛性质与自然性可完成构造。

> **注**：稠密性定理说明：**每个预层都是可表预层的余极限**，即可表预层在预层范畴中"稠密"地生成了整个范畴。这是范畴论中"自由余完备化"思想的精确版本，也是 Kan 扩张理论（见 [[definition_of_kan_extension]]）的基础。

## 泛性质的统一刻画

<!-- yoneda_universal_property_unification -->
> [!Theorem]
> **泛性质的 Yoneda 刻画 Yoneda Reformulation of Universal Properties**：在局部小范畴 $\mathcal{C}$ 中，给定 $A \in \mathrm{Ob}(\mathcal{C})$ 与函子 $F: \mathcal{C} \to \mathbf{Set}$：
> - $F$ 由 $A$ 表示（即 $F \cong h^A = \mathrm{Hom}(A,-)$）当且仅当存在**泛元素** $e \in F(A)$；
> - 此时由 Yoneda 引理，$F$ 的全部结构（含对所有对象的作用）由 $e \in F(A)$ 唯一确定；
> - 范畴论中的各种"泛性质"（积、余积、等化子、自由对象、张量积……）均可统一表述为"某个函子可表"，而"表示对象"正是由该泛性质定义的对象。
>
> **证明思路**：见 [[representable_functor|可表函子]] 中"可表性等价于泛元素存在"定理，以及 [[statement_of_yoneda_lemma|Yoneda 引理]] 的推论。

## 推论与应用

<!-- yoneda_application_adjoint -->
> [!Corollary]
> **伴随的 Yoneda 刻画 Yoneda Characterization of Adjunctions**：函子 $F: \mathcal{C} \to \mathcal{D}$ 与 $G: \mathcal{D} \to \mathcal{C}$ 构成伴随对 $F \dashv G$，当且仅当存在自然同构
> $$
> \mathrm{Hom}_{\mathcal{D}}(F(-), -) \cong \mathrm{Hom}_{\mathcal{C}}(-, G(-))
> $$
> （作为 $\mathcal{C}^{\mathrm{op}} \times \mathcal{D}$ 上的函子到 $\mathbf{Set}$ 的自然同构）；这正是 [[definition_of_adjoint_functor|伴随函子]] 通过 Hom 集定义的方式，Yoneda 引理保证了单位-余单位定义与 Hom 集定义的等价性。

<!-- yoneda_application_limits -->
> [!Corollary]
> **极限的 Yoneda 刻画 Yoneda Characterization of Limits**：图表 $D: \mathcal{I} \to \mathcal{C}$ 的极限 $\lim D$（若存在）满足自然同构
> $$
> \mathrm{Hom}_{\mathcal{C}}(X, \lim D) \cong \mathrm{Nat}(\Delta_X, D),
> $$
> 其中 $\Delta_X: \mathcal{I} \to \mathcal{C}$ 为值为 $X$ 的常函子；右侧是从 $X$ 到图表 $D$ 的锥的集合。这表明极限函子 $\lim: [\mathcal{I}, \mathcal{C}] \to \mathcal{C}$ 可表示 $\mathrm{Nat}(\Delta_{(-)}, D)$，是 Yoneda 嵌入在极限理论中的直接应用（见 [[limit|极限]]）。
