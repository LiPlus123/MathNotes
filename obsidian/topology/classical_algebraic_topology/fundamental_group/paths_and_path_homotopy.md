# 道路与道路同伦

## 道路与回路

<!-- path_definition -->
> [!Definition]
> **道路 Path**：设 $X$ 是拓扑空间。从点 $x_0$ 到点 $x_1$ 的**道路 Path** 是连续映射 $\gamma: I \to X$，满足 $\gamma(0) = x_0$，$\gamma(1) = x_1$。称 $x_0 = \gamma(0)$ 为道路的**起点 Starting Point**，$x_1 = \gamma(1)$ 为道路的**终点 Ending Point**。

<!-- loop_definition -->
> [!Definition]
> **回路 Loop**：以 $x_0 \in X$ 为**基点 Basepoint** 的**回路 Loop** 是满足 $\gamma(0) = \gamma(1) = x_0$ 的道路 $\gamma: I \to X$。

<!-- constant_path_definition -->
> [!Definition]
> **常值道路 Constant Path**：在点 $x_0 \in X$ 处的**常值道路（常值回路）Constant Path** 定义为 $c_{x_0}: I \to X$，$c_{x_0}(s) = x_0$（对所有 $s \in I$）。

## 道路同伦

<!-- path_homotopy_definition -->
> [!Definition]
> **道路同伦 Path Homotopy**：设 $\gamma, \delta: I \to X$ 是具有相同起点 $\gamma(0) = \delta(0) = x_0$ 和相同终点 $\gamma(1) = \delta(1) = x_1$ 的道路。若存在连续映射 $H: I \times I \to X$，使得：
> $$H(s, 0) = \gamma(s),\quad H(s, 1) = \delta(s) \quad \forall s \in I,$$
> $$H(0, t) = x_0,\quad H(1, t) = x_1 \quad \forall t \in I,$$
> 则称 $\gamma$ 与 $\delta$ **道路同伦 Path Homotopic**，记为 $\gamma \simeq \delta\ \mathrm{rel}\ \partial I$（其中 $\partial I = \{0, 1\}$），$H$ 称为**道路同伦 Path Homotopy**。

> **注**：道路同伦是相对同伦 $\simeq \mathrm{rel}\ \partial I$ 的特例，它在形变过程中始终保持两个端点不动。道路同伦是端点相同的道路之间的等价关系（证明同一般同伦的等价关系证明）。

<!-- path_homotopy_class_definition -->
> [!Definition]
> **道路同伦类 Path Homotopy Class**：道路 $\gamma$ 在道路同伦关系下的等价类称为 $\gamma$ 的**道路同伦类 Path Homotopy Class**，记为 $[\gamma]$。

## 道路的连接运算

<!-- path_concatenation_definition -->
> [!Definition]
> **道路连接 Path Concatenation**：设 $\gamma: I \to X$ 是从 $x_0$ 到 $x_1$ 的道路，$\delta: I \to X$ 是从 $x_1$ 到 $x_2$ 的道路。定义 $\gamma$ 与 $\delta$ 的**连接 Concatenation** $\gamma * \delta: I \to X$ 为：
> $$(\gamma * \delta)(s) = \begin{cases} \gamma(2s), & 0 \leq s \leq \dfrac{1}{2}, \\[6pt] \delta(2s - 1), & \dfrac{1}{2} \leq s \leq 1. \end{cases}$$
> 由粘合引理，$\gamma * \delta$ 是从 $x_0$ 到 $x_2$ 的连续道路。

<!-- path_inverse_definition -->
> [!Definition]
> **逆道路 Inverse Path**：道路 $\gamma: I \to X$ 的**逆道路 Inverse Path** $\bar{\gamma}: I \to X$ 定义为 $\bar{\gamma}(s) = \gamma(1 - s)$，即将 $\gamma$ 反向走一遍。$\bar{\gamma}$ 是从 $\gamma(1)$ 到 $\gamma(0)$ 的道路。

## 连接运算与道路同伦的相容性

<!-- concatenation_compatible_with_homotopy -->
> [!Theorem]
> **连接运算关于道路同伦的相容性 Concatenation is Compatible with Path Homotopy**：
> 1. 若 $\gamma_1 \simeq \gamma_2\ \mathrm{rel}\ \partial I$（同为从 $x_0$ 到 $x_1$ 的道路），$\delta_1 \simeq \delta_2\ \mathrm{rel}\ \partial I$（同为从 $x_1$ 到 $x_2$ 的道路），则 $\gamma_1 * \delta_1 \simeq \gamma_2 * \delta_2\ \mathrm{rel}\ \partial I$；
> 2. 连接运算由此诱导同伦类上的运算：$[\gamma] * [\delta] := [\gamma * \delta]$，且这一定义与代表元的选取无关。
>
> **证明思路**：设 $H$ 是 $\gamma_1$ 到 $\gamma_2$ 的道路同伦，$K$ 是 $\delta_1$ 到 $\delta_2$ 的道路同伦，定义：
> $$L(s, t) = \begin{cases} H(2s, t), & 0 \leq s \leq \tfrac{1}{2}, \\ K(2s-1, t), & \tfrac{1}{2} \leq s \leq 1. \end{cases}$$
> 由粘合引理 $L$ 连续，且 $L$ 是 $\gamma_1 * \delta_1$ 到 $\gamma_2 * \delta_2$ 的道路同伦。
