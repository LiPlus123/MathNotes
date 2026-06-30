# 映射的同伦

## 同伦的定义

<!-- homotopy_of_maps_definition -->
> [!Definition]
> **同伦 Homotopy**：设 $X, Y$ 是拓扑空间，$f, g: X \to Y$ 是连续映射。若存在连续映射 $H: X \times I \to Y$（其中 $I = [0,1]$），使得对所有 $x \in X$：
> $$H(x, 0) = f(x), \quad H(x, 1) = g(x),$$
> 则称 $f$ 与 $g$ **同伦 Homotopic**，记为 $f \simeq g$，并称 $H$ 是从 $f$ 到 $g$ 的一个**同伦 Homotopy**。

> **注**：直观上，同伦给出了从映射 $f$ 到映射 $g$ 的一族"连续形变"；对每个固定的 $t \in I$，$H(\cdot, t): X \to Y$ 是一个连续映射，它从 $f = H(\cdot, 0)$ 连续地变化到 $g = H(\cdot, 1)$。

## 同伦作为等价关系

<!-- homotopy_equivalence_relation -->
> [!Theorem]
> **同伦是等价关系 Homotopy is an Equivalence Relation**：在从拓扑空间 $X$ 到拓扑空间 $Y$ 的连续映射全体上，同伦关系 $\simeq$ 是等价关系：
> 1. **自反性**：$f \simeq f$；
> 2. **对称性**：若 $f \simeq g$，则 $g \simeq f$；
> 3. **传递性**：若 $f \simeq g$ 且 $g \simeq h$，则 $f \simeq h$。
>
> **证明思路**：(1) 取 $H(x, t) = f(x)$，即静止同伦。(2) 若 $H$ 是从 $f$ 到 $g$ 的同伦，则 $H'(x, t) = H(x, 1-t)$ 是从 $g$ 到 $f$ 的同伦。(3) 若 $H$ 是从 $f$ 到 $g$ 的同伦，$K$ 是从 $g$ 到 $h$ 的同伦，定义：
> $$L(x, t) = \begin{cases} H(x, 2t), & 0 \leq t \leq \dfrac{1}{2}, \\[6pt] K(x, 2t - 1), & \dfrac{1}{2} \leq t \leq 1, \end{cases}$$
> 则 $L$ 是从 $f$ 到 $h$ 的同伦；连续性由粘合引理（在 $X \times \{1/2\}$ 处 $H(x,1) = g(x) = K(x,0)$）保证。

## 同伦类

<!-- homotopy_class_definition -->
> [!Definition]
> **同伦类 Homotopy Class**：连续映射 $f: X \to Y$ 在同伦关系下的等价类称为 $f$ 的**同伦类 Homotopy Class**，记为 $[f]$。从 $X$ 到 $Y$ 的所有连续映射的同伦类构成的集合记为 $[X, Y]$。

## 相对同伦

<!-- relative_homotopy_definition -->
> [!Definition]
> **相对同伦 Relative Homotopy**：设 $A \subseteq X$ 是子空间，$f, g: X \to Y$ 是连续映射且 $f|_A = g|_A$。若存在从 $f$ 到 $g$ 的同伦 $H: X \times I \to Y$，满足对所有 $a \in A$ 和所有 $t \in I$：
> $$H(a, t) = f(a),$$
> 则称 $f$ 与 $g$ **相对于 $A$ 同伦 Homotopic Relative to $A$**，记为 $f \simeq g\ \mathrm{rel}\ A$。

> **注**：相对同伦在形变过程中保持 $A$ 上各点的值始终不变，是定义道路同伦（端点固定）的基础。

## 直线同伦

<!-- straight_line_homotopy_example -->
> [!Example]+
> **直线同伦 Straight-Line Homotopy**：设 $C \subseteq \mathbb{R}^n$ 是凸集，$f, g: X \to C$ 是连续映射。定义：
> $$H(x, t) = (1-t)f(x) + tg(x), \quad x \in X,\ t \in I.$$
> 由 $C$ 的凸性知 $H$ 的值域包含于 $C$，且 $H$ 连续，$H(x,0) = f(x)$，$H(x,1) = g(x)$，故 $f \simeq g$。
>
> 特别地，$\mathbb{R}^n$ 中取值的任意两个连续映射必然同伦，因为 $\mathbb{R}^n$ 是凸集。
