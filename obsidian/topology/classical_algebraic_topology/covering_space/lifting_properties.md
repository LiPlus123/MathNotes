# 提升性质

## 道路提升性质

<!-- path_lifting_property -->
> [!Theorem]
> **道路提升性质 Path Lifting Property**：设 $p: \tilde{X} \to X$ 是覆叠映射，$\gamma: I \to X$ 是连续道路，$\tilde{x}_0 \in p^{-1}(\gamma(0))$。则存在唯一的连续映射 $\tilde{\gamma}: I \to \tilde{X}$，满足：
> $$\tilde{\gamma}(0) = \tilde{x}_0 \quad \text{且} \quad p \circ \tilde{\gamma} = \gamma.$$
> 称 $\tilde{\gamma}$ 为 $\gamma$ 在 $\tilde{X}$ 中以 $\tilde{x}_0$ 为起点的**提升 Lift**。
>
> **证明思路**：由 $\{p^{-1}(U) \mid U \text{ 均匀覆盖}\}$ 构成 $\tilde{X}$ 的覆盖，$\gamma^{-1}$ 的对应拉回覆盖紧集 $I$；由 Lebesgue 数引理，取细分 $0 = s_0 < s_1 < \cdots < s_k = 1$，使每段 $\gamma([s_{i-1}, s_i])$ 落在某个均匀覆盖的开集 $U_i$ 中。在该层（含 $\tilde\gamma(s_{i-1})$ 的那个 $\tilde{U}_i^\alpha$）内，$p$ 的限制是同胚，从而在该段内唯一确定 $\tilde\gamma$；逐段拼接得全局提升，唯一性由每段各层选取的唯一性保证。

## 同伦提升性质

<!-- homotopy_lifting_property -->
> [!Theorem]
> **同伦提升性质 Homotopy Lifting Property**：设 $p: \tilde{X} \to X$ 是覆叠映射，$H: I \times I \to X$ 是连续映射，$\tilde{x}_0 \in p^{-1}(H(0, 0))$。则存在唯一的连续映射 $\tilde{H}: I \times I \to \tilde{X}$，满足：
> $$\tilde{H}(0, 0) = \tilde{x}_0 \quad \text{且} \quad p \circ \tilde{H} = H.$$

> **注**：若 $H$ 是道路同伦（即 $H(0, t)$ 和 $H(1, t)$ 均为常值），则其提升 $\tilde{H}$ 也是道路同伦。特别地：
> - 若 $\gamma \simeq \delta\ \mathrm{rel}\ \partial I$ 是 $X$ 中两条以同一点为起点的同伦道路，则其以同一点 $\tilde{x}_0$ 为起点的提升 $\tilde{\gamma}$、$\tilde{\delta}$ 满足 $\tilde{\gamma}(1) = \tilde{\delta}(1)$（终点相同）且 $\tilde{\gamma} \simeq \tilde{\delta}\ \mathrm{rel}\ \partial I$。
>
> **证明思路**：对紧集 $I \times I$ 应用 Lebesgue 数引理，取方格细分使每个小方格的 $H$-像落在某均匀覆盖的开集中；逐格（从左到右、从下到上）唯一确定提升，并由唯一性保证各格界面处相容。

## 一般映射的提升判据

<!-- lifting_criterion -->
> [!Theorem]
> **提升判据 Lifting Criterion**：设 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 是覆叠映射，$f: (Y, y_0) \to (X, x_0)$ 是连续映射，其中 $Y$ 是道路连通且**局部道路连通 Locally Path-Connected** 的拓扑空间。则存在提升 $\tilde{f}: (Y, y_0) \to (\tilde{X}, \tilde{x}_0)$（即满足 $p \circ \tilde{f} = f$ 且 $\tilde{f}(y_0) = \tilde{x}_0$ 的连续映射）当且仅当：
> $$f_*\!\left(\pi_1(Y, y_0)\right) \subseteq p_*\!\left(\pi_1(\tilde{X}, \tilde{x}_0)\right).$$
> 若提升存在，则唯一。
>
> **证明思路**：
>
> **必要性**：若提升 $\tilde{f}$ 存在，则 $f_* = (p \circ \tilde{f})_* = p_* \circ \tilde{f}_*$，故 $f_*(\pi_1(Y)) = p_*(\tilde{f}_*(\pi_1(Y))) \subseteq p_*(\pi_1(\tilde{X}))$。
>
> **充分性**：对每个 $y \in Y$，取 $Y$ 中从 $y_0$ 到 $y$ 的道路 $\beta$，令 $\widetilde{f \circ \beta}$ 为 $f \circ \beta$ 在 $\tilde{X}$ 中以 $\tilde{x}_0$ 为起点的提升，定义 $\tilde{f}(y) = \widetilde{f \circ \beta}(1)$。由子群条件保证不同道路的提升终点相同（即 $\tilde{f}$ 的良定义）；$Y$ 的局部道路连通性保证 $\tilde{f}$ 连续。
