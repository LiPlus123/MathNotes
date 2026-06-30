# 万有覆叠空间

## 定义

<!-- universal_covering_definition -->
> [!Definition]
> **万有覆叠空间 Universal Covering Space**：设 $p: \tilde{X} \to X$ 是覆叠映射，$\tilde{X}$ 道路连通。若 $\tilde{X}$ 是单连通的（即 $\pi_1(\tilde{X}) = 0$），则称 $\tilde{X}$（或 $p: \tilde{X} \to X$）是 $X$ 的**万有覆叠空间 Universal Covering Space**。

> **注**：万有覆叠之所以"万有"，是因为它覆叠其他所有覆叠：对 $X$ 的任意覆叠 $q: Y \to X$（$Y$ 道路连通），存在覆叠映射 $h: \tilde{X} \to Y$ 使得 $q \circ h = p$（由提升判据，$p_*(\pi_1(\tilde{X})) = 0 \subseteq q_*(\pi_1(Y))$ 自然成立）。此对应 $\tilde{X}$ 在覆叠空间范畴中的"初始对象"地位。

## 存在性条件

<!-- semilocally_simply_connected -->
> [!Definition]
> **半局部单连通 Semi-Locally Simply Connected**：拓扑空间 $X$ 称为**半局部单连通**的，若对每个 $x \in X$，存在 $x$ 的开邻域 $U$，使得含入诱导的同态 $i_*: \pi_1(U, x) \to \pi_1(X, x)$ 是零同态（即 $U$ 中的每个回路在 $X$ 中都同伦于常值回路）。

<!-- universal_covering_existence -->
> [!Theorem]
> **万有覆叠空间的存在性 Existence of Universal Covering Space**：设 $X$ 是道路连通且局部道路连通的拓扑空间。则 $X$ 有万有覆叠空间当且仅当 $X$ 是**半局部单连通**的。
>
> **证明思路（构造）**：固定基点 $x_0 \in X$，令：
> $$\tilde{X} = \{(x, [\gamma]) \mid x \in X,\ [\gamma] \in \text{从}\ x_0\ \text{到}\ x\ \text{的道路的同伦类}\}.$$
> 定义 $p: \tilde{X} \to X$ 为 $p(x, [\gamma]) = x$。在 $\tilde{X}$ 上定义拓扑（由均匀覆盖的基给出），使 $p$ 成为覆叠映射；由构造，以 $(x_0, [c_{x_0}])$ 为基点的 $\tilde{X}$ 的基本群平凡（任何回路均由 $X$ 中从 $x_0$ 出发的道路同伦类标记，回路对应的提升路径的终点回到出发点当且仅当对应同伦类平凡）。半局部单连通性保证上述拓扑的 Hausdorff 性和局部同胚性。

## 唯一性

<!-- universal_covering_uniqueness -->
> [!Theorem]
> **万有覆叠空间的唯一性 Uniqueness of Universal Covering Space**：设 $p: (\tilde{X}, \tilde{x}_0) \to (X, x_0)$ 和 $q: (\tilde{Y}, \tilde{y}_0) \to (X, x_0)$ 均是 $X$ 的万有覆叠空间（$\tilde{X}$、$\tilde{Y}$ 均单连通），则存在唯一的同胚 $h: (\tilde{X}, \tilde{x}_0) \to (\tilde{Y}, \tilde{y}_0)$ 使得 $q \circ h = p$；特别地，$X$ 的万有覆叠空间在覆叠同构意义下是唯一的。
>
> **证明思路**：由提升判据，$p_*(\pi_1(\tilde{X})) = 0 \subseteq q_*(\pi_1(\tilde{Y}))$，故 $p: \tilde{X} \to X$ 提升为 $h: \tilde{X} \to \tilde{Y}$（$q \circ h = p$，$h(\tilde{x}_0) = \tilde{y}_0$）；同理得 $k: \tilde{Y} \to \tilde{X}$（$p \circ k = q$）。由唯一性，$k \circ h = \mathrm{id}_{\tilde{X}}$，$h \circ k = \mathrm{id}_{\tilde{Y}}$，故 $h$ 是同胚。

<!-- universal_covering_examples -->
> [!Example]+
> **万有覆叠空间的例子 Examples**：
> 1. $\mathbb{R} \to S^1$：$\mathbb{R}$ 是 $S^1$ 的万有覆叠（$\mathbb{R}$ 可缩，单连通）；
> 2. $S^n \to \mathbb{R}P^n$（$n \geq 2$）：$S^n$ 是 $\mathbb{R}P^n$ 的万有覆叠；
> 3. $\mathbb{R}^n \to T^n$：$\mathbb{R}^n$ 是 $n$ 维环面的万有覆叠；
> 4. 有限图（边和顶点构成的 CW 复形）的万有覆叠是树（无圈连通图），其基本群为自由群。
