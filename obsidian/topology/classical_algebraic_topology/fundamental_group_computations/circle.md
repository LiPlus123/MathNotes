# 圆周的基本群

## 标准覆叠

<!-- standard_covering_of_circle -->
> [!Definition]
> **圆周的标准覆叠 Standard Covering of $S^1$**：定义映射 $p: \mathbb{R} \to S^1$ 为：
> $$p(t) = e^{2\pi i t} = (\cos 2\pi t,\, \sin 2\pi t),$$
> 则 $p$ 是连续满射。对每个点 $z \in S^1$，其原像（**纤维 Fiber**）$p^{-1}(z) = \{t + n \mid n \in \mathbb{Z}\}$ 是一个平移整数的离散集，其中 $t$ 是 $z$ 的任一原像。$p$ 是 $\mathbb{R}$ 到 $S^1$ 的覆叠映射，$\mathbb{R}$ 是 $S^1$ 的万有覆叠空间。

## 提升引理

<!-- path_lifting_property_circle -->
> [!Theorem]
> **道路提升性质 Path Lifting Property**：设 $p: \mathbb{R} \to S^1$ 是标准覆叠，$\gamma: I \to S^1$ 是连续道路，$\tilde{t}_0 \in \mathbb{R}$ 满足 $p(\tilde{t}_0) = \gamma(0)$。则存在唯一的连续映射 $\tilde{\gamma}: I \to \mathbb{R}$，使得：
> $$\tilde{\gamma}(0) = \tilde{t}_0 \quad \text{且} \quad p \circ \tilde{\gamma} = \gamma.$$
> 称 $\tilde{\gamma}$ 为 $\gamma$ 在 $\mathbb{R}$ 中以 $\tilde{t}_0$ 为起点的**提升 Lift**。
>
> **证明思路**：将 $I$ 用 Lebesgue 数引理细分为小段 $[s_i, s_{i+1}]$，使每段 $\gamma([s_i, s_{i+1}])$ 落在 $S^1$ 的某个均匀覆盖的开集中。在每个小段上，$p$ 限制到某个开区间是同胚，从而唯一确定提升；逐段拼接即得全局唯一提升。

<!-- homotopy_lifting_property_circle -->
> [!Theorem]
> **同伦提升性质 Homotopy Lifting Property**：设 $p: \mathbb{R} \to S^1$ 是标准覆叠，$H: I \times I \to S^1$ 是连续映射，$\tilde{h}_0 \in \mathbb{R}$ 满足 $p(\tilde{h}_0) = H(0, 0)$。则存在唯一的连续映射 $\tilde{H}: I \times I \to \mathbb{R}$，使得：
> $$\tilde{H}(0, 0) = \tilde{h}_0 \quad \text{且} \quad p \circ \tilde{H} = H.$$
>
> **证明思路**：将 $I \times I$ 细分为小方格，使每个方格的像落在 $S^1$ 的均匀覆盖开集中，逐格唯一确定提升并拼接，利用两段间界面处的唯一性保证相容。

## 卷绕数与基本群同构

<!-- winding_number_definition -->
> [!Definition]
> **卷绕数 Winding Number**：设 $\gamma: I \to S^1$ 是以 $1 \in S^1$ 为基点的回路。令 $\tilde{\gamma}: I \to \mathbb{R}$ 是 $\gamma$ 以 $0$ 为起点的唯一提升。由 $p(\tilde{\gamma}(1)) = \gamma(1) = 1$，知 $\tilde{\gamma}(1) \in p^{-1}(1) = \mathbb{Z}$。称整数 $\tilde{\gamma}(1)$ 为 $\gamma$ 的**卷绕数 Winding Number**，记为 $n(\gamma)$。

> **注**：卷绕数 $n(\gamma)$ 计量了回路 $\gamma$ 绕 $S^1$ 正方向转了多少圈（带符号）。

<!-- pi1_circle_isomorphism -->
> [!Theorem]
> **圆周的基本群 Fundamental Group of $S^1$**：定义映射 $\Phi: \pi_1(S^1, 1) \to \mathbb{Z}$，$\Phi([\gamma]) = n(\gamma)$，则 $\Phi$ 是群同构：
> $$\pi_1(S^1, 1) \cong \mathbb{Z}.$$
>
> **证明思路**：
>
> **良定义**：若 $\gamma \simeq \delta\ \mathrm{rel}\ \partial I$，设 $H$ 为其间的道路同伦，$\tilde{H}$ 为 $H$ 以 $0$ 为 $H(0,0)$ 处起点的提升。由 $H(\cdot, 0) = \gamma$、$H(\cdot, 1) = \delta$，提升的唯一性给出 $\tilde{H}(\cdot, 0) = \tilde{\gamma}$、$\tilde{H}(\cdot, 1) = \tilde{\delta}$。又 $H(0, t) = 1 = p(0)$ 对所有 $t$ 成立，唯一性迫使 $\tilde{H}(0, t) = 0$；同理 $\tilde{H}(1, t)$ 是整数值连续函数，故为常数，即 $\tilde{\gamma}(1) = \tilde{H}(1, 0) = \tilde{H}(1, 1) = \tilde{\delta}(1)$，$n(\gamma) = n(\delta)$。
>
> **同态**：设 $\tilde{\gamma}(1) = m$，$\tilde{\delta}$ 是 $\delta$ 以 $m$ 为起点的提升，则 $\gamma * \delta$ 的以 $0$ 为起点的提升为 $\tilde{\gamma} * \tilde{\delta}$（在 $1/2$ 处拼接），终点为 $\tilde{\delta}(1) = m + n(\delta)$。故 $n(\gamma * \delta) = n(\gamma) + n(\delta)$，$\Phi$ 是同态。
>
> **单射**：若 $n(\gamma) = 0$，则 $\tilde{\gamma}$ 是 $\mathbb{R}$ 中以 $0$ 为起止点的道路，由 $\mathbb{R}$ 可缩知 $\tilde{\gamma} \simeq c_0\ \mathrm{rel}\ \partial I$，投影后得 $\gamma \simeq c_1\ \mathrm{rel}\ \partial I$。
>
> **满射**：对 $n \in \mathbb{Z}$，令 $\gamma_n(s) = e^{2\pi i n s}$，则 $\tilde{\gamma}_n(s) = ns$，$n(\gamma_n) = n$。

<!-- winding_number_example -->
> [!Example]+
> **标准生成元 Standard Generator**：$\pi_1(S^1, 1)$ 由 $[\gamma_1]$ 生成，其中 $\gamma_1(s) = e^{2\pi i s}$（正向绕 $S^1$ 一圈）对应 $\mathbb{Z}$ 中的 $1$；$[\gamma_{-1}]$（$\gamma_{-1}(s) = e^{-2\pi i s}$，逆向一圈）对应 $-1$，是 $[\gamma_1]$ 的逆元。
