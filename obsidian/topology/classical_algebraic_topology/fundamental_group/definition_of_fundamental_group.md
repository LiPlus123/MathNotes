# 基本群的定义

## 基于一点的回路同伦类

<!-- fundamental_group_set_definition -->
> [!Definition]
> **基本群的底层集合**：设 $X$ 是拓扑空间，$x_0 \in X$。以 $x_0$ 为基点的全体回路在道路同伦下的等价类（同伦类）之集合记为 $\pi_1(X, x_0)$：
> $$\pi_1(X, x_0) = \{ [\gamma] \mid \gamma: I \to X \text{ 连续}, \gamma(0) = \gamma(1) = x_0 \}.$$

## 群运算

<!-- fundamental_group_operation -->
> [!Definition]
> **基本群的乘法 Group Operation of Fundamental Group**：在 $\pi_1(X, x_0)$ 上定义乘法为道路连接诱导的同伦类运算：
> $$[\gamma] \cdot [\delta] := [\gamma * \delta],$$
> 其中 $\gamma, \delta$ 均为以 $x_0$ 为基点的回路，$\gamma * \delta$ 为其连接。由连接运算与道路同伦的相容性，此运算与代表元选取无关。

## 群结构

<!-- fundamental_group_structure -->
> [!Theorem]
> **基本群 Fundamental Group**：赋予上述乘法后，$(\pi_1(X, x_0), \cdot)$ 构成一个群，称为 $X$ 以 $x_0$ 为基点的**基本群 Fundamental Group**。具体地：
> 1. **单位元**：常值回路 $c_{x_0}$ 的同伦类 $[c_{x_0}]$ 是单位元，即对任意以 $x_0$ 为基点的回路 $\gamma$：
>    $$[c_{x_0}] \cdot [\gamma] = [\gamma] = [\gamma] \cdot [c_{x_0}];$$
> 2. **逆元**：$[\gamma]$ 的逆元为逆道路的同伦类 $[\bar{\gamma}]$（其中 $\bar{\gamma}(s) = \gamma(1-s)$）：
>    $$[\gamma] \cdot [\bar{\gamma}] = [c_{x_0}] = [\bar{\gamma}] \cdot [\gamma];$$
> 3. **结合律**：对任意以 $x_0$ 为基点的回路 $\gamma, \delta, \varepsilon$：
>    $$[\gamma] \cdot ([\delta] \cdot [\varepsilon]) = ([\gamma] \cdot [\delta]) \cdot [\varepsilon].$$
>
> **证明思路**：各公理均通过构造显式道路同伦验证，利用重参数化（reparametrization）手法：
>
> (1) **单位元**：定义同伦 $H: I \times I \to X$，将 $c_{x_0} * \gamma$ 重参数化为 $\gamma$：
> $$H(s, t) = \begin{cases} x_0, & 0 \leq s \leq \dfrac{1-t}{2}, \\[4pt] \gamma\!\left(\dfrac{2s - (1-t)}{1+t}\right), & \dfrac{1-t}{2} \leq s \leq 1. \end{cases}$$
> 验证 $H(s, 0) = (c_{x_0} * \gamma)(s)$，$H(s, 1) = \gamma(s)$，端点始终为 $x_0$（或 $x_0 = \gamma(0) = \gamma(1)$）。右单位元类似。
>
> (2) **逆元**：构造 $H: I \times I \to X$，将 $\gamma * \bar{\gamma}$ 收缩到 $c_{x_0}$：
> $$H(s, t) = \begin{cases} \gamma(2s), & 0 \leq s \leq \dfrac{1-t}{2}, \\[4pt] \gamma(1-t), & \dfrac{1-t}{2} \leq s \leq \dfrac{1+t}{2}, \\[4pt] \gamma(2 - 2s), & \dfrac{1+t}{2} \leq s \leq 1. \end{cases}$$
> 验证 $H(s, 0) = (\gamma * \bar{\gamma})(s)$，$H(s, 1) = x_0 = c_{x_0}(s)$，端点始终为 $x_0$。
>
> (3) **结合律**：对 $(\gamma * \delta) * \varepsilon$ 与 $\gamma * (\delta * \varepsilon)$ 构造重参数化同伦：
> $$H(s, t) = \begin{cases} \gamma\!\left(\dfrac{4s}{t+1}\right), & 0 \leq s \leq \dfrac{t+1}{4}, \\[6pt] \delta(4s - t - 1), & \dfrac{t+1}{4} \leq s \leq \dfrac{t+2}{4}, \\[6pt] \varepsilon\!\left(\dfrac{4s - t - 2}{2 - t}\right), & \dfrac{t+2}{4} \leq s \leq 1. \end{cases}$$
> 当 $t=0$ 时为 $(\gamma * \delta) * \varepsilon$，当 $t=1$ 时为 $\gamma * (\delta * \varepsilon)$，端点始终为 $x_0$。

> **注**：$\pi_1(X, x_0)$ 一般不是阿贝尔群；对 $n \geq 2$ 的高阶同伦群 $\pi_n(X, x_0)$ 则均是阿贝尔群。
