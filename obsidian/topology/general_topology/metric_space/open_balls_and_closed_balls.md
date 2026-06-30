# 开球与闭球

## 开球与闭球

<!-- open_ball_definition -->
> [!Definition]
> **开球 Open Ball**：设 $(X, d)$ 是度量空间，$x_0 \in X$，$r > 0$。以 $x_0$ 为中心、$r$ 为半径的**开球 Open Ball**定义为：
> $$B(x_0, r) = \{x \in X \mid d(x, x_0) < r\}$$
> 称 $r$ 为开球的**半径 Radius**，$x_0$ 为**中心 Center**。

<!-- closed_ball_definition -->
> [!Definition]
> **闭球 Closed Ball**：设 $(X, d)$ 是度量空间，$x_0 \in X$，$r > 0$。以 $x_0$ 为中心、$r$ 为半径的**闭球 Closed Ball**定义为：
> $$\bar{B}(x_0, r) = \{x \in X \mid d(x, x_0) \leq r\}$$

<!-- sphere_definition -->
> [!Definition]
> **球面 Sphere**：设 $(X, d)$ 是度量空间，$x_0 \in X$，$r > 0$。以 $x_0$ 为中心、$r$ 为半径的**球面 Sphere**定义为：
> $$S(x_0, r) = \{x \in X \mid d(x, x_0) = r\}$$

> **注**：$\bar{B}(x_0, r) = B(x_0, r) \cup S(x_0, r)$。在离散度量空间中，$r \leq 1$ 时 $B(x_0, r) = \{x_0\}$；$r > 1$ 时 $B(x_0, r) = X$。

## 开集与闭集

<!-- open_set_definition -->
> [!Definition]
> **开集 Open Set**：设 $(X, d)$ 是度量空间，$U \subseteq X$。若对任意 $x \in U$，存在 $r > 0$ 使得 $B(x, r) \subseteq U$，则称 $U$ 为**开集 Open Set**。

<!-- closed_set_definition -->
> [!Definition]
> **闭集 Closed Set**：设 $(X, d)$ 是度量空间，$F \subseteq X$。若 $X \setminus F$ 是开集，则称 $F$ 为**闭集 Closed Set**。

> **注**：$\varnothing$ 和 $X$ 既是开集又是闭集。

## 开集与闭集的性质

<!-- open_set_properties -->
> [!Theorem]
> **开集的性质 Properties of Open Sets**：设 $(X, d)$ 是度量空间，则：
> 1. $\varnothing$ 与 $X$ 是开集；
> 2. 任意个开集的并仍为开集：若 $\{U_\alpha\}_{\alpha \in I}$ 是开集族，则 $\bigcup_{\alpha \in I} U_\alpha$ 是开集；
> 3. 有限个开集的交仍为开集：若 $U_1, U_2, \ldots, U_n$ 是开集，则 $\bigcap_{i=1}^{n} U_i$ 是开集。
>
> **证明思路**：(1) 直接验证定义；(2) 对 $\bigcup U_\alpha$ 中任意点，该点属于某 $U_\alpha$，由 $U_\alpha$ 是开集取到开球包含于 $U_\alpha$ 从而包含于并集；(3) 对有限交中任意点，在每个 $U_i$ 中各取开球半径 $r_i$，令 $r = \min_i r_i > 0$，则 $B(x, r)$ 含于每个 $U_i$。

> **注**：无限个开集的交不一定是开集，例如 $\bigcap_{n=1}^{\infty} B(0, \frac{1}{n}) = \{0\}$ 在 $\mathbb{R}$ 中不是开集。

<!-- closed_set_properties -->
> [!Theorem]
> **闭集的性质 Properties of Closed Sets**：设 $(X, d)$ 是度量空间，则：
> 1. $\varnothing$ 与 $X$ 是闭集；
> 2. 任意个闭集的交仍为闭集；
> 3. 有限个闭集的并仍为闭集。
>
> **证明思路**：由开集性质通过取补集（De Morgan 律）直接得到。

<!-- open_ball_is_open -->
> [!Proposition]
> **开球是开集 Open Ball is an Open Set**：在度量空间 $(X, d)$ 中，任意开球 $B(x_0, r)$ 都是开集。
>
> **证明思路**：对 $x \in B(x_0, r)$，令 $r' = r - d(x, x_0) > 0$，由三角不等式验证 $B(x, r') \subseteq B(x_0, r)$。

<!-- closed_ball_is_closed -->
> [!Proposition]
> **闭球是闭集 Closed Ball is a Closed Set**：在度量空间 $(X, d)$ 中，任意闭球 $\bar{B}(x_0, r)$ 都是闭集。
>
> **证明思路**：验证补集 $X \setminus \bar{B}(x_0, r)$ 是开集：对补集中的点 $x$，取 $r' = d(x, x_0) - r > 0$，由三角不等式得 $B(x, r') \subseteq X \setminus \bar{B}(x_0, r)$。
