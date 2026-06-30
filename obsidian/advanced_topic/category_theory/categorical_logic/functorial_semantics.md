# 函子语义

## Lawvere 理论

<!-- lawvere_theory_def -->
> [!Definition]
> **Lawvere 理论 Lawvere Theory**：一个**Lawvere 理论**（也称**代数理论**，algebraic theory）是一对 $(\mathcal{T}, I)$，其中 $\mathcal{T}$ 是具有有限积的小范畴，$I: \mathcal{L}^{\mathrm{op}} \to \mathcal{T}$ 是保持有限积的函子（其中 $\mathcal{L}$ 是自然数范畴 $\{0, 1, 2, \ldots\}$ 以有限积结构），使得 $\mathcal{T}$ 的每个对象均同构于某个 $n$（$n$ 个"生成元"的积）。
>
> 更常见的等价描述：**Lawvere 理论** $\mathcal{T}$ 是具有以下结构的范畴：
> - 对象为自然数 $0, 1, 2, \ldots$；
> - $n$ 作为 $1$ 的 $n$ 次积：$n = \underbrace{1 \times \cdots \times 1}_{n}$；
> - 态射 $f: n \to 1$ 称为 **$n$ 元运算**（$n$-ary operation）；
> - 态射 $f: n \to m$ 是 $m$ 个 $n$ 元运算的有序组（对应 $m$ 元组运算）；
> - 复合对应运算的复合（代入）。

> **注**：Lawvere 理论将代数结构（幺半群、群、环等）的公理体系化为范畴论对象，不依赖集合论中的术语（变量、等式等）。

## 模型

<!-- lawvere_theory_model_def -->
> [!Definition]
> **Lawvere 理论的模型 Model of a Lawvere Theory**：设 $\mathcal{T}$ 是 Lawvere 理论，$\mathcal{C}$ 是具有有限积的范畴。$\mathcal{T}$ 在 $\mathcal{C}$ 中的**模型**（model），也称 **$\mathcal{T}$-代数**，是**保有限积函子**（finite-product-preserving functor）：
> $$
> M: \mathcal{T} \to \mathcal{C}.
> $$
> 所有模型（以自然变换为态射）构成范畴 $\mathrm{Mod}(\mathcal{T}, \mathcal{C})$，特别地 $\mathrm{Mod}(\mathcal{T}) = \mathrm{Mod}(\mathcal{T}, \mathbf{Set})$。

> **注**：模型 $M: \mathcal{T} \to \mathbf{Set}$ 将 $\mathcal{T}$ 中的运算（态射 $n \to 1$）映为集合上的实际运算（$M(1)^n \to M(1)$），公理（等式 $f = g$，$f, g: n \to 1$）映为集合运算间的等式。

## 代数结构作为 Lawvere 理论

<!-- algebraic_structures_as_lawvere_theories -->
> [!Example]+
> **代数结构作为 Lawvere 理论**：
> 1. **幺半群**：$\mathcal{T}_{\mathrm{Mon}}$ 有二元运算 $\mu: 2 \to 1$（乘法）和零元运算 $\eta: 0 \to 1$（单位元），满足结合律和单位律（作为态射等式）。模型 $M: \mathcal{T}_{\mathrm{Mon}} \to \mathbf{Set}$ 等同于幺半群。
> 2. **群**：$\mathcal{T}_{\mathrm{Grp}}$ 在幺半群理论上添加一元运算 $\iota: 1 \to 1$（逆元）及逆元公理。模型等同于群；$\mathrm{Mod}(\mathcal{T}_{\mathrm{Grp}}) \simeq \mathbf{Grp}$。
> 3. **交换环**：$\mathcal{T}_{\mathrm{CRing}}$ 包含加法与乘法二元运算及其公理。模型等同于交换环。
> 4. **格**：格论也有对应的 Lawvere 理论（带两个满足格公理的二元运算）。

## 理论范畴与模型范畴

<!-- theory_model_adjunction -->
> [!Theorem]
> **理论范畴与模型范畴的伴随**：Lawvere 理论之间的**态射**（theory morphism）$\varphi: \mathcal{T} \to \mathcal{S}$ 是保有限积函子（保持公理的翻译），诱导**模型的限制函子**（restriction of models）：
> $$
> \varphi^*: \mathrm{Mod}(\mathcal{S}) \to \mathrm{Mod}(\mathcal{T}), \qquad M \mapsto M \circ \varphi.
> $$
> 在适当条件下，$\varphi^*$ 有左伴随（自由构造）和右伴随（余自由构造）。
>
> **证明思路**：左伴随的存在由伴随函子定理（GAFT）保证（当 $\mathrm{Mod}(\mathcal{T})$ 有足够余极限时）；具体构造为"从 $\mathcal{T}$-代数自由生成 $\mathcal{S}$-代数"。

<!-- mod_as_functor_category -->
> [!Theorem]
> **模型范畴的性质**：设 $\mathcal{T}$ 是 Lawvere 理论。则：
> 1. $\mathrm{Mod}(\mathcal{T}) = \mathrm{Mod}(\mathcal{T}, \mathbf{Set})$ 是**代数范畴**（algebraic category）：它有遗忘函子 $U: \mathrm{Mod}(\mathcal{T}) \to \mathbf{Set}$（$M \mapsto M(1)$），$U$ 有左伴随（自由 $\mathcal{T}$-代数函子）；
> 2. 遗忘函子 $U$ 是**单子的**（monadic，见 [[monadicity|单子性]]）：$\mathrm{Mod}(\mathcal{T}) \simeq \mathbf{Set}^T$（$T$ 为对应单子）；
> 3. $\mathrm{Mod}(\mathcal{T})$ 有所有小极限（遗忘函子保持并反射极限）和所有有向余极限（滤过余极限）。
>
> **证明思路**：(1) 自由代数 $F(S)$ 以 $S$ 为生成元，由 GAFT 构造；(2) 由 Beck 单子性定理，遗忘函子满足条件；(3) 极限由逐元素计算，有向余极限由具体构造给出。
