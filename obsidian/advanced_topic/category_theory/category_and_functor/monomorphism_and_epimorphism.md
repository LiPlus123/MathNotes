# 单态射与满态射

## 单态射

<!-- monomorphism_def -->
> [!Definition]
> **单态射 Monomorphism**：设 $\mathcal{C}$ 为范畴，$f: A \to B$ 为态射。若对任意对象 $X$ 与任意态射 $g_1, g_2: X \to A$，
> $$
> f \circ g_1 = f \circ g_2 \implies g_1 = g_2,
> $$
> 则称 $f$ 为**单态射**（或称 $f$ **左可消**），记作 $f: A \hookrightarrow B$。

## 满态射

<!-- epimorphism_def -->
> [!Definition]
> **满态射 Epimorphism**：设 $\mathcal{C}$ 为范畴，$f: A \to B$ 为态射。若对任意对象 $Y$ 与任意态射 $h_1, h_2: B \to Y$，
> $$
> h_1 \circ f = h_2 \circ f \implies h_1 = h_2,
> $$
> 则称 $f$ 为**满态射**（或称 $f$ **右可消**），记作 $f: A \twoheadrightarrow B$。

> **注**：单态射与满态射互为对偶概念：$f$ 为 $\mathcal{C}$ 中的单态射当且仅当 $f^{\mathrm{op}}$ 为 $\mathcal{C}^{\mathrm{op}}$ 中的满态射。

## 双态射

<!-- bimorphism_def -->
> [!Definition]
> **双态射 Bimorphism**：若态射 $f: A \to B$ 既是单态射又是满态射，则称 $f$ 为**双态射**。

> **注**：一般范畴中，**双态射未必是同构**；例如在交换环范畴 $\mathbf{CRing}$ 中，包含 $\mathbb{Z} \hookrightarrow \mathbb{Q}$ 既是单态射也是满态射（在 $\mathbf{CRing}$ 意义下），但不是同构。

## 基本性质

<!-- iso_is_mono_and_epi -->
> [!Theorem]
> **同构是双态射 Isomorphism is Bimorphism**：每个同构 $f: A \to B$ 既是单态射又是满态射。
>
> **证明思路**：设 $f$ 为同构、其逆为 $f^{-1}$。若 $f \circ g_1 = f \circ g_2$，左乘 $f^{-1}$ 得 $g_1 = g_2$，故 $f$ 单。对满态射的论证对偶。

<!-- monomorphism_composition -->
> [!Theorem]
> **单态射在复合下封闭 Composition of Monomorphisms**：单态射的复合仍为单态射；恒等态射 $\mathrm{id}_A$ 为单态射。
>
> **证明思路**：设 $f: A \to B$，$g: B \to C$ 均单。若 $(g \circ f) \circ h_1 = (g \circ f) \circ h_2$，由结合律 $g \circ (f \circ h_1) = g \circ (f \circ h_2)$；$g$ 单则 $f \circ h_1 = f \circ h_2$；$f$ 单则 $h_1 = h_2$。

<!-- epimorphism_composition -->
> [!Corollary]
> **满态射在复合下封闭 Composition of Epimorphisms**：满态射的复合仍为满态射；恒等态射 $\mathrm{id}_A$ 为满态射。
>
> **证明思路**：由 [[opposite_category|对偶原理]] 与上述「单态射在复合下封闭」立得。

<!-- mono_cancel_from_composition -->
> [!Theorem]
> **复合的单态射 Mono from Composition**：若 $g \circ f$ 是单态射，则 $f$ 是单态射。
>
> **证明思路**：若 $f \circ h_1 = f \circ h_2$，则 $g \circ f \circ h_1 = g \circ f \circ h_2$，由 $g \circ f$ 单得 $h_1 = h_2$。

<!-- epi_cancel_from_composition -->
> [!Corollary]
> **复合的满态射 Epi from Composition**：若 $g \circ f$ 是满态射，则 $g$ 是满态射。
>
> **证明思路**：由 [[opposite_category|对偶原理]] 与上述「复合的单态射」立得。

## 例子

<!-- mono_in_set -->
> [!Example]+
> **$\mathbf{Set}$ 中的单/满态射**：在集合范畴中，映射 $f: A \to B$ 是单态射当且仅当 $f$ 是单射；$f$ 是满态射当且仅当 $f$ 是满射。
>
> **证明思路**：单射 $\Rightarrow$ 单态射是直接的；反过来取 $X = \{*\}$，由 $f(a_1) = f(a_2) \Rightarrow a_1 = a_2$ 验证单射性。对满态射，取 $Y = \{0, 1\}$ 及 $h_1$ 恒为 $0$，$h_2$ 在 $f(A)$ 上为 $0$、其余为 $1$，即可验证 $f$ 满。

<!-- mono_epi_in_grp -->
> [!Example]+
> **$\mathbf{Grp}$ 中的单/满态射**：在群范畴中，群同态 $\varphi: G \to H$ 是单态射当且仅当 $\varphi$ 是单射（即 $\ker\varphi = \{e_G\}$）；$\varphi$ 是满态射当且仅当 $\varphi$ 是满射。

<!-- mono_epi_in_top -->
> [!Example]+
> **$\mathbf{Top}$ 中的单/满态射**：在拓扑空间范畴中，连续映射 $f: X \to Y$ 是单态射当且仅当其作为集合映射是单射；$f$ 是满态射当且仅当 $f$ 是满射。注意，存在像稠密但不满的连续映射，在 $\mathbf{Haus}$ 中是满态射但不是满射，这是双态射非同构的又一例。

<!-- mono_epi_in_ring -->
> [!Example]+
> **$\mathbf{CRing}$ 中 $\mathbb{Z} \hookrightarrow \mathbb{Q}$ 既单又满但不同构**：包含同态 $\iota: \mathbb{Z} \hookrightarrow \mathbb{Q}$ 在交换环范畴中既是单态射又是满态射：若两个环同态 $\varphi, \psi: \mathbb{Q} \to R$ 在 $\mathbb{Z}$ 上一致，由 $\mathbb{Q}$ 中任意元素 $a/b$（$b \neq 0$）可写成 $a \cdot b^{-1}$，及 $\varphi(b)\varphi(b^{-1}) = 1 = \psi(b)\psi(b^{-1})$，可得 $\varphi(a/b) = \psi(a/b)$。但 $\iota$ 显然不是同构。

<!-- mono_epi_in_preorder -->
> [!Example]+
> **前序集范畴中**：在前序集诱导的范畴 $\mathcal{P}$ 中，**每个态射都既是单态射又是满态射**（因为任意两个对象之间至多有一个态射，左右可消条件自动成立）。但 $a \leq b$ 不必蕴含 $a \cong b$，故双态射通常非同构。
