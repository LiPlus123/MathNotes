# 甲板变换群

## 甲板变换的定义

<!-- deck_transformation_definition -->
> [!Definition]
> **甲板变换 Deck Transformation**：设 $p: \tilde{X} \to X$ 是覆叠映射。**甲板变换（覆叠自同构）Deck Transformation** 是同胚 $h: \tilde{X} \to \tilde{X}$，满足 $p \circ h = p$，即下图交换：
> $$\tilde{X} \xrightarrow{h} \tilde{X}, \quad p \circ h = p.$$
> $\tilde{X}$ 的全体甲板变换在复合下构成一个群，称为**甲板变换群 Deck Transformation Group**，记为 $\mathrm{Deck}(\tilde{X}/X)$（或 $\mathrm{Aut}(p)$）。

> **注**：甲板变换置换每个纤维 $p^{-1}(x)$（$x \in X$）内的点。由提升的唯一性，一个甲板变换完全由它将某个点 $\tilde{x}_0 \in p^{-1}(x_0)$ 映到纤维中哪个点来决定——即甲板变换"无不动点"（若 $h(\tilde{x}_0) = \tilde{x}_0$ 则 $h = \mathrm{id}_{\tilde{X}}$，因为 $h$ 与 $\mathrm{id}$ 均是以 $\tilde{x}_0$ 为起点同值的提升）。

## 甲板变换群与 $\pi_1$ 的关系

<!-- deck_group_general -->
> [!Theorem]
> **甲板变换群的一般刻画 Deck Transformation Group in General**：设 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 是道路连通覆叠，$H = p_*(\pi_1(\tilde{X}, \tilde{x}_0)) \leq \pi_1(X, x_0)$，$N(H)$ 是 $H$ 在 $\pi_1(X, x_0)$ 中的正规化子（即 $N(H) = \{[\gamma] \in \pi_1(X, x_0) \mid [\gamma] H [\gamma]^{-1} = H\}$）。则：
> $$\mathrm{Deck}(\tilde{X}/X) \cong N(H) / H.$$
>
> **证明思路**：任意甲板变换 $h$ 将基点 $\tilde{x}_0$ 映到纤维 $p^{-1}(x_0)$ 中某点 $\tilde{x}'$；由纤维-陪集双射，$\tilde{x}'$ 对应某个右陪集 $H[\gamma]$（即 $\tilde{x}' = \tilde{x}_0 \cdot [\gamma]$）。此对应给出同态 $\mathrm{Deck}(\tilde{X}/X) \to N(H)/H$，可验证它是满射且核平凡，故为同构（$[\gamma] \in N(H)$ 的条件恰好保证对应提升的像 $\tilde{x}'$ 上的甲板变换存在）。

<!-- deck_group_universal_cover -->
> [!Theorem]
> **万有覆叠的甲板变换群 Deck Group of Universal Covering**：设 $p: \tilde{X} \to X$ 是万有覆叠（$\tilde{X}$ 单连通），则：
> $$\mathrm{Deck}(\tilde{X}/X) \cong \pi_1(X, x_0).$$
>
> **证明思路**：$H = p_*(\pi_1(\tilde{X})) = 0$，$N(H) = N(0) = \pi_1(X, x_0)$，故 $\mathrm{Deck}(\tilde{X}/X) \cong \pi_1(X, x_0) / 0 \cong \pi_1(X, x_0)$。

<!-- deck_group_regular_covering -->
> [!Theorem]
> **正则覆叠的甲板变换群 Deck Group of Regular Covering**：设 $p: \tilde{X} \to X$ 是正则覆叠，$H = p_*(\pi_1(\tilde{X}, \tilde{x}_0)) \trianglelefteq \pi_1(X, x_0)$，则：
> $$\mathrm{Deck}(\tilde{X}/X) \cong \pi_1(X, x_0) / H.$$
> 特别地，$|\mathrm{Deck}(\tilde{X}/X)| = [\pi_1(X, x_0) : H] = \deg(p)$（甲板变换群与覆叠次数相等）。
>
> **证明思路**：$H \trianglelefteq \pi_1(X, x_0)$ 时，$N(H) = \pi_1(X, x_0)$，代入一般公式即得。

## 例子

<!-- deck_group_examples -->
> [!Example]+
> **甲板变换群的计算 Examples of Deck Transformation Groups**：
> 1. $p: \mathbb{R} \to S^1$（万有覆叠）：$\mathrm{Deck}(\mathbb{R}/S^1) \cong \pi_1(S^1) \cong \mathbb{Z}$。具体地，整数 $n$ 对应平移 $t \mapsto t + n$；
> 2. $p_m: S^1 \to S^1$，$z \mapsto z^m$（正则覆叠，$H = m\mathbb{Z}$）：$\mathrm{Deck}(S^1/(S^1, p_m)) \cong \mathbb{Z}/m\mathbb{Z}$，由旋转 $z \mapsto e^{2\pi i k/m} z$（$k = 0, 1, \ldots, m-1$）生成；
> 3. $p: S^n \to \mathbb{R}P^n$（$n \geq 2$，正则覆叠）：$\mathrm{Deck}(S^n/\mathbb{R}P^n) \cong \mathbb{Z}/2\mathbb{Z}$，由对径映射 $x \mapsto -x$ 生成；
> 4. $p: \mathbb{R}^2 \to T^2$（万有覆叠，$p(s,t) = (e^{2\pi is}, e^{2\pi it})$）：$\mathrm{Deck}(\mathbb{R}^2/T^2) \cong \mathbb{Z}^2$，由平移 $(s, t) \mapsto (s + m, t + n)$（$m, n \in \mathbb{Z}$）构成。
