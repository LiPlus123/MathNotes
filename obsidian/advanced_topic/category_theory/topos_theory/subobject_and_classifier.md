# 子对象与子对象分类子

## 子对象

<!-- subobject_def -->
> [!Definition]
> **子对象 Subobject**：设 $\mathcal{C}$ 是范畴，$A \in \mathrm{Ob}(\mathcal{C})$。$A$ 的一个**子对象**（subobject）是单态射 $m: S \hookrightarrow A$ 的等价类，其中两个单态射 $m: S \hookrightarrow A$ 与 $m': S' \hookrightarrow A$ 等价，若存在同构 $\varphi: S \xrightarrow{\sim} S'$ 使得 $m' \circ \varphi = m$。
>
> $A$ 的所有子对象构成**子对象格**（subobject poset）$\mathrm{Sub}(A)$，偏序由包含关系给出：$[m] \leq [m']$ 当且仅当存在（唯一）$i: S \to S'$ 使得 $m' \circ i = m$。

## 子对象分类子

<!-- subobject_classifier_def -->
> [!Definition]
> **子对象分类子 Subobject Classifier**：设 $\mathcal{C}$ 是有终对象 $1$ 的范畴。**子对象分类子**（subobject classifier）是对象 $\Omega$ 连同**真值态射**（truth morphism）$\mathrm{true}: 1 \to \Omega$，满足以下**泛性质**：
>
> 对任意对象 $A$ 及 $A$ 的任意子对象 $m: S \hookrightarrow A$，存在唯一态射 $\chi_m: A \to \Omega$（称为 $m$ 的**特征态射**，characteristic morphism 或 classifying morphism），使得以下是拉回方块：
> $$
> \begin{align*}
> S &\xrightarrow{!} 1 \\
> \downarrow{m} &\quad \downarrow{\mathrm{true}} \\
> A &\xrightarrow{\chi_m} \Omega
> \end{align*}
> $$
> 即 $S \cong A \times_\Omega 1$（$S$ 是 $\mathrm{true}$ 沿 $\chi_m$ 的拉回）。

> **注**：子对象分类子将子对象（单态射等价类）与态射（到 $\Omega$ 的箭头）对应：
> $$
> \mathrm{Sub}(A) \cong \mathrm{Hom}(A, \Omega),
> $$
> 自然于 $A$。这是集合论中"特征函数"的范畴化：$\chi_m(a) = \top$ 当且仅当 $a \in S$。

## $\mathbf{Set}$ 中的子对象分类子

<!-- subobject_classifier_in_set -->
> [!Example]+
> **$\mathbf{Set}$ 中的子对象分类子**：在集合范畴 $\mathbf{Set}$ 中：
> - $\Omega = \{\top, \bot\} = \{0, 1\}$（真值集合，两个元素）；
> - $\mathrm{true}: 1 \to \Omega$ 将唯一元素映至 $\top$；
> - 子集 $S \subseteq A$ 的特征态射 $\chi_S: A \to \{0, 1\}$ 定义为 $\chi_S(a) = \top$ 当且仅当 $a \in S$（特征函数）；
> - 拉回验证：$S = \chi_S^{-1}(\{\top\}) = A \times_\Omega 1$。
>
> 故 $\mathbf{Set}$ 有子对象分类子 $\Omega = \{\top, \bot\}$。

## $\Omega$ 上的逻辑结构

<!-- omega_logic_structure -->
> [!Theorem]
> **$\Omega$ 上的 Heyting 代数结构**：在初等拓扑斯（见 [[elementary_topos|初等拓扑斯]]）中，$\Omega$ 上存在内部 Heyting 代数结构：
> - $\mathrm{true}: 1 \to \Omega$（真）；
> - $\mathrm{false}: 1 \to \Omega$（假，$\mathrm{false} = \chi_{\varnothing}$，即空子对象的特征态射）；
> - $\wedge: \Omega \times \Omega \to \Omega$（合取）；
> - $\vee: \Omega \times \Omega \to \Omega$（析取）；
> - $\Rightarrow: \Omega \times \Omega \to \Omega$（蕴含）；
> - $\neg: \Omega \to \Omega$（否定，$\neg = (\Rightarrow) \circ \langle \mathrm{id}, \mathrm{false} \rangle$）。
>
> 所有这些运算均由子对象格的 Heyting 代数结构唯一确定（见 [[heyting_algebra_and_intuitionistic_logic|Heyting 代数与直觉主义逻辑]]）。
>
> **证明思路**：$\Omega \times \Omega$ 到 $\Omega$ 的各运算由对应子对象的布尔/Heyting 运算（交、并、伪补）的特征态射给出。
