# Heyting 代数与直觉主义逻辑

## Heyting 代数

<!-- heyting_algebra_def -->
> [!Definition]
> **Heyting 代数 Heyting Algebra**：一个**Heyting 代数**（Heyting algebra）是格 $(H, \leq, \wedge, \vee, \top, \bot)$（有界格），进一步配有**伪补运算**（pseudocomplement）$\Rightarrow: H \times H \to H$，满足：
> $$
> a \wedge b \leq c \iff a \leq b \Rightarrow c, \qquad \forall a, b, c \in H.
> $$
> 即 $b \Rightarrow c = \bigvee\{a \in H \mid a \wedge b \leq c\}$（在有完备格时）。
>
> **否定**（negation）定义为 $\neg a = a \Rightarrow \bot$。

> **注**：Heyting 代数是**直觉主义逻辑**（intuitionistic logic）的代数语义：格中元素对应命题，$\wedge, \vee, \Rightarrow, \neg$ 对应合取、析取、蕴含、否定，$\top$ 与 $\bot$ 对应真与假。Heyting 代数与 **Boolean 代数**的区别在于 Boolean 代数额外满足排中律 $a \vee \neg a = \top$（等价于补元律 $\neg\neg a = a$），而一般 Heyting 代数中 $\neg\neg a \geq a$ 但 $\neg\neg a = a$ 不一定成立。

<!-- boolean_algebra_as_heyting -->
> [!Theorem]
> **Boolean 代数是特殊的 Heyting 代数**：每个 Boolean 代数都是 Heyting 代数（令 $a \Rightarrow b = \neg a \vee b$），且排中律 $a \vee \neg a = \top$ 在 Heyting 代数中等价于 $\neg\neg a = a$（双否消去）。
>
> **证明思路**：若 $a \Rightarrow b = \neg a \vee b$，则 $a \wedge b \leq c \iff b \leq \neg a \vee c = a \Rightarrow c$，满足 Heyting 条件；反之，在 Heyting 代数中 $\neg\neg a = a$ 蕴含 $a \vee \neg a = \neg\neg a \vee \neg a = \neg(\neg a \wedge \neg\neg a) \cdot\ldots = \top$（利用双否消去与 De Morgan 律）。

## 子对象格的 Heyting 结构

<!-- subobject_lattice_heyting -->
> [!Theorem]
> **子对象格是 Heyting 代数**：设 $\mathcal{E}$ 是初等拓扑斯，$A \in \mathrm{Ob}(\mathcal{E})$。则子对象格 $\mathrm{Sub}(A)$ 是**完备 Heyting 代数**（complete Heyting algebra），其中：
> - **交**（$\wedge$）：$[m] \wedge [m'] = [m \times_A m']$（拉回）；
> - **并**（$\vee$）：$[m] \vee [m'] = [\mathrm{im}(m + m': S \sqcup S' \to A)]$（余积后取像）；
> - **蕴含**（$\Rightarrow$）：$[m] \Rightarrow [m'] = \forall_\pi(m^*[m'])$，其中 $\pi: A \times A \to A$ 为投影，$m^*[m']$ 为拉回（通过幂对象或直接由 $\forall$ 伴随构造）；
> - **否定**：$\neg[m] = [m] \Rightarrow [\varnothing] = \forall_\pi(m^*[\varnothing])$（$m$ 的"外补"）。
>
> **证明思路**：拉回给出交，像给出并；蕴含与 $\forall$ 伴随的存在性来自拓扑斯的笛卡尔闭结构与子对象分类子；完备性来自幂对象 $\mathcal{P}(A) = \Omega^A$ 对应"所有子对象"。

## 拓扑斯的内蕴逻辑为直觉主义逻辑

<!-- topos_intuitionistic_logic -->
> [!Theorem]
> **拓扑斯内蕴逻辑为直觉主义逻辑**：初等拓扑斯 $\mathcal{E}$ 的内部逻辑（Mitchell–Bénabou 语言，见 [[internal_language|内部语言]]）是**直觉主义高阶逻辑**（intuitionistic higher-order logic）：排中律 $\varphi \vee \neg\varphi$ 在一般拓扑斯中不成立，双否消去 $\neg\neg\varphi \Rightarrow \varphi$ 也不成立。
>
> 等价地：$\Omega$ 一般是 Heyting 代数而非 Boolean 代数；若 $\Omega$ 是 Boolean 代数（即 $\neg\neg = \mathrm{id}_\Omega$），则称拓扑斯为 **Boolean 拓扑斯**。
>
> **证明思路**：在预层拓扑斯 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$ 中，$\Omega(C) = \{C \text{ 上的筛}\}$，否定 $\neg S = \{f: D \to C \mid S|_D = \varnothing\}$（空筛）；$\neg\neg S \supseteq S$ 但一般 $\neg\neg S \neq S$，故排中律不成立。

<!-- boolean_topos -->
> [!Example]+
> **Boolean 拓扑斯的例子**：
> 1. **$\mathbf{Set}$**：$\Omega = \{\top, \bot\}$ 是 Boolean 代数，故 $\mathbf{Set}$ 是 Boolean 拓扑斯，排中律在 $\mathbf{Set}$ 中成立；
> 2. **$G\text{-}\mathbf{Set}$（$G$ 为群）**：当且仅当 $G$ 的每个轨道均为单点时（即 $G$ 平凡地作用）退化为 $\mathbf{Set}$，一般不是 Boolean 的；
> 3. **层拓扑斯 $\mathrm{Sh}(X)$**：当 $X$ 是离散空间时为 Boolean；一般不是 Boolean 的（对应直觉主义逻辑）。

## 直觉主义逻辑的意义

<!-- intuitionistic_logic_meaning -->
> **注**：拓扑斯内蕴逻辑为直觉主义逻辑的数学意义：
> - 在拓扑斯中"内蕴地"工作，排中律不能假设；这迫使所有证明必须是构造性的；
> - 不同的拓扑斯对应不同的"数学宇宙"，可以满足或不满足不同的逻辑公理（如连续统假设、选择公理等）；
> - 相关联的逻辑包括数理逻辑中的直觉主义逻辑与构造主义数学（见 [[curry_howard_lambek_correspondence|Curry–Howard–Lambek 对应]]）。
