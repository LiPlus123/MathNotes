# 高维球面回路的可交换性

## 从 $\pi_1$ 到高阶同伦群的过渡

基本群 $\pi_1(X, x_0)$ 是以单位区间 $I = [0,1]$ 中的回路（即映射 $\gamma: I \to X$ 满足 $\gamma(0) = \gamma(1) = x_0$）的同伦类构成的群。自然地，可以考虑用更高维的球面代替 $S^1 \cong I/\partial I$ 来定义更高阶的"回路"，这就是高阶同伦群的出发点。

<!-- higher_homotopy_group_informal -->
> [!Definition]
> **高阶同伦群（非正式定义）Higher Homotopy Groups (Informal)**：设 $X$ 是拓扑空间，$x_0 \in X$，$n \geq 1$。第 $n$ 个**同伦群 Homotopy Group** $\pi_n(X, x_0)$ 是以 $n$ 维球面 $S^n$ 为定义域（基点映到 $x_0$）的连续映射的（保基点）同伦类之集合，赋予相应的群运算。

> **注**：$\pi_1(X, x_0)$ 即通常的基本群。对 $n \geq 2$ 的 $\pi_n(X, x_0)$ 的严格构造与研究属于后续更深入的同伦论内容，此处仅介绍其可交换性现象，作为与基本群的对比。

## 高阶同伦群的阿贝尔性

<!-- higher_homotopy_groups_abelian -->
> [!Theorem]
> **高阶同伦群是阿贝尔群 Higher Homotopy Groups are Abelian**：对任意拓扑空间 $X$、基点 $x_0 \in X$ 和整数 $n \geq 2$，$\pi_n(X, x_0)$ 是阿贝尔群。
>
> **证明思路（Eckmann-Hilton 论证）**：$\pi_n(X, x_0)$（$n \geq 2$）上存在两种群运算：一种来自"水平"方向的连接，另一种来自"竖直"方向的连接，两者均以常值映射为单位元，并满足交换律（即互为分配律）。由 Eckmann-Hilton 论证，满足此条件的两个幺半群运算必然相等且均交换，故 $\pi_n(X, x_0)$ 是阿贝尔群。

> **注**：直观地说，在 $n \geq 2$ 维的情形中，两个"球面回路"有足够的空间相互"绕过"，从而可以交换顺序——这在一维回路（圆周 $S^1$）中一般无法做到，因为 $\pi_1$ 可以是非阿贝尔群（例如 $\pi_1$ 的自由群情形）。

## 与基本群的对比

<!-- comparison_pi1_vs_higher -->
> [!Example]+
> **基本群与高阶同伦群的对比 Comparison of $\pi_1$ and Higher Homotopy Groups**：
> 1. 对圆周 $S^1$：$\pi_1(S^1) \cong \mathbb{Z}$（无限循环群，阿贝尔）；$\pi_n(S^1) = 0$ 对 $n \geq 2$（万有覆叠空间 $\mathbb{R}$ 可缩）；
> 2. 对 $2$-球面 $S^2$：$\pi_1(S^2) = 0$（单连通）；$\pi_2(S^2) \cong \mathbb{Z}$；$\pi_3(S^2) \cong \mathbb{Z}$（Hopf 纤维化）；
> 3. 楔积 $S^1 \vee S^1$ 的基本群 $\pi_1(S^1 \vee S^1)$ 是两个生成元的自由群（非阿贝尔），而 $\pi_2(S^1 \vee S^1)$ 则是阿贝尔群。

> **注**：高阶同伦群的计算一般极为困难。即使对球面 $S^n$，$\pi_k(S^n)$（$k > n$）的完整计算仍是当代数学的前沿课题。这与同调群形成对比：同调群的计算工具（如 Mayer-Vietoris 序列、胞腔同调等）更为系统。本章后续将重点发展 $\pi_1$ 的计算工具（Van Kampen 定理、覆叠理论），高阶同伦群留待更深入的同伦论中处理。
