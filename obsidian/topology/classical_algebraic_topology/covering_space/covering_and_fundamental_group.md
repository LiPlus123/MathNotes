# 覆叠与基本群

## 覆叠映射诱导的基本群单射

<!-- covering_induces_injection -->
> [!Theorem]
> **覆叠映射诱导基本群单射 Covering Map Induces Injective Homomorphism**：设 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 是覆叠映射，$\tilde{X}$ 道路连通。则诱导同态：
> $$p_*: \pi_1(\tilde{X}, \tilde{x}_0) \to \pi_1(X, x_0)$$
> 是**单射（Injective）**。
>
> **证明思路**：设 $[\tilde{\gamma}] \in \ker(p_*)$，即 $p \circ \tilde{\gamma} \simeq c_{x_0}\ \mathrm{rel}\ \partial I$ 在 $X$ 中成立。设 $H: I \times I \to X$ 是该道路同伦，由同伦提升性质，$H$ 唯一提升为 $\tilde{H}: I \times I \to \tilde{X}$（以 $\tilde{x}_0$ 为起点），且 $\tilde{H}(\cdot, 0) = \tilde{\gamma}$（由道路提升唯一性）。由 $H(0, t) = H(1, t) = x_0$ 以及提升的唯一性，$\tilde{H}(0, t)$ 和 $\tilde{H}(1, t)$ 均为 $p^{-1}(x_0)$ 中的连续函数，进而为常值：$\tilde{H}(0, t) = \tilde{x}_0$，$\tilde{H}(1, t) = \tilde{\gamma}(1)$。又 $H(\cdot, 1) = c_{x_0}$ 的提升为常值路 $c_{\tilde{x}_0}$，故 $\tilde{\gamma}(1) = \tilde{x}_0$，即 $\tilde{\gamma}$ 是以 $\tilde{x}_0$ 为基点的回路；$\tilde{H}$ 给出 $\tilde{\gamma} \simeq c_{\tilde{x}_0}\ \mathrm{rel}\ \partial I$，即 $[\tilde{\gamma}] = 0$ 在 $\pi_1(\tilde{X}, \tilde{x}_0)$ 中。故 $p_*$ 单射。

## 纤维与陪集集合的双射

<!-- fiber_coset_bijection -->
> [!Theorem]
> **纤维与陪集的双射 Bijection Between Fiber and Cosets**：设 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 是道路连通覆叠空间的覆叠映射，$H = p_*(\pi_1(\tilde{X}, \tilde{x}_0)) \leq \pi_1(X, x_0)$。则存在集合双射：
> $$p^{-1}(x_0) \xleftrightarrow{\ 1\text{-}1\ } H \backslash \pi_1(X, x_0),$$
> 即纤维 $p^{-1}(x_0)$ 与 $H$ 在 $\pi_1(X, x_0)$ 中的**右陪集集合**之间存在自然双射。
>
> **证明思路**：定义 $\pi_1(X, x_0)$ 对纤维 $p^{-1}(x_0)$ 的右作用：对 $[\gamma] \in \pi_1(X, x_0)$ 和 $\tilde{x} \in p^{-1}(x_0)$，令 $\tilde{\gamma}$ 为 $\gamma$ 在 $\tilde{X}$ 中以 $\tilde{x}$ 为起点的提升，定义：
> $$\tilde{x} \cdot [\gamma] = \tilde{\gamma}(1) \in p^{-1}(x_0).$$
> 由同伦提升性质，此作用良定义（与 $\gamma$ 的代表元选取无关）。此右作用的稳定子（$\tilde{x}_0$ 处）恰为 $H = p_*(\pi_1(\tilde{X}, \tilde{x}_0))$（由提升判据），且 $\tilde{X}$ 道路连通时作用传递，故轨道-稳定子定理给出双射 $p^{-1}(x_0) \cong H \backslash \pi_1(X, x_0)$。

## 覆叠的次数

<!-- covering_degree -->
> [!Corollary]
> **覆叠次数公式 Degree of Covering**：在上述条件下，覆叠的次数满足：
> $$\deg(p) = |p^{-1}(x_0)| = [\pi_1(X, x_0) : p_*(\pi_1(\tilde{X}, \tilde{x}_0))],$$
> 即覆叠次数等于 $p_*(\pi_1(\tilde{X}, \tilde{x}_0))$ 在 $\pi_1(X, x_0)$ 中的指数。

<!-- covering_degree_examples -->
> [!Example]+
> **次数计算例子 Examples**：
> 1. $p: \mathbb{R} \to S^1$：$\pi_1(\mathbb{R}) = 0$，$p_*(\pi_1(\mathbb{R})) = 0$，$[\pi_1(S^1): 0] = [\mathbb{Z}: 0] = \infty$，故为无穷次覆叠，与 $|p^{-1}(1)| = \mathbb{Z}$ 一致；
> 2. $p_n: S^1 \to S^1$，$p_n(z) = z^n$：$p_{n*}$ 将 $\pi_1(S^1) \cong \mathbb{Z}$ 映为 $n\mathbb{Z} \leq \mathbb{Z}$，指数为 $n$；
> 3. $p: S^n \to \mathbb{R}P^n$（$n \geq 2$）：$\pi_1(S^n) = 0$，指数 $= [\mathbb{Z}/2\mathbb{Z} : 0] = 2$，为 $2$-层覆叠。
