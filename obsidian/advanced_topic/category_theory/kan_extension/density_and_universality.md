# 密度定理与"一切皆 Kan 扩张"

## 密度定理

<!-- density_theorem_kan -->
> [!Theorem]
> **密度定理（Kan 扩张版）Density Theorem**：设 $\mathcal{C}$ 为小范畴，$\mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 为 Yoneda 嵌入。对任意预层 $P \in [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$，$P$ 是 Yoneda 嵌入 $\mathbf{よ}$ 沿其自身的左 Kan 扩张：
> $$
> P \cong (\mathrm{Lan}_{\mathbf{よ}} \mathbf{よ})(P) \cong \operatorname{colim}_{(c,\, h^c \to P) \in (\mathbf{よ} \downarrow P)} h^c,
> $$
> 即每个预层 $P$ 是可表函子 $\{h^c = \mathrm{Hom}(-, c)\}_{c \in \mathcal{C}}$ 的典范余极限。
>
> **证明思路**：由逐点左 Kan 扩张公式，$(\mathrm{Lan}_{\mathbf{よ}} \mathbf{よ})(P) = \operatorname{colim}_{(c, h^c \to P)} h^c$。由 Yoneda 引理，$\mathrm{Nat}(h^c, P) \cong P(c)$，故元素范畴 $(\mathbf{よ} \downarrow P)$（即 $\mathbf{el}(P)$）上的余极限恰好给出 $P$ 本身：利用 Yoneda 引理对每个 $Q \in [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 验证 $\mathrm{Nat}(P, Q) \cong \mathrm{Nat}(\operatorname{colim}_{(c, h^c \to P)} h^c, Q)$，即可由 Yoneda 嵌入全忠实推出自然同构。

> **注**：密度定理可改写为：Yoneda 嵌入 $\mathbf{よ}: \mathcal{C} \to [\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 是**稠密的**（dense）——任何预层 $P$ 均可典范地表示为可表函子的余极限。这是 [[density_and_consequences|稠密性与推论]] 中稠密性定理的 Kan 扩张等价表述。

## 米田引理的 Kan 扩张解读

<!-- yoneda_as_kan -->
> [!Theorem]
> **米田引理的 Kan 扩张解读 Yoneda Lemma via Kan Extensions**：设 $\mathcal{C}$ 小，$F: \mathcal{C} \to \mathbf{Set}$。则 $F$ 沿 Yoneda 嵌入 $\mathbf{よ}$ 的左 Kan 扩张在 $h^A = \mathrm{Hom}(-, A)$ 处的值恢复 $F(A)$：
> $$
> (\mathrm{Lan}_{\mathbf{よ}} F)(h^A) \cong F(A).
> $$
> 这是因为逐点公式中 $(\mathbf{よ} \downarrow h^A)$ 的终对象为 $(A, \mathrm{id}_{h^A})$（Yoneda 嵌入全忠实），故余极限坍缩为 $F(A)$。由此，Yoneda 引理 $\mathrm{Nat}(h^A, F) \cong F(A)$ 等价于：$\mathrm{Nat}(h^A, F) \cong (\mathrm{Lan}_{\mathbf{よ}} F)(h^A)$，即 Yoneda 同构是 Kan 扩张泛性质的体现。

## "一切皆 Kan 扩张"

<!-- all_concepts_are_kan -->
> [!Theorem]
> **"一切概念皆为 Kan 扩张" All Concepts are Kan Extensions**（Mac Lane）：范畴论中几乎所有的基本构造均可统一表述为 Kan 扩张：
>
> | 构造 | Kan 扩张的描述 |
> |------|---------------|
> | 余极限 $\operatorname{colim} F$ | $\mathrm{Lan}_{K} F$，$K: \mathcal{C} \to \mathbf{1}$ |
> | 极限 $\lim F$ | $\mathrm{Ran}_{K} F$，$K: \mathcal{C} \to \mathbf{1}$ |
> | 右伴随 $G$（$F \dashv G$） | $\mathrm{Ran}_{F} \mathrm{Id}$ |
> | 左伴随 $F$（$F \dashv G$） | $\mathrm{Lan}_{G} \mathrm{Id}$ |
> | 密度（预层分解） | $\mathrm{Lan}_{\mathbf{よ}} \mathbf{よ} \cong \mathrm{Id}$ |
> | 几何实现 | $\mathrm{Lan}_{\mathbf{よ}} \iota$（$\iota: \Delta \to \mathbf{Top}$） |
> | 自由余完备化 | $\mathrm{Lan}_{\mathbf{よ}} F$（$\mathcal{C}$ 小，$\mathcal{E}$ 余完备）|
>
> **注**（Mac Lane，1978）："The notion of Kan extensions subsumes all the other fundamental concepts of category theory."

<!-- absolute_kan_extension -->
> [!Definition]
> **绝对 Kan 扩张 Absolute Kan Extension**：称左 Kan 扩张 $\mathrm{Lan}_K F$ 是**绝对的**（absolute），若对任意函子 $G: \mathcal{E} \to \mathcal{E}'$，$G \circ \mathrm{Lan}_K F$ 仍是 $G \circ F$ 沿 $K$ 的左 Kan 扩张（即 Kan 扩张被任何函子保持，无需函子保余极限）。绝对 Kan 扩张等价于对应逗号范畴上的**绝对余极限**（被任何函子保持的余极限），常见于伴随的单位和余单位所给出的 Kan 扩张中。

## 推论：泛构造的 Kan 扩张刻画

<!-- kan_universal_characterization -->
> [!Corollary]
> **泛构造的 Kan 扩张刻画 Universal Constructions via Kan Extensions**：由"一切皆 Kan 扩张"可得，范畴论中的泛性质可统一叙述为：对象 $X$ 满足某泛性质，当且仅当某自然变换（单位或余单位）构成沿某函子的（左或右）Kan 扩张。这给出了泛性质的终极统一框架，也是 Kan 扩张被视为"范畴论最核心概念"的原因之一。
