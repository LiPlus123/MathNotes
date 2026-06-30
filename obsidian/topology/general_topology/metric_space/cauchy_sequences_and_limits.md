# 柯西序列与极限

## 有界序列

<!-- bounded_sequence_definition -->
> [!Definition]
> **有界序列 Bounded Sequence**：设 $(X, d)$ 是度量空间，$(x_n)_{n \geq 1}$ 是 $X$ 中的序列。若存在点 $x_0 \in X$ 和常数 $M > 0$，使得对所有 $n \geq 1$ 均有 $d(x_n, x_0) \leq M$，则称序列 $(x_n)$ 是**有界的 Bounded**。

> **注**：有界性与基点 $x_0$ 的选取无关：若序列关于某一点有界，则关于任意点也有界（半径可能不同）。

## 序列收敛与极限

<!-- sequence_convergence_definition -->
> [!Definition]
> **序列收敛 Convergence of Sequences**：设 $(X, d)$ 是度量空间，$(x_n)_{n \geq 1}$ 是 $X$ 中的序列，$x \in X$。若对任意 $\varepsilon > 0$，存在 $N \in \mathbb{Z}^+$，使得对所有 $n \geq N$ 均有 $d(x_n, x) < \varepsilon$，则称序列 $(x_n)$ **收敛 Converges** 到 $x$，记为
> $$\lim_{n \to \infty} x_n = x \quad \text{或} \quad x_n \to x$$
> 称 $x$ 为序列 $(x_n)$ 的**极限 Limit**。不收敛的序列称为**发散序列 Divergent Sequence**。

<!-- limit_uniqueness -->
> [!Proposition]
> **极限的唯一性 Uniqueness of Limit**：度量空间中收敛序列的极限唯一。
>
> **证明思路**：若 $x_n \to x$ 且 $x_n \to y$，则 $d(x, y) \leq d(x, x_n) + d(x_n, y) \to 0$，故 $d(x, y) = 0$，即 $x = y$。

<!-- convergent_sequence_bounded -->
> [!Proposition]
> **收敛序列有界 Convergent Sequences are Bounded**：度量空间中每个收敛序列都是有界序列。
>
> **证明思路**：设 $x_n \to x$，取 $\varepsilon = 1$，存在 $N$ 使 $n \geq N$ 时 $d(x_n, x) < 1$；前有限项距离有最大值，故整个序列有界。

## 极限点

<!-- limit_point_definition -->
> [!Definition]
> **极限点（聚点）Limit Point (Accumulation Point)**：设 $(X, d)$ 是度量空间，$A \subseteq X$，$x \in X$。若对任意 $r > 0$，开球 $B(x, r)$ 中均含有 $A$ 的无穷多个点（等价地：含有 $A \setminus \{x\}$ 中的至少一个点），则称 $x$ 是 $A$ 的**极限点 Limit Point**（或**聚点 Accumulation Point**）。$A$ 的所有极限点的集合记为 $A'$，称为 $A$ 的**导集 Derived Set**。

<!-- limit_point_sequence_characterization -->
> [!Proposition]
> **极限点的序列刻画 Sequential Characterization of Limit Points**：设 $(X, d)$ 是度量空间，$A \subseteq X$，$x \in X$。则 $x$ 是 $A$ 的极限点，当且仅当存在 $A \setminus \{x\}$ 中的序列 $(a_n)_{n \geq 1}$ 使得 $a_n \to x$。
>
> **证明思路**：充分性显然；必要性：对每个 $n$，在 $B(x, \frac{1}{n}) \cap (A \setminus \{x\})$ 中取一点 $a_n$，则 $d(a_n, x) < \frac{1}{n} \to 0$。

<!-- closed_set_contains_limit_points -->
> [!Proposition]
> **闭集包含其极限点 Closed Sets Contain Their Limit Points**：在度量空间 $(X, d)$ 中，$F \subseteq X$ 是闭集当且仅当 $F$ 包含它的所有极限点，即 $F' \subseteq F$。
>
> **证明思路**：$(\Rightarrow)$ 若 $x \notin F$，则 $x \in X \setminus F$（开集），存在 $B(x, r) \subseteq X \setminus F$，即 $B(x,r) \cap F = \varnothing$，故 $x$ 不是 $F$ 的极限点。$(\Leftarrow)$ 若 $F' \subseteq F$，对 $x \notin F$ 则 $x$ 不是 $F$ 的极限点，存在 $r > 0$ 使 $B(x,r) \cap F = \varnothing$，即 $B(x,r) \subseteq X \setminus F$，故 $X \setminus F$ 是开集。

## 柯西序列与完备性

<!-- cauchy_sequence_definition -->
> [!Definition]
> **柯西序列 Cauchy Sequence**：设 $(X, d)$ 是度量空间，$(x_n)_{n \geq 1}$ 是 $X$ 中的序列。若对任意 $\varepsilon > 0$，存在 $N \in \mathbb{Z}^+$，使得对所有 $m, n \geq N$ 均有 $d(x_m, x_n) < \varepsilon$，则称 $(x_n)$ 为**柯西序列 Cauchy Sequence**。

<!-- convergent_implies_cauchy -->
> [!Proposition]
> **收敛序列是柯西序列 Convergent Sequences are Cauchy**：度量空间中每个收敛序列都是柯西序列。
>
> **证明思路**：设 $x_n \to x$，对 $\varepsilon > 0$ 取 $N$ 使 $n \geq N$ 时 $d(x_n, x) < \frac{\varepsilon}{2}$，则 $m, n \geq N$ 时 $d(x_m, x_n) \leq d(x_m, x) + d(x, x_n) < \varepsilon$。

> **注**：柯西序列不一定收敛，例如在 $(\mathbb{Q}, d_2)$ 中，趋向 $\sqrt{2}$ 的有理数列是柯西序列但不收敛。

<!-- complete_metric_space_definition -->
> [!Definition]
> **完备度量空间 Complete Metric Space**：设 $(X, d)$ 是度量空间。若 $X$ 中的每个柯西序列都在 $X$ 中收敛，则称 $(X, d)$ 是**完备的 Complete**。

<!-- real_line_complete -->
> [!Example]+
> **实数集的完备性 Completeness of Real Numbers**：$(\mathbb{R}, d_2)$ 是完备度量空间。这是实数系的基本性质（等价于实数的确界原理）。更一般地，$(\mathbb{R}^n, d_2)$ 也是完备的。
