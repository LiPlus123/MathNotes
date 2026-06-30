# 连续函数

## 点连续与连续函数

<!-- continuous_at_point_definition -->
> [!Definition]
> **点连续 Continuity at a Point**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$，$x_0 \in X$。若对任意 $\varepsilon > 0$，存在 $\delta > 0$，使得对所有满足 $d_X(x, x_0) < \delta$ 的 $x \in X$，均有 $d_Y(f(x), f(x_0)) < \varepsilon$，则称 $f$ 在 $x_0$ 处**连续 Continuous**。

<!-- continuous_function_definition -->
> [!Definition]
> **连续函数 Continuous Function**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$。若 $f$ 在 $X$ 的每一点处都连续，则称 $f$ 是**连续函数 Continuous Function**（或 $f$ 连续）。

<!-- continuous_open_set_characterization -->
> [!Theorem]
> **连续函数的开集刻画 Open Set Characterization of Continuity**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$。则 $f$ 连续当且仅当 $Y$ 中每个开集的原像在 $X$ 中是开集，即对任意开集 $V \subseteq Y$，$f^{-1}(V)$ 是 $X$ 中的开集。
>
> **证明思路**：$(\Rightarrow)$ 设 $V \subseteq Y$ 是开集，对 $x \in f^{-1}(V)$，$f(x) \in V$，存在 $\varepsilon > 0$ 使 $B_Y(f(x), \varepsilon) \subseteq V$；由 $f$ 在 $x$ 处连续，存在 $\delta > 0$ 使 $f(B_X(x,\delta)) \subseteq B_Y(f(x),\varepsilon) \subseteq V$，故 $B_X(x, \delta) \subseteq f^{-1}(V)$。$(\Leftarrow)$ 对 $\varepsilon > 0$，$B_Y(f(x_0), \varepsilon)$ 是开集，其原像是含 $x_0$ 的开集，从中取开球即得 $\delta$。

<!-- continuous_sequence_characterization -->
> [!Proposition]
> **连续函数的序列刻画 Sequential Characterization of Continuity**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$，$x_0 \in X$。则 $f$ 在 $x_0$ 处连续当且仅当：对任意满足 $x_n \to x_0$ 的序列 $(x_n)_{n \geq 1}$，均有 $f(x_n) \to f(x_0)$。
>
> **证明思路**：$(\Rightarrow)$ 由连续定义直接得到。$(\Leftarrow)$ 反证：若 $f$ 在 $x_0$ 不连续，存在 $\varepsilon > 0$，对每个 $n$ 存在 $x_n$ 满足 $d_X(x_n, x_0) < \frac{1}{n}$ 但 $d_Y(f(x_n), f(x_0)) \geq \varepsilon$，矛盾。

## 一致连续函数

<!-- uniformly_continuous_definition -->
> [!Definition]
> **一致连续函数 Uniformly Continuous Function**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$。若对任意 $\varepsilon > 0$，存在 $\delta > 0$，使得对所有满足 $d_X(x, y) < \delta$ 的 $x, y \in X$，均有 $d_Y(f(x), f(y)) < \varepsilon$，则称 $f$ 是**一致连续的 Uniformly Continuous**。

> **注**：一致连续蕴含连续，但连续不一定一致连续。一致连续中 $\delta$ 仅依赖于 $\varepsilon$，与点的选取无关；而点连续中 $\delta$ 可以同时依赖于 $\varepsilon$ 和基点 $x_0$。

## Lipschitz 连续函数

<!-- lipschitz_continuous_definition -->
> [!Definition]
> **Lipschitz 连续函数 Lipschitz Continuous Function**：设 $(X, d_X)$ 和 $(Y, d_Y)$ 是度量空间，$f: X \to Y$。若存在常数 $L > 0$，使得对所有 $x, y \in X$ 均有
> $$d_Y(f(x), f(y)) \leq L \cdot d_X(x, y)$$
> 则称 $f$ 是 **Lipschitz 连续的 Lipschitz Continuous**，常数 $L$ 称为 $f$ 的 **Lipschitz 常数 Lipschitz Constant**。

> **注**：Lipschitz 连续 $\Rightarrow$ 一致连续 $\Rightarrow$ 连续，各蕴含关系均不可逆。例如 $f(x) = \sqrt{x}$ 在 $[0,1]$ 上一致连续但非 Lipschitz 连续；$f(x) = x^2$ 在 $\mathbb{R}$ 上连续但非一致连续。
