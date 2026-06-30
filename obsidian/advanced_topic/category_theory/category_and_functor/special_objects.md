# 特殊对象

## 初对象与终对象

<!-- initial_object_def -->
> [!Definition]
> **初对象 Initial Object**：范畴 $\mathcal{C}$ 中的对象 $I$ 称为**初对象**，若对每个对象 $A \in \mathrm{Ob}(\mathcal{C})$，从 $I$ 到 $A$ 恰有一个态射，即 $|\mathrm{Hom}_{\mathcal{C}}(I, A)| = 1$。

<!-- terminal_object_def -->
> [!Definition]
> **终对象 Terminal Object**：范畴 $\mathcal{C}$ 中的对象 $T$ 称为**终对象**（或**末对象**），若对每个对象 $A \in \mathrm{Ob}(\mathcal{C})$，从 $A$ 到 $T$ 恰有一个态射，即 $|\mathrm{Hom}_{\mathcal{C}}(A, T)| = 1$。

> **注**：初对象与终对象互为对偶：$T$ 是 $\mathcal{C}$ 中终对象当且仅当 $T$ 是 $\mathcal{C}^{\mathrm{op}}$ 中初对象。

## 零对象

<!-- zero_object_def -->
> [!Definition]
> **零对象 Zero Object**：若范畴 $\mathcal{C}$ 中的对象 $0$ 同时是初对象与终对象，则称 $0$ 为**零对象**。具有零对象的范畴称为**带零范畴**。

<!-- zero_morphism_def -->
> [!Definition]
> **零态射 Zero Morphism**：设 $\mathcal{C}$ 带有零对象 $0$。对任意对象 $A, B \in \mathrm{Ob}(\mathcal{C})$，定义从 $A$ 到 $B$ 的**零态射**为唯一通过 $0$ 的复合
> $$
> 0_{A, B}: A \to 0 \to B,
> $$
> 其中两段分别为唯一存在的态射。

## 唯一性

<!-- initial_object_unique -->
> [!Theorem]
> **初对象在同构意义下唯一 Uniqueness of Initial Object**：若 $I, I'$ 均为范畴 $\mathcal{C}$ 的初对象，则存在唯一的同构 $I \xrightarrow{\sim} I'$。
>
> **证明思路**：由初对象定义，存在唯一态射 $f: I \to I'$ 与唯一态射 $g: I' \to I$。复合 $g \circ f: I \to I$，而 $\mathrm{id}_I: I \to I$ 亦是从 $I$ 到 $I$ 的态射；由 $I$ 初的唯一性，$g \circ f = \mathrm{id}_I$。同理 $f \circ g = \mathrm{id}_{I'}$，故 $f$ 为同构。

<!-- terminal_object_unique -->
> [!Corollary]
> **终对象在同构意义下唯一 Uniqueness of Terminal Object**：若 $T, T'$ 均为范畴 $\mathcal{C}$ 的终对象，则存在唯一的同构 $T \xrightarrow{\sim} T'$。
>
> **证明思路**：由 [[opposite_category|对偶原理]] 与初对象在同构意义下的唯一性立得。

<!-- zero_object_unique -->
> [!Corollary]
> **零对象在同构意义下唯一 Uniqueness of Zero Object**：若范畴 $\mathcal{C}$ 存在零对象，则零对象在唯一同构意义下唯一。
>
> **证明思路**：由零对象既初又终，由初对象（或终对象）的唯一性立得。

## 例子

<!-- initial_terminal_example_set -->
> [!Example]+
> **$\mathbf{Set}$ 中的初对象与终对象**：在集合范畴中，初对象是空集 $\varnothing$（从 $\varnothing$ 到任意集合有唯一映射，即空映射）；终对象是任意单元素集 $\{\ast\}$（从任意集合到 $\{\ast\}$ 有唯一常映射）。$\mathbf{Set}$ 不带零对象。

<!-- initial_terminal_example_grp -->
> [!Example]+
> **$\mathbf{Grp}$ 中的零对象**：在群范畴中，平凡群 $\{e\}$ 既是初对象（从 $\{e\}$ 到任意群有唯一同态 $e \mapsto e_G$），又是终对象（从任意群到 $\{e\}$ 有唯一同态 $g \mapsto e$），故 $\{e\}$ 是 $\mathbf{Grp}$ 的零对象。同理，$\mathbf{Ab}$、$\mathbf{Vect}_F$、$R\text{-}\mathbf{Mod}$ 均以零空间/零模为零对象。

<!-- initial_terminal_example_ring -->
> [!Example]+
> **$\mathbf{Ring}$ 中的初对象与终对象**：在（带单位的）环范畴中，整数环 $\mathbb{Z}$ 是初对象（从 $\mathbb{Z}$ 到任意环有唯一同态 $n \mapsto n \cdot 1_R$）；零环 $\{0\}$（其中 $0 = 1$）是终对象。两者不同构，故 $\mathbf{Ring}$ 不带零对象。

<!-- initial_terminal_example_top -->
> [!Example]+
> **$\mathbf{Top}$ 中的初对象与终对象**：空拓扑空间 $\varnothing$ 是初对象；单点拓扑空间 $\{\ast\}$ 是终对象。$\mathbf{Top}$ 不带零对象。

<!-- initial_terminal_example_preorder -->
> [!Example]+
> **前序集范畴中**：在前序集 $(P, \leq)$ 诱导的范畴中，**最小元**（若存在）是初对象，**最大元**（若存在）是终对象。$(P, \leq)$ 中同时存在最小元和最大元（且二者相等）相当于 $P$ 单元素时方有零对象。
