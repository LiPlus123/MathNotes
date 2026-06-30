# 初等拓扑斯

## 初等拓扑斯的定义

<!-- elementary_topos_def -->
> [!Definition]
> **初等拓扑斯 Elementary Topos**：一个**初等拓扑斯**（elementary topos），简称**拓扑斯**（topos），是满足以下三条件的范畴 $\mathcal{E}$：
> 1. $\mathcal{E}$ 有**有限极限**（finite limits，包括终对象与所有有限积和等化子）；
> 2. $\mathcal{E}$ 是**笛卡尔闭**（cartesian closed）的：对每个 $B$，函子 $- \times B$ 有右伴随 $B \Rightarrow -$；
> 3. $\mathcal{E}$ 有**子对象分类子** $(\Omega, \mathrm{true}: 1 \to \Omega)$。

> **注**：三个公理精简而强大：从有限极限、笛卡尔闭性与子对象分类子出发，可推导出拓扑斯具有所有有限余极限、幂对象 $\mathcal{P}(A) = \Omega^A$（对应子对象的"内部幂集"）、以及丰富的逻辑结构（见 [[heyting_algebra_and_intuitionistic_logic|Heyting 代数与直觉主义逻辑]]）。

## 有限余极限的存在性

<!-- topos_has_finite_colimits -->
> [!Theorem]
> **拓扑斯有有限余极限**：任意初等拓扑斯 $\mathcal{E}$ 都有所有**有限余极限**（finite colimits），包括始对象 $\varnothing$ 与所有有限余积和余等化子。
>
> **证明思路**：利用子对象分类子与笛卡尔闭结构，可以构造幂对象 $\mathcal{P}(A) = \Omega^A$；进一步利用代数技术（Paré 定理）：$\mathcal{E}$ 中 $\mathcal{P}^{\mathrm{op}}$ 是可访问的，进而 $\mathcal{E}$ 有有限余极限。

## 幂对象

<!-- power_object_def -->
> [!Definition]
> **幂对象 Power Object**：设 $\mathcal{E}$ 是初等拓扑斯，$A \in \mathrm{Ob}(\mathcal{E})$。$A$ 的**幂对象**（power object）定义为指数对象：
> $$
> \mathcal{P}(A) = \Omega^A,
> $$
> 配以**成员关系态射**（membership morphism）$\in_A: A \times \mathcal{P}(A) \to \Omega$（由 $\mathrm{id}_{\mathcal{P}(A)}: \Omega^A \to \Omega^A$ 在积-指数伴随下对应）。
>
> 子对象与幂对象的关联：$\mathrm{Sub}(A) \cong \mathrm{Hom}(1, \mathcal{P}(A))$（$\mathcal{P}(A)$ 的整体截面对应 $A$ 的子对象）。

## 例子

<!-- elementary_topos_examples -->
> [!Example]+
> **初等拓扑斯的例子**：
> 1. **集合范畴 $\mathbf{Set}$**：有限极限（集合的积与等化子）、笛卡尔闭（指数对象为函数集）、子对象分类子 $\Omega = \{\top, \bot\}$。这是最基本的拓扑斯，其内蕴逻辑为经典逻辑（排中律成立，因 $\Omega$ 为 Boolean 代数）。
> 2. **$G$-集范畴 $G\text{-}\mathbf{Set}$**（$G$ 为群）：对象为带 $G$-作用的集合，态射为 $G$-等变映射。有限极限逐集合计算，指数对象 $B^A$ 为所有 $G$-等变映射 $A \to B$ 的集合，子对象分类子 $\Omega = \mathcal{P}(G)/G$（轨道的幂集）。
> 3. **预层拓扑斯 $[\mathcal{C}^{\mathrm{op}}, \mathbf{Set}]$**（$\mathcal{C}$ 为小范畴）：对象为预层，态射为自然变换。有限极限逐对象点态计算，指数对象由 $Q^P(C) = \mathrm{Nat}(h_C \times P, Q)$ 给出，子对象分类子 $\Omega$ 为"筛函子"（sieve functor）：$\Omega(C) = \{\text{$\mathcal{C}$ 中 $C$ 上的筛（sieves）}\}$（见 [[grothendieck_topology_and_site|Grothendieck 拓扑与景]]）。
> 4. **Grothendieck 拓扑斯 $\mathrm{Sh}(\mathcal{C}, J)$**：景 $(\mathcal{C}, J)$ 上的层范畴，是初等拓扑斯（见 [[grothendieck_topology_and_site|Grothendieck 拓扑与景]]）。
> 5. **有限集范畴 $\mathbf{FinSet}$**：$\mathbf{Set}$ 的满子拓扑斯。

<!-- topos_non_examples -->
> [!Example]+
> **非拓扑斯的例子**：$\mathbf{Ab}$（阿贝尔群范畴）不是拓扑斯（Hom 集不是集合意义下的"集合-形式"子对象分类子不存在）；$\mathbf{Top}$（拓扑空间范畴）不是拓扑斯（不是笛卡尔闭的）。
