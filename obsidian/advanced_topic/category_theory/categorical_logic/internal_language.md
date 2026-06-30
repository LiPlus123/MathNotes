# 内部语言

## 范畴的内部语言

<!-- internal_language_motivation -->
> **注**：在逻辑与类型论中，我们通常在集合（或某固定宇宙）上讨论数学。**内部语言**（internal language）的思想是：对任意（满足适当条件的）范畴 $\mathcal{E}$，可以构造一套"语言"——一个类型论或逻辑系统——使得在该语言中进行推导等价于在 $\mathcal{E}$ 中进行范畴论操作。这允许我们像在集合范畴中"逐元素"推理那样，在任意拓扑斯或笛卡尔闭范畴中"内蕴地"做数学。

<!-- internal_language_def -->
> [!Definition]
> **范畴的内部语言 Internal Language of a Category**：设 $\mathcal{E}$ 是具有有限极限的范畴（或拓扑斯）。$\mathcal{E}$ 的**内部语言**（internal language）是一个类型论 $\mathcal{L}(\mathcal{E})$，使得：
> - **类型**对应 $\mathcal{E}$ 的**对象**；
> - **上下文** $(x_1: A_1, \ldots, x_n: A_n)$ 对应积 $A_1 \times \cdots \times A_n$；
> - **项** $\Gamma \vdash t: A$（在上下文 $\Gamma$ 下具有类型 $A$ 的项 $t$）对应**态射** $[\Gamma] \to A$；
> - **类型构造**（积类型、指数类型等）对应 $\mathcal{E}$ 中的**极限与伴随构造**；
> - **逻辑连接词**（若 $\mathcal{E}$ 是拓扑斯）对应**子对象运算**（交、并、蕴含等 Heyting 代数运算）。

## Mitchell–Bénabou 语言

<!-- mitchell_benabou_language_def -->
> [!Definition]
> **Mitchell–Bénabou 语言 Mitchell–Bénabou Language**：设 $\mathcal{E}$ 是**初等拓扑斯**（elementary topos，见 [[elementary_topos|初等拓扑斯]]）。**Mitchell–Bénabou 语言**（Mitchell–Bénabou language）$\mathcal{L}(\mathcal{E})$ 是 $\mathcal{E}$ 的内部语言，包含：
> - **类型**：$\mathcal{E}$ 的每个对象 $A$ 是类型；
> - **类型构造**：积类型 $A \times B$、函数类型 $A \to B$（由 CCC 结构）、幂对象类型 $\mathcal{P}(A) = \Omega^A$（由子对象分类子 $\Omega$）；
> - **项**：变量、函数应用、$\lambda$-抽象、配对与投影；
> - **命题**（propositions）：类型 $\Omega$ 的项（即**真值**），对应子对象；
> - **逻辑连接词**：$\wedge, \vee, \Rightarrow, \neg, \top, \bot$，由 $\Omega$ 上的 Heyting 代数结构给出；
> - **量词**：$\exists x: A.\, \varphi(x)$ 与 $\forall x: A.\, \varphi(x)$，由沿投影态射的量词作为伴随（见 [[quantifiers_as_adjoints|量词作为伴随]]）给出。

> **注**：Mitchell–Bénabou 语言的逻辑是**直觉主义高阶逻辑**（intuitionistic higher-order logic），因拓扑斯的内蕴逻辑为直觉主义逻辑（见 [[heyting_algebra_and_intuitionistic_logic|Heyting 代数与直觉主义逻辑]]）。

## Kripke–Joyal 语义

<!-- kripke_joyal_semantics_def -->
> [!Definition]
> **Kripke–Joyal 语义 Kripke–Joyal Semantics**：设 $\mathcal{E}$ 是拓扑斯，$\varphi$ 是 Mitchell–Bénabou 语言中关于 $A$ 的公式（即 $A$ 的"子对象"）。**Kripke–Joyal 语义**（Kripke–Joyal semantics）定义满足关系：
> $$
> U \Vdash \varphi[f],
> $$
> 读作"在广义元素 $f: U \to A$ 处，$U$（覆盖）满足 $\varphi$"，按公式的结构递归定义：
> - $U \Vdash \top$：恒成立；
> - $U \Vdash \varphi \wedge \psi$：$U \Vdash \varphi$ 且 $U \Vdash \psi$；
> - $U \Vdash \varphi \Rightarrow \psi$：对所有 $g: V \to U$，若 $V \Vdash \varphi[f \circ g]$ 则 $V \Vdash \psi[f \circ g]$；
> - $U \Vdash \exists x: A.\, \varphi(x)$：存在满态射 $e: V \twoheadrightarrow U$ 和 $a: V \to A$ 使得 $V \Vdash \varphi[a]$；
> - $U \Vdash \forall x: A.\, \varphi(x)$：对所有 $g: V \to U$ 和所有 $a: V \to A$，$V \Vdash \varphi[a]$。
>
> 在 $\mathbf{Set}$（或 Grothendieck 拓扑斯的层范畴）中，此语义退化为通常集合论语义（或层的截面语义）。

## 内蕴地做数学

<!-- doing_math_internally -->
> [!Theorem]
> **内蕴推理的合法性**：设 $\mathcal{E}$ 是拓扑斯，$\varphi$ 是 Mitchell–Bénabou 语言中的命题（类型 $\Omega$ 的项）。若 $\varphi$ 在直觉主义高阶逻辑中可证，则 $\varphi$ 在 $\mathcal{E}$ 中成立（即对应的子对象为全子对象 $\top: 1 \to \Omega$）。
>
> **证明思路**：内部语言与范畴结构之间的对应（态射、积、指数等）保证了直觉主义逻辑规则在拓扑斯中的有效性；具体由语义解释的健全性（soundness）定理给出。

<!-- internal_language_examples -->
> [!Example]+
> **内部语言的应用**：
> 1. **集合范畴 $\mathbf{Set}$ 的内部语言**：即通常的集合论语言（以经典逻辑，因 $\mathbf{Set}$ 是 Boolean 拓扑斯，排中律成立）；
> 2. **预层拓扑斯 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 的内部语言**：命题是"开放谓词"（对 $\mathcal{C}$ 的态射稳定的集合族），逻辑为直觉主义，排中律一般不成立；
> 3. **层拓扑斯（Grothendieck 拓扑斯）的内部语言**：对应于 Kripke–Joyal 语义，$\exists$ 对应局部存在（在某覆盖上存在），$\forall$ 对应覆盖上的全称；
> 4. **代数几何中的应用**：Grothendieck 用内部语言思想描述概型上的"一般点"，内蕴地证明关于层或函子的命题，而无需每次都回归到元素层面的构造。

> **注**：内部语言思想是范畴论与逻辑深度融合的体现：不同的拓扑斯对应不同的"数学世界"（具有不同的逻辑公理，如排中律是否成立），数学家可以选择合适的"世界"内蕴地工作，结果在该世界中自动成立。
