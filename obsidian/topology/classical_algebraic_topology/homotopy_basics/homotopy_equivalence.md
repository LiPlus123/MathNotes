# 同伦等价与同伦类型

## 同伦等价

<!-- homotopy_equivalence_definition -->
> [!Definition]
> **同伦等价 Homotopy Equivalence**：设 $X, Y$ 是拓扑空间，$f: X \to Y$ 是连续映射。若存在连续映射 $g: Y \to X$，使得：
> $$g \circ f \simeq \mathrm{id}_X, \quad f \circ g \simeq \mathrm{id}_Y,$$
> 则称 $f$ 是（从 $X$ 到 $Y$ 的）**同伦等价 Homotopy Equivalence**，称 $g$ 为 $f$ 的**同伦逆 Homotopy Inverse**，称 $X$ 与 $Y$ **同伦等价 Homotopy Equivalent**，记为 $X \simeq Y$。

> **注**：同伦逆不一定唯一。若 $g_1$ 和 $g_2$ 都是 $f$ 的同伦逆，则 $g_1 \simeq g_2$（证明：$g_1 \simeq g_1 \circ (f \circ g_2) \simeq (g_1 \circ f) \circ g_2 \simeq g_2$）。同胚必然是同伦等价，但反之不然。

<!-- homotopy_equivalence_is_equivalence_relation -->
> [!Theorem]
> **同伦等价是等价关系 Homotopy Equivalence is an Equivalence Relation**：拓扑空间之间的同伦等价关系 $\simeq$ 是等价关系：
> 1. **自反性**：$X \simeq X$（取 $f = g = \mathrm{id}_X$）；
> 2. **对称性**：若 $X \simeq Y$，则 $Y \simeq X$；
> 3. **传递性**：若 $X \simeq Y$ 且 $Y \simeq Z$，则 $X \simeq Z$。
>
> **证明思路**：(1)(2) 直接由定义得出。(3) 设 $f: X \to Y$ 有同伦逆 $g$，$f': Y \to Z$ 有同伦逆 $g'$，则 $f' \circ f: X \to Z$ 的同伦逆为 $g \circ g'$；验证 $(g \circ g') \circ (f' \circ f) = g \circ (g' \circ f') \circ f \simeq g \circ \mathrm{id}_Y \circ f \simeq \mathrm{id}_X$，另一侧类似。

## 同伦类型

<!-- homotopy_type_definition -->
> [!Definition]
> **同伦类型 Homotopy Type**：拓扑空间 $X$ 在同伦等价关系下的等价类称为 $X$ 的**同伦类型 Homotopy Type**。若 $X \simeq Y$，则称 $X$ 与 $Y$ 具有相同的同伦类型。

## 同伦不变量

<!-- homotopy_invariant_definition -->
> [!Definition]
> **同伦不变量 Homotopy Invariant**：若空间的某一性质（或代数对象）在同伦等价下保持不变（即同伦等价的空间具有相同的该性质或同构的该代数对象），则称其为**同伦不变量 Homotopy Invariant**。

> **注**：同伦不变量是代数拓扑的核心研究对象。基本群 $\pi_1(X, x_0)$、奇异同调群 $H_n(X)$ 均是典型的同伦不变量。同胚不变量一定是同伦不变量，但反之不然——存在同伦等价但不同胚的空间（例如 $\mathbb{R}^n$ 与单点空间同伦等价但不同胚，$n \geq 1$）。

## 可缩空间

<!-- contractible_space_definition -->
> [!Definition]
> **可缩空间 Contractible Space**：若拓扑空间 $X$ 同伦等价于单点空间 $\{*\}$（等价地，恒等映射 $\mathrm{id}_X$ 同伦于某个常值映射 $c_{x_0}: X \to X$），则称 $X$ 是**可缩空间 Contractible Space**（或称 $X$ **可缩 Contractible**）。

> **注**：可缩等价于：存在 $x_0 \in X$ 以及同伦 $H: X \times I \to X$，使得 $H(x, 0) = x$ 且 $H(x, 1) = x_0$ 对所有 $x \in X$ 成立。可缩空间的所有同伦不变量均平凡（例如所有同调群为零次以外均消失）。

<!-- star_shaped_contractible -->
> [!Theorem]
> **星形集合可缩 Star-Shaped Sets Are Contractible**：设 $C \subseteq \mathbb{R}^n$ 是星形集合，即存在 $x_0 \in C$，使得对所有 $x \in C$，线段 $\{(1-t)x_0 + tx \mid t \in [0,1]\} \subseteq C$，则 $C$ 是可缩的。
>
> **证明思路**：定义 $H: C \times I \to C$，$H(x, t) = (1-t)x + tx_0$。由 $C$ 的星形性质，$H$ 的值域包含在 $C$ 内；$H$ 连续，$H(x, 0) = x$，$H(x, 1) = x_0$，故 $\mathrm{id}_C \simeq c_{x_0}$，即 $C$ 可缩。

<!-- contractible_space_examples -->
> [!Example]+
> **可缩空间的例子 Examples of Contractible Spaces**：
> 1. $\mathbb{R}^n$ 是可缩的（以原点为星形中心的直线同伦）；
> 2. 单位闭球 $D^n = \{x \in \mathbb{R}^n \mid \|x\| \leq 1\}$ 是可缩的（以原点为星形中心）；
> 3. 单点空间 $\{*\}$ 是可缩的；
> 4. 单位圆 $S^1$ **不**可缩（其基本群 $\pi_1(S^1, *) \cong \mathbb{Z} \neq 0$，而可缩空间的基本群平凡）。
