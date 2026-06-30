# 覆叠映射

## 覆叠映射的定义

<!-- covering_map_definition -->
> [!Definition]
> **覆叠映射 Covering Map**：设 $X$ 是拓扑空间，$p: \tilde{X} \to X$ 是连续满射。若对每个点 $x \in X$，存在 $x$ 的一个开邻域 $U$，使得 $p^{-1}(U)$ 是 $\tilde{X}$ 中一族两两不相交的开子集之无交并：
> $$p^{-1}(U) = \bigsqcup_{\alpha} \tilde{U}_\alpha,$$
> 且 $p$ 限制到每个 $\tilde{U}_\alpha$ 上都是到 $U$ 的同胚，则称 $p$ 是**覆叠映射 Covering Map**，$\tilde{X}$ 是 $X$ 的**覆叠空间 Covering Space**。

<!-- evenly_covered_definition -->
> [!Definition]
> **均匀覆盖的开集 Evenly Covered Open Set**：满足上述条件的开邻域 $U$ 称为被 $p$ **均匀覆盖 Evenly Covered** 的开集；各 $\tilde{U}_\alpha$ 称为 $U$ 在 $\tilde{X}$ 中的**层（Sheet）**。

<!-- fiber_definition -->
> [!Definition]
> **纤维 Fiber**：设 $p: \tilde{X} \to X$ 是覆叠映射，$x \in X$。原像集 $p^{-1}(x)$ 称为覆叠映射在 $x$ 处的**纤维 Fiber**。对均匀覆盖的开集 $U \ni x$，$p^{-1}(x)$ 与层的指标集 $\{\alpha\}$ 之间有自然双射（$\tilde{U}_\alpha$ 中恰好有 $p^{-1}(x)$ 的一个点）。

> **注**：若 $\tilde{X}$ 是道路连通的，则所有纤维的基数相同（因为基数是局部常值函数），称此公共基数为覆叠的**次数（Degree）**，记为 $\deg(p)$。

## 覆叠空间的例子

<!-- covering_example_real_circle -->
> [!Example]+
> **$\mathbb{R} \to S^1$ 的覆叠 The Covering $\mathbb{R} \to S^1$**：$p: \mathbb{R} \to S^1$，$p(t) = e^{2\pi it}$，是无限次覆叠（$\deg(p) = \infty$，即每个纤维为 $\mathbb{Z}$）。对每个 $z \in S^1$，取 $z$ 的一个不包含对径点的弧形开邻域 $U$，则 $p^{-1}(U)$ 是 $\mathbb{R}$ 中无穷多个两两不相交的区间（各平移 $1$ 个单位），每个区间都通过 $p$ 同胚映射到 $U$。

<!-- covering_example_sphere_projective -->
> [!Example]+
> **$S^n \to \mathbb{R}P^n$ 的覆叠 The Covering $S^n \to \mathbb{R}P^n$**：对映射 $p: S^n \to \mathbb{R}P^n$，$p(x) = [x]$（将对径点等同），每个 $[x] \in \mathbb{R}P^n$ 的纤维 $p^{-1}([x]) = \{x, -x\}$ 只有两个元素，故这是一个 $2$-层覆叠（$\deg(p) = 2$）。取 $[x]$ 处的一个半球形开邻域 $U$（不包含任何对径对），则 $p^{-1}(U)$ 恰为球面上关于原点对称的两个开半球，各与 $U$ 同胚。

<!-- covering_example_double -->
> [!Example]+
> **圆周到圆周的 $n$-层覆叠 $n$-Sheeted Covering of $S^1$**：映射 $p_n: S^1 \to S^1$，$p_n(z) = z^n$（其中 $z \in \mathbb{C}$，$|z|=1$），是 $n$-层覆叠（$\deg(p_n) = n$）。其纤维 $p_n^{-1}(1) = \{1, e^{2\pi i/n}, \ldots, e^{2\pi i(n-1)/n}\}$ 为 $n$ 次单位根。

<!-- covering_example_product -->
> [!Example]+
> **乘积覆叠**：若 $p: \tilde{X} \to X$ 和 $q: \tilde{Y} \to Y$ 是覆叠映射，则 $p \times q: \tilde{X} \times \tilde{Y} \to X \times Y$ 也是覆叠映射。特别地，$\mathbb{R}^n \to T^n = (S^1)^n$ 是万有覆叠。
