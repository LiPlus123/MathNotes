# 特征标的定义 Definition of Character

<!-- character_definition -->
> [!Definition]
> **特征标 Character**：设 $G$ 是有限群，$F$ 是域（通常取 $F = \mathbb{C}$），$\rho: G \to GL(V)$ 是 $G$ 的一个有限维 $F$-表示。$\rho$ 的**特征标**是函数
> $$\chi_\rho: G \to F, \quad \chi_\rho(g) = \mathrm{tr}(\rho(g)),$$
> 即将每个群元素 $g$ 映射到 $\rho(g)$ 的迹。特征标 $\chi_\rho$ 的**维数**（或**次数**）定义为
> $$\chi_\rho(e) = \mathrm{tr}(\mathrm{Id}_V) = \dim V = \deg \rho.$$

> **注**：特征标仅依赖于表示 $\rho$，不依赖于表示空间 $V$ 的基的选取，因为相似矩阵的迹相等。当 $\deg \rho = 1$ 时，$\chi_\rho(g) = \rho(g)$（迹等于该标量本身），称为**线性特征标**。

<!-- character_as_class_function -->
> [!Proposition]
> **特征标是类函数 Character is a Class Function**：设 $\rho: G \to GL(V)$ 是 $G$ 的表示，则其特征标 $\chi_\rho$ 是**类函数**，即对所有 $g, h \in G$ 成立
> $$\chi_\rho(hgh^{-1}) = \chi_\rho(g).$$
> 特别地，$\chi_\rho$ 在共轭类上取常值。

> **证明思路**：由迹的轮换不变性 $\mathrm{tr}(ABC) = \mathrm{tr}(CAB)$ 及 $\rho$ 是群同态，
> $$\chi_\rho(hgh^{-1}) = \mathrm{tr}(\rho(h)\rho(g)\rho(h)^{-1}) = \mathrm{tr}(\rho(g)) = \chi_\rho(g).$$

<!-- trivial_character -->
> [!Example]+
> **平凡特征标 Trivial Character**：$G$ 的平凡表示 $\rho_{\mathrm{triv}}: G \to GL(V)$，$\rho_{\mathrm{triv}}(g) = \mathrm{Id}_V$，其特征标为常值函数
> $$\chi_{\mathrm{triv}}(g) = \dim V \quad \text{对所有 } g \in G.$$
> 特别地，一维平凡表示的特征标满足 $\chi_{\mathrm{triv}}(g) = 1$ 对所有 $g \in G$。

<!-- sign_character_example -->
> [!Example]+
> **符号特征标 Sign Character**：对称群 $S_n$ 的符号表示 $\rho_{\mathrm{sgn}}: S_n \to \mathbb{C}^\times$，$\rho_{\mathrm{sgn}}(\sigma) = \mathrm{sgn}(\sigma)$，其特征标（即自身）为
> $$\chi_{\mathrm{sgn}}(\sigma) = \mathrm{sgn}(\sigma) = \begin{cases} 1 & \text{若 } \sigma \text{ 为偶置换}, \\ -1 & \text{若 } \sigma \text{ 为奇置换}. \end{cases}$$
