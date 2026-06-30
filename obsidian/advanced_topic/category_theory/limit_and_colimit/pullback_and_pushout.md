# 拉回与推出

## 拉回的定义

<!-- pullback_def -->
> [!Definition]
> **拉回 Pullback**：设 $f: A \to C$，$g: B \to C$ 为 $\mathcal{C}$ 中的一对态射（形成**余跨形** cospan）。以此为图表（形状为 $\bullet \to \bullet \leftarrow \bullet$）的极限称为 $f$ 与 $g$ 的**拉回**（也称**纤维积**），记为 $A \times_C B$：即一个对象 $P$ 连同态射 $p_1: P \to A$ 与 $p_2: P \to B$，满足
> $$
> f \circ p_1 = g \circ p_2,
> $$
> 且对任意对象 $X$ 与态射 $h_1: X \to A$，$h_2: X \to B$ 满足 $f \circ h_1 = g \circ h_2$，存在唯一的 $\langle h_1, h_2 \rangle: X \to P$ 使得 $p_1 \circ \langle h_1, h_2 \rangle = h_1$，$p_2 \circ \langle h_1, h_2 \rangle = h_2$。

> **注**：拉回方块（pullback square）常以如下形式呈现：
> $$
> \begin{align*}
> P \xrightarrow{p_2} B \\
> \downarrow_{p_1} \quad\quad \downarrow_g \\
> A \xrightarrow{f} C
> \end{align*}
> $$
> 方块加记号 $\ulcorner$ 或 $\lrcorner$ 表示为拉回方块。

## 推出的定义

<!-- pushout_def -->
> [!Definition]
> **推出 Pushout**：设 $f: C \to A$，$g: C \to B$ 为 $\mathcal{C}$ 中的一对态射（形成**跨形** span）。以此为图表（形状为 $\bullet \leftarrow \bullet \to \bullet$）的余极限称为 $f$ 与 $g$ 的**推出**（也称**纤维余积**），记为 $A \sqcup_C B$：即一个对象 $Q$ 连同态射 $\iota_1: A \to Q$ 与 $\iota_2: B \to Q$，满足
> $$
> \iota_1 \circ f = \iota_2 \circ g,
> $$
> 且对任意满足 $k_1 \circ f = k_2 \circ g$ 的 $k_1: A \to X$，$k_2: B \to X$，存在唯一的 $[k_1, k_2]: Q \to X$ 使得 $[k_1, k_2] \circ \iota_1 = k_1$，$[k_1, k_2] \circ \iota_2 = k_2$。

> **注**：推出与拉回互为对偶：推出在 $\mathcal{C}^{\mathrm{op}}$ 中即为拉回。

## 拉回保持单态射

<!-- pullback_preserves_mono -->
> [!Theorem]
> **拉回保持单态射 Pullback Preserves Monomorphisms**：若 $g: B \to C$ 是单态射，则拉回的投影 $p_1: A \times_C B \to A$ 也是单态射。
>
> **证明思路**：设 $p_1 \circ h = p_1 \circ k$，则 $f \circ p_1 \circ h = f \circ p_1 \circ k$，即 $g \circ p_2 \circ h = g \circ p_2 \circ k$；由 $g$ 单得 $p_2 \circ h = p_2 \circ k$；于是 $(p_1 \circ h, p_2 \circ h) = (p_1 \circ k, p_2 \circ k)$；由拉回唯一性得 $h = k$。

## 拉回粘合引理

<!-- pullback_pasting_lemma -->
> [!Theorem]
> **拉回粘合引理 Pullback Pasting Lemma**：设有如下交换图：
> $$
> \begin{align*}
> X \xrightarrow{} Y \xrightarrow{} Z \\
> \downarrow \quad\quad \downarrow \quad\quad \downarrow \\
> A \xrightarrow{} B \xrightarrow{} C
> \end{align*}
> $$
> 1. 若右方块与整体外方块均为拉回方块，则左方块也是拉回方块；
> 2. 若左方块与右方块均为拉回方块，则整体外方块也是拉回方块。
>
> **证明思路**：利用各自的泛性质逐步构造所需的唯一介入态射，验证满足拉回条件。

## 例子

<!-- pullback_example_set -->
> [!Example]+
> **$\mathbf{Set}$ 中的拉回与推出**：
> - **拉回**：$f: A \to C$，$g: B \to C$ 的拉回为**纤维积** $A \times_C B = \{(a, b) \in A \times B \mid f(a) = g(b)\}$，投影为 $p_1(a,b) = a$，$p_2(a,b) = b$；
> - **推出**：$f: C \to A$，$g: C \to B$ 的推出为**余纤维积** $(A \sqcup B) / \sim$，其中 $\sim$ 是由 $f(c) \sim g(c)$（$c \in C$）生成的等价关系。

<!-- pullback_example_top -->
> [!Example]+
> **$\mathbf{Top}$ 中的拉回**：$f: A \to C$，$g: B \to C$ 的拉回为赋予乘积拓扑的子空间 $A \times_C B \subseteq A \times B$，此为**纤维乘积**（fiber product）。特别地，当 $g: \{c\} \hookrightarrow C$ 为单点嵌入时，$A \times_C \{c\} = f^{-1}(c)$ 为 $f$ 在 $c$ 处的**纤维**。

<!-- pushout_example_grp -->
> [!Example]+
> **$\mathbf{Grp}$ 中的推出（自由积的商）**：$f: K \to G$，$g: K \to H$ 的推出为**合并积**（amalgamated free product）$G *_K H = (G * H) / N$，其中 $N$ 是由 $\{f(k) g(k)^{-1} \mid k \in K\}$ 正规生成的正规子群。这是代数中合并两个群沿公共子群的基本构造。

<!-- pushout_example_topology -->
> [!Example]+
> **$\mathbf{Top}$ 中的推出（粘合）**：$f: A \hookrightarrow X$，$g: A \hookrightarrow Y$ 的推出为**粘合空间** $X \cup_A Y = (X \sqcup Y) / (f(a) \sim g(a))$，即沿 $A$ 将 $X$ 与 $Y$ 粘合的拓扑空间。这是拓扑中构造 CW 复形等空间的基本工具。
