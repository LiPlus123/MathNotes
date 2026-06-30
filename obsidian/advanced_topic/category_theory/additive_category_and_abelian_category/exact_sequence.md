# 正合列

## 正合性

<!-- exactness_def -->
> [!Definition]
> **正合性 Exactness**：设 $\mathcal{A}$ 是阿贝尔范畴，$A \xrightarrow{f} B \xrightarrow{g} C$ 是态射链（$g \circ f = 0$）。称序列**在 $B$ 处正合**（exact at $B$），若：
> $$
> \mathrm{im}\, f = \ker g,
> $$
> 即 $f$ 的像（作为 $B$ 的子对象）与 $g$ 的核（作为 $B$ 的子对象）相等。

<!-- exact_sequence_def -->
> [!Definition]
> **正合列 Exact Sequence**：态射链
> $$
> \cdots \to A_{n-1} \xrightarrow{f_{n-1}} A_n \xrightarrow{f_n} A_{n+1} \to \cdots
> $$
> 称为**正合列**（exact sequence），若它在每个 $A_n$ 处均正合（即对每个 $n$，$\mathrm{im}\, f_{n-1} = \ker f_n$）。

## 短正合列

<!-- short_exact_sequence_def -->
> [!Definition]
> **短正合列 Short Exact Sequence**：形如
> $$
> 0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0
> $$
> 的正合列称为**短正合列**（short exact sequence）。其等价条件为：
> - $f$ 是单态射（$\ker f = 0$）；
> - $g$ 是满态射（$\mathrm{coker}\, g = 0$）；
> - 序列在 $B$ 处正合（$\mathrm{im}\, f = \ker g$）。

> **注**：在 $R\text{-}\mathbf{Mod}$ 中，短正合列 $0 \to A \to B \to C \to 0$ 等价于 $A$ 是 $B$ 的子模，$C \cong B/A$。短正合列刻画了"$B$ 是 $A$ 与 $C$ 的扩张"。

<!-- split_exact_sequence -->
> [!Definition]
> **分裂短正合列 Split Short Exact Sequence**：短正合列 $0 \to A \xrightarrow{f} B \xrightarrow{g} C \to 0$ 称为**分裂**（split），若以下等价条件之一成立：
> - 存在截面（section）$s: C \to B$ 使得 $g \circ s = \mathrm{id}_C$；
> - 存在收缩（retraction）$r: B \to A$ 使得 $r \circ f = \mathrm{id}_A$；
> - $B \cong A \oplus C$（通过与 $f, g$ 相容的同构）。

## 五引理

<!-- five_lemma -->
> [!Lemma]
> **五引理 Five Lemma**：设阿贝尔范畴 $\mathcal{A}$ 中有交换图（两行均为正合列）：
> $$
> \begin{align*}
> A_1 \xrightarrow{f_1} A_2 \xrightarrow{f_2} A_3 \xrightarrow{f_3} A_4 \xrightarrow{f_4} A_5 \\
> \downarrow{\alpha_1} \quad \downarrow{\alpha_2} \quad \downarrow{\alpha_3} \quad \downarrow{\alpha_4} \quad \downarrow{\alpha_5} \\
> B_1 \xrightarrow{g_1} B_2 \xrightarrow{g_2} B_3 \xrightarrow{g_3} B_4 \xrightarrow{g_4} B_5
> \end{align*}
> $$
> 若 $\alpha_1, \alpha_2, \alpha_4, \alpha_5$ 均为同构，则 $\alpha_3$ 也是同构。
>
> **证明思路**：分别证 $\alpha_3$ 是单态射与满态射（图追踪）：
> - **单射**：设 $\alpha_3(x) = 0$。由 $f_3$ 的性质与 $\alpha_4$ 的单射性，$f_3(x) = 0$；由正合性知 $x \in \mathrm{im}\, f_2$，取 $x = f_2(y)$；由 $\alpha_2$ 的满射性与计算得 $x = 0$。
> - **满射**：设 $b \in B_3$。由 $\alpha_4$ 满，找 $a_4$ 使 $\alpha_4(a_4) = g_3(b)$；用 $f_4(a_4) = 0$ 与 $\alpha_5$ 单，以及正合性找 $a_3$ 使 $f_3(a_3) = a_4$；再调整至 $\alpha_3(a_3) = b$。

## 蛇形引理

<!-- snake_lemma -->
> [!Lemma]
> **蛇形引理 Snake Lemma**：设阿贝尔范畴 $\mathcal{A}$ 中有交换图（两行正合）：
> $$
> \begin{align*}
> &\phantom{0 \to {}} A \xrightarrow{f} B \xrightarrow{g} C \to 0 \\
> &\phantom{0 \to {}} \downarrow{\alpha} \quad \downarrow{\beta} \quad \downarrow{\gamma} \\
> &0 \to A' \xrightarrow{f'} B' \xrightarrow{g'} C'
> \end{align*}
> $$
> 则存在唯一的**连接态射**（connecting morphism）$\partial: \ker \gamma \to \mathrm{coker}\, \alpha$，使得以下序列正合：
> $$
> \ker \alpha \to \ker \beta \to \ker \gamma \xrightarrow{\partial} \mathrm{coker}\, \alpha \to \mathrm{coker}\, \beta \to \mathrm{coker}\, \gamma.
> $$
> 若第一行还满足 $0 \to A \xrightarrow{f} B$（$f$ 单），则 $\ker \alpha \hookrightarrow \ker \beta$ 也是单射；若第二行还满足 $B' \xrightarrow{g'} C' \to 0$（$g'$ 满），则 $\mathrm{coker}\, \beta \twoheadrightarrow \mathrm{coker}\, \gamma$ 也是满射。
>
> **证明思路**：定义 $\partial(c)$：取 $c \in \ker \gamma$，在 $B$ 中选 $b$ 使 $g(b) = c$（由 $g$ 满），令 $b' = \beta(b) \in B'$；由 $g'(\beta(b)) = \gamma(g(b)) = \gamma(c) = 0$，故 $b' \in \ker g' = \mathrm{im}\, f'$，取 $a' = (f')^{-1}(b') \in A'$，令 $\partial(c) = [a'] \in \mathrm{coker}\, \alpha$。验证定义的良定性、线性与正合性均为图追踪。

## 九引理

<!-- nine_lemma -->
> [!Lemma]
> **九引理（$3 \times 3$ 引理）Nine Lemma (3×3 Lemma)**：设阿贝尔范畴 $\mathcal{A}$ 中有交换图，其列均为短正合列：
> $$
> \begin{align*}
> &\quad 0 \quad\quad 0 \quad\quad 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &0 \to A' \to B' \to C' \to 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &0 \to A \to B \to C \to 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &0 \to A'' \to B'' \to C'' \to 0 \\
> &\quad \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> &\quad 0 \quad\quad 0 \quad\quad 0
> \end{align*}
> $$
> 若其中任意两行正合，则第三行也正合。
>
> **证明思路**：由蛇形引理逐步验证，或直接图追踪利用已知两行的正合性与列的正合性。
