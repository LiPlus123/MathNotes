# 单子性

## 比较函子

<!-- comparison_functor_def -->
> [!Definition]
> **比较函子 Comparison Functor**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$），单位为 $\eta$，余单位为 $\varepsilon$，由此伴随诱导的单子为 $(T, \eta, \mu)$（$T = G \circ F$，$\mu_A = G(\varepsilon_{F(A)})$）。**比较函子**（comparison functor）是：
> $$
> K: \mathcal{D} \to \mathcal{C}^T, \qquad K(B) = (G(B),\, G(\varepsilon_B)),
> $$
> 对态射 $g: B \to B'$，$K(g) = G(g): (G(B), G(\varepsilon_B)) \to (G(B'), G(\varepsilon_{B'}))$。

> **注**：验证 $K(B) = (G(B), G(\varepsilon_B))$ 确为 $T$-代数：
> - 单位相容性：$G(\varepsilon_B) \circ \eta_{G(B)} = \mathrm{id}_{G(B)}$，即三角恒等式；
> - 结合相容性：$G(\varepsilon_B) \circ \mu_{G(B)} = G(\varepsilon_B) \circ G(\varepsilon_{F(G(B))}) = G(\varepsilon_B \circ \varepsilon_{F(G(B))}) = G(\varepsilon_B) \circ G(F(G(\varepsilon_B)))$，由 $\varepsilon$ 的自然性保证。

<!-- monadicity_def -->
> [!Definition]
> **单子性 Monadicity**：若比较函子 $K: \mathcal{D} \to \mathcal{C}^T$ 是范畴等价（即全忠实且本质满），则称伴随 $F \dashv G$（或函子 $G: \mathcal{D} \to \mathcal{C}$）是**单子的**（monadic）。此时 $\mathcal{D}$ 等价于 $\mathcal{C}^T$，即 $\mathcal{D}$ 等价于某单子的代数范畴。

## Beck 单子性定理

<!-- u_split_coequalizer_def -->
> [!Definition]
> **$U$-分裂余等化子 $U$-Split Coequalizer**：设 $U: \mathcal{D} \to \mathcal{C}$ 为函子。$\mathcal{D}$ 中的一对平行态射 $f, g: A \rightrightarrows B$ 称为 **$U$-分裂对**（$U$-split pair），若存在 $\mathcal{C}$ 中的余等化子分裂：即存在 $q: U(B) \to Q$，$s: Q \to U(B)$，$t: U(B) \to U(A)$，使得：
> $$
> q \circ U(f) = q \circ U(g), \quad s \circ q = \mathrm{id}_{U(B)}, \quad q \circ U(g) \circ t = \mathrm{id}_Q \cdot \text{（或等价地 } q \text{ 是分裂余等化子）}.
> $$
> 若 $\mathcal{D}$ 中存在 $f, g$ 的余等化子 $q': B \to C$ 且 $U(q')$ 同构于 $q$，则称 $(f, g, q')$ 为 **$U$-分裂余等化子**。

<!-- beck_monadicity_theorem -->
> [!Theorem]
> **Beck 单子性定理 Beck's Monadicity Theorem**：设 $F \dashv G$（$F: \mathcal{C} \to \mathcal{D}$，$G: \mathcal{D} \to \mathcal{C}$）。比较函子 $K: \mathcal{D} \to \mathcal{C}^T$ 是范畴等价（即 $G$ 是单子的），当且仅当：
> 1. $G$ **反射同构**（reflects isomorphisms）：若 $G(g)$ 是同构，则 $g$ 是同构；
> 2. $\mathcal{D}$ 关于所有 **$G$-分裂对**（$G$-split pairs）有余等化子，且 $G$ 保持这些余等化子。
>
> **证明思路**：
> - $K$ 全忠实：$\mathrm{Hom}_{\mathcal{D}}(B, B') \cong \mathrm{Hom}_{\mathcal{C}^T}(K(B), K(B'))$ 由伴随同构给出，条件 (1) 保证忠实性；
> - $K$ 本质满：给定 $T$-代数 $(A, h: T(A) \to A)$，利用 $G$-分裂余等化子在 $\mathcal{D}$ 中构造出对象 $B$，使 $K(B) \cong (A, h)$；具体地，$(A, h)$ 可表示为自由代数的余等化子 $F(T(A)) \rightrightarrows F(A) \to B$（其中两个平行态射分别对应 $F(h)$ 与 $\varepsilon_{F(A)}$），条件 (2) 保证此余等化子在 $\mathcal{D}$ 中存在且被 $G$ 正确识别。

<!-- beck_crude_monadicity -->
> [!Theorem]
> **粗略 Beck 定理（充分条件）Crude Monadicity Theorem**：若 $G: \mathcal{D} \to \mathcal{C}$ 满足：
> 1. $G$ 反射同构；
> 2. $\mathcal{D}$ 有有限余极限（特别是所有余等化子），且 $G$ 保持它们；
>
> 则 $G$ 是单子的（前提是存在左伴随 $F \dashv G$）。
>
> **证明思路**：有限余极限的条件蕴含了 $G$-分裂对的余等化子存在性，故直接满足 Beck 定理的条件。

## 单子性的应用

<!-- monadicity_applications -->
> [!Example]+
> **单子性的应用：代数范畴的刻画**：Beck 单子性定理给出了"何时 $\mathcal{D}$ 是某个代数范畴"的精确判据：
> 1. **遗忘函子的单子性**：设 $U: \mathbf{Grp} \to \mathbf{Set}$ 为遗忘函子，$F \dashv U$（$F$ 为自由群函子）。$U$ 反射同构（群同构当且仅当底层集合双射），且 $\mathbf{Grp}$ 中每对平行群同态有余等化子（商群），$U$ 保持它们。故 $U$ 是单子的，$\mathbf{Grp} \simeq \mathbf{Set}^T$（$T$ 为自由群单子）。类似结论对 $\mathbf{Ab}$、$R\text{-}\mathbf{Mod}$、$\mathbf{Ring}$ 等代数范畴均成立。
> 2. **非单子性的例子**：范畴等价 $\mathcal{C} \simeq \mathcal{D}$ 不一定来自单子。例如，$\mathbf{Top}$ 上的紧化函子并非单子的遗忘函子，因为 $\mathbf{Top}$ 不能写成 $\mathbf{Set}$ 上某个单子的代数范畴（$U: \mathbf{Top} \to \mathbf{Set}$ 在适当意义下不单子，因为拓扑结构不完全由"代数操作"决定）。
> 3. **单子性与可代数化**：代数范畴（由 Lawvere 理论或操作（operations）与公理（equations）定义的范畴，如群、环、模、格）的遗忘函子均单子，且其 Eilenberg–Moore 范畴等价于原代数范畴。这提供了"纯范畴论"刻画代数结构的统一框架。

<!-- barr_beck_corollary -->
> [!Corollary]
> **有效下降条件 Effective Descent Condition**：设 $p: E \to B$ 是范畴 $\mathcal{C}$ 中的态射，切片范畴的基变换函子 $p^*: \mathcal{C}/B \to \mathcal{C}/E$ 是单子的，当且仅当 $p$ 是**有效下降态射**（effective descent morphism）。这是 Grothendieck 下降理论的范畴论表述，联系着代数几何与拓扑中的下降（descent）问题。

> **注**：Beck 单子性定理是范畴论中最重要的结果之一，它将"$\mathcal{D}$ 等价于某代数范畴"的问题化归为对遗忘函子 $G$ 的两个纯范畴性质的验证，从而统一了大量具体的代数与几何中的"代数化"现象。
