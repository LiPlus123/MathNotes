# 道路连通性

## 道路

<!-- path_definition -->
> [!Definition]
> **道路 Path**：设 $(X, \mathcal{T})$ 是拓扑空间，$x, y \in X$。从 $x$ 到 $y$ 的**道路 Path** 是一个连续映射 $\gamma: [0, 1] \to X$ 满足 $\gamma(0) = x$，$\gamma(1) = y$。称 $x$ 为道路的**起点 Initial Point**，$y$ 为**终点 Terminal Point**。

## 道路连通

<!-- path_connected_definition -->
> [!Definition]
> **道路连通 Path-Connected**：拓扑空间 $(X, \mathcal{T})$ 称为**道路连通的 Path-Connected**，若对任意 $x, y \in X$，存在从 $x$ 到 $y$ 的道路。子集 $A \subseteq X$ 称为道路连通的，若子空间 $(A, \mathcal{T}_A)$ 道路连通。

## 道路连通分支

<!-- path_component_definition -->
> [!Definition]
> **道路连通分支 Path Component**：设 $(X, \mathcal{T})$ 是拓扑空间，$x \in X$。与 $x$ 可以用道路相连的所有点的集合称为 $x$ 的**道路连通分支 Path Component**，记为 $P(x) = \{y \in X \mid \exists \text{ 从 } x \text{ 到 } y \text{ 的道路}\}$。

<!-- path_component_properties -->
> [!Proposition]
> **道路连通分支的性质 Properties of Path Components**：
> 1. 每个道路连通分支 $P(x)$ 是道路连通的（极大道路连通子集）；
> 2. 任意两个道路连通分支或相同或不相交；
> 3. $X$ 是其道路连通分支的不相交并；
> 4. $X$ 道路连通当且仅当只有一个道路连通分支。
>
> **证明思路**：在 $X$ 上定义等价关系：$x \sim y$ 若存在从 $x$ 到 $y$ 的道路（自反：常值道路；对称：道路反转 $\bar\gamma(t) = \gamma(1-t)$；传递：道路拼接）。等价类即为道路连通分支。

## 道路连通性与连通性的关系

<!-- path_connected_implies_connected -->
> [!Theorem]
> **道路连通蕴含连通 Path-Connected implies Connected**：若拓扑空间 $X$ 是道路连通的，则 $X$ 是连通的。
>
> **证明思路**：若 $X = U \cup V$（分割），取 $x \in U$，$y \in V$，设 $\gamma: [0,1] \to X$ 是从 $x$ 到 $y$ 的道路；则 $[0,1] = \gamma^{-1}(U) \cup \gamma^{-1}(V)$ 是 $[0,1]$ 的分割，与 $[0,1]$ 连通矛盾。

<!-- connected_not_path_connected_example -->
> [!Example]+
> **连通但非道路连通的例子 Connected but Not Path-Connected**：**拓扑学家正弦曲线 Topologist's Sine Curve** 是 $\mathbb{R}^2$ 中集合
> $$S = \left\{ \left(x,\ \sin\tfrac{1}{x}\right) \;\middle|\; x > 0 \right\} \cup \{0\} \times [-1, 1]$$
> 它是连通的（前一部分的闭包包含后一部分），但不是道路连通的（从 $\{0\} \times [-1,1]$ 上的点到前一部分没有道路，因为 $\sin\frac{1}{x}$ 在 $x \to 0^+$ 时振荡无极限）。

## 道路连通性是拓扑性质

<!-- path_connectedness_topological_invariant -->
> [!Theorem]
> **道路连通性是拓扑不变量 Path-Connectedness is a Topological Invariant**：设 $f: X \to Y$ 是连续满射，若 $X$ 道路连通，则 $Y$ 道路连通。
>
> **证明思路**：对任意 $u, v \in Y$，由 $f$ 满射取 $x, y \in X$ 使 $f(x) = u$，$f(y) = v$；由 $X$ 道路连通取道路 $\gamma: [0,1] \to X$（$\gamma(0)=x$，$\gamma(1)=y$），则 $f \circ \gamma: [0,1] \to Y$ 是从 $u$ 到 $v$ 的道路。
