# 覆叠的 Galois 对应

## 覆叠空间的等价

<!-- covering_isomorphism_definition -->
> [!Definition]
> **覆叠同构 Isomorphism of Covering Spaces**：设 $p: \tilde{X} \to X$ 和 $q: \tilde{Y} \to X$ 是 $X$ 的两个覆叠空间（以 $x_0 \in X$ 为公共底空间基点）。若存在同胚 $h: \tilde{X} \to \tilde{Y}$ 使得 $q \circ h = p$，则称 $\tilde{X}$ 与 $\tilde{Y}$ 是**等价（同构）的覆叠空间 Isomorphic Covering Spaces**。

## Galois 对应

<!-- galois_correspondence_of_coverings -->
> [!Theorem]
> **覆叠的 Galois 对应 Galois Correspondence of Coverings**：设 $X$ 是道路连通、局部道路连通且半局部单连通的拓扑空间，$x_0 \in X$。则存在如下双射：
> $$\left\{ \begin{array}{c} X \text{ 的道路连通覆叠空间} \\ \text{的等价类（以 $x_0$ 为基点）} \end{array} \right\} \xleftrightarrow{\ 1\text{-}1\ } \left\{ \pi_1(X, x_0) \text{ 的子群} \right\},$$
> 具体对应为：
> - 覆叠 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 对应子群 $H = p_*(\pi_1(\tilde{X}, \tilde{x}_0)) \leq \pi_1(X, x_0)$；
> - 子群 $H \leq \pi_1(X, x_0)$ 对应覆叠空间 $\tilde{X}_H = \tilde{X} / H$（万有覆叠 $\tilde{X}$ 被 $H$（经由甲板变换群的作用）作用后的商空间）。
>
> 在此对应下：
> - 万有覆叠对应平凡子群 $\{e\}$；
> - 平凡覆叠（恒等映射 $X \to X$）对应全群 $\pi_1(X, x_0)$；
> - 覆叠包含关系与子群包含关系相反（子群越大，对应覆叠层数越少）；
> - 覆叠次数 $= [\pi_1(X, x_0) : H]$。
>
> **证明思路**：（正方向）$p_*$ 单射给出良定义的子群 $H$；（逆方向）由万有覆叠 $\tilde{X}$ 及 $H$ 对 $\tilde{X}$ 的甲板变换作用，商 $\tilde{X}/H$ 覆叠 $X$，对应子群为 $H$；互为逆对应由提升判据的唯一性保证。

> **注**：此对应是更广泛意义上 Galois 理论的拓扑版本：如同有限 Galois 扩张的子扩张对应 Galois 群的子群，覆叠空间对应基本群的子群，正则覆叠对应正规子群（类比 Galois 扩张对应正规子群）。

## 正则覆叠

<!-- regular_covering_definition -->
> [!Definition]
> **正则覆叠 Regular Covering**：设 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 是道路连通覆叠映射，$H = p_*(\pi_1(\tilde{X}, \tilde{x}_0))$。若 $H$ 是 $\pi_1(X, x_0)$ 的**正规子群**，则称此覆叠为**正则（正规）覆叠 Regular (Normal) Covering**。

<!-- regular_covering_characterization -->
> [!Theorem]
> **正则覆叠的等价刻画 Characterization of Regular Coverings**：设 $p: \tilde{X} \to X$ 是道路连通覆叠，则下列条件等价：
> 1. $p$ 是正则覆叠（$p_*(\pi_1(\tilde{X})) \trianglelefteq \pi_1(X)$）；
> 2. 对每个 $x \in X$ 和每两个提升 $\tilde{x}, \tilde{x}' \in p^{-1}(x)$，存在甲板变换 $h \in \mathrm{Deck}(\tilde{X}/X)$ 使得 $h(\tilde{x}) = \tilde{x}'$（即甲板变换群在纤维上的作用是传递的）；
> 3. 对 $X$ 中每个以 $x_0$ 为基点的回路 $\gamma$，$\gamma$ 的每个提升（从 $p^{-1}(x_0)$ 的任意点出发）要么都是回路，要么都不是回路。
>
> **证明思路**：(1)⟺(3) 由正规子群的等价定义：$H \trianglelefteq \pi_1(X)$ 当且仅当对所有 $[\gamma] \in \pi_1(X)$，$[\gamma] H [\gamma]^{-1} = H$，即 $[\gamma]$ 是否属于 $H$ 不依赖于共轭，等价于 $\gamma$ 的任意提升同为回路或同非回路。(2)⟺(1) 由纤维与陪集的双射和甲板变换的作用分析。

<!-- regular_covering_examples -->
> [!Example]+
> **正则覆叠的例子 Examples**：
> 1. $p: \mathbb{R} \to S^1$：$p_*(\pi_1(\mathbb{R})) = 0 \trianglelefteq \mathbb{Z} = \pi_1(S^1)$，正则覆叠（万有覆叠总是正则的）；
> 2. $p_n: S^1 \to S^1$，$p_n(z) = z^n$：$p_{n*}(\pi_1(S^1)) = n\mathbb{Z} \trianglelefteq \mathbb{Z}$（因 $\mathbb{Z}$ 是阿贝尔群，每个子群均正规），正则覆叠；
> 3. $S^n \to \mathbb{R}P^n$（$n \geq 2$）：正则覆叠（$p_*(\pi_1(S^n)) = 0 \trianglelefteq \mathbb{Z}/2\mathbb{Z}$）。
