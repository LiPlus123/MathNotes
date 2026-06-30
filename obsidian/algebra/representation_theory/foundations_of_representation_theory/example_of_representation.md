# 群表示的例子 Examples of Group Representations

<!-- trivial_representation -->
> [!Definition]
> **平凡表示 Trivial Representation**：设 $G$ 是一个群，$V$ 是 $F$ 上的任意非零有限维线性空间。定义
> $$\rho_{\mathrm{triv}}: G \to GL(V), \quad \rho_{\mathrm{triv}}(g) = \mathrm{Id}_V \quad \forall\, g \in G.$$
> 称此为 $G$ 的**平凡表示**（或**单位表示**）。通常取 $V = F$（即一维），此时 $\rho_{\mathrm{triv}}(g) = 1$ 对所有 $g \in G$。

<!-- sign_representation -->
> [!Definition]
> **符号表示 Sign Representation**：设 $n \geq 2$，$S_n$ 是 $n$ 元对称群。定义一维表示
> $$\rho_{\mathrm{sgn}}: S_n \to GL(F) \cong F^\times, \quad \rho_{\mathrm{sgn}}(\sigma) = \mathrm{sgn}(\sigma),$$
> 其中 $\mathrm{sgn}(\sigma) \in \{1, -1\}$ 是置换 $\sigma$ 的符号（当 $\mathrm{char}(F) \neq 2$ 时有意义）。称此为 $S_n$ 的**符号表示**（或**交替表示**）。

<!-- permutation_representation -->
> [!Definition]
> **置换表示 Permutation Representation**：设 $G$ 是一个群，$X = \{x_1, x_2, \ldots, x_m\}$ 是一个有限集，$G$ 左作用于 $X$（即有群同态 $G \to \mathrm{Sym}(X)$）。令 $V = F^X$ 为以 $X$ 为基的 $F$-线性空间，定义
> $$\rho_X: G \to GL(V), \quad \rho_X(g)(e_{x_i}) = e_{g \cdot x_i},$$
> 并线性延拓。称此为 $G$ 关于 $G$-集 $X$ 的**置换表示**，维数为 $|X|$。

<!-- regular_representation -->
> [!Definition]
> **正则表示 Regular Representation**：将 $G$ 本身视为 $G$-集（$G$ 通过左乘作用于自身，即 $g \cdot h = gh$），令 $X = G$。由置换表示构造得到的表示
> $$\rho_{\mathrm{reg}}: G \to GL(FG), \quad \rho_{\mathrm{reg}}(g)(e_h) = e_{gh},$$
> 称为 $G$ 的**（左）正则表示**，表示空间 $FG = \bigoplus_{g \in G} F \cdot e_g$ 称为**群代数**，维数为 $|G|$。

<!-- standard_representation -->
> [!Definition]
> **标准表示 Standard Representation**：设 $n \geq 2$，$S_n$ 通过置换表示作用在 $V = F^n$（以 $\{e_1, \ldots, e_n\}$ 为标准基）上，即 $\rho(\sigma)(e_i) = e_{\sigma(i)}$。令 $W = \{(a_1, \ldots, a_n) \in F^n \mid a_1 + \cdots + a_n = 0\}$，则 $W$ 是 $S_n$-不变子空间，$\dim W = n-1$。限制在 $W$ 上的子表示称为 $S_n$ 的**标准表示**。
