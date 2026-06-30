# 基点的影响

## 基点变换给出群同构

<!-- basepoint_change_isomorphism -->
> [!Theorem]
> **基点变换同构 Change of Basepoint Isomorphism**：设 $X$ 是道路连通的拓扑空间，$x_0, x_1 \in X$，$\alpha: I \to X$ 是从 $x_0$ 到 $x_1$ 的道路。定义映射 $\beta_\alpha: \pi_1(X, x_0) \to \pi_1(X, x_1)$ 为：
> $$\beta_\alpha([\gamma]) = [\bar{\alpha} * \gamma * \alpha],$$
> 则 $\beta_\alpha$ 是群同构。
>
> **证明思路**：
> - **同态**：$\beta_\alpha([\gamma] \cdot [\delta]) = [\bar{\alpha} * (\gamma * \delta) * \alpha] = [\bar{\alpha} * \gamma * \alpha * \bar{\alpha} * \delta * \alpha]$（利用 $\alpha * \bar{\alpha} \simeq c_{x_1}\ \mathrm{rel}\ \partial I$）$= [\bar{\alpha} * \gamma * \alpha] \cdot [\bar{\alpha} * \delta * \alpha] = \beta_\alpha([\gamma]) \cdot \beta_\alpha([\delta])$；
> - **双射**：$\beta_{\bar{\alpha}}: \pi_1(X, x_1) \to \pi_1(X, x_0)$ 是 $\beta_\alpha$ 的逆映射（因为 $\beta_{\bar{\alpha}} \circ \beta_\alpha([\gamma]) = [\alpha * \bar{\alpha} * \gamma * \alpha * \bar{\alpha}] \simeq [\gamma]$）。

> **注**：此同构依赖于连接路径 $\alpha$ 的选取，一般不是典范（canonical）的。若选取不同的道路 $\alpha'$（同为从 $x_0$ 到 $x_1$），则 $\beta_{\alpha'}$ 与 $\beta_\alpha$ 相差一个由 $[\alpha' * \bar{\alpha}] \in \pi_1(X, x_0)$ 给出的内自同构。

<!-- basepoint_change_independent_up_to_iso -->
> [!Corollary]
> **道路连通空间的基本群同构 Fundamental Group up to Isomorphism**：若 $X$ 是道路连通空间，则对任意 $x_0, x_1 \in X$，$\pi_1(X, x_0) \cong \pi_1(X, x_1)$。因此，当 $X$ 道路连通时，可以谈论不依赖基点的基本群的"同构类"，有时简记为 $\pi_1(X)$。

## 单连通空间

<!-- simply_connected_definition -->
> [!Definition]
> **单连通空间 Simply Connected Space**：若拓扑空间 $X$ 满足：
> 1. $X$ 是道路连通的；
> 2. $\pi_1(X, x_0)$ 是平凡群（对某个，从而对任意 $x_0 \in X$）；
>
> 则称 $X$ 是**单连通空间 Simply Connected Space**。

> **注**：单连通等价于：$X$ 道路连通，且 $X$ 中任意回路均与常值回路道路同伦（即所有回路均可连续收缩到基点）。等价地，$X$ 道路连通且 $[X, S^1] = \{[\mathrm{const}]\}$（到圆周的映射均同伦到常值映射）。

<!-- simply_connected_examples -->
> [!Example]+
> **单连通空间的例子 Examples of Simply Connected Spaces**：
> 1. $\mathbb{R}^n$（$n \geq 1$）是单连通的（因为 $\mathbb{R}^n$ 可缩）；
> 2. $S^n$（$n \geq 2$）是单连通的（$\pi_1(S^n) = 0$）；
> 3. 单位圆 $S^1$ **不**单连通（$\pi_1(S^1) \cong \mathbb{Z} \neq 0$）；
> 4. 环面 $T^2 = S^1 \times S^1$ **不**单连通（$\pi_1(T^2) \cong \mathbb{Z} \times \mathbb{Z} \neq 0$）。
