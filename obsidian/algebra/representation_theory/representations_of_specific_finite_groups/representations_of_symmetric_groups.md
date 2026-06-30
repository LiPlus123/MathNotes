# 有限对称群的表示 Representations of Symmetric Groups

<!-- symmetric_group_basic_representations -->
> [!Definition]
> **对称群的基本表示 Basic Representations of Symmetric Groups**：$n$ 元对称群 $S_n$ 有如下几类基本表示：
> 1. **平凡表示** $\rho_{\mathrm{triv}}: S_n \to \mathbb{C}^\times$，$\rho_{\mathrm{triv}}(\sigma) = 1$，是一维不可约表示。
> 2. **符号表示** $\rho_{\mathrm{sgn}}: S_n \to \mathbb{C}^\times$，$\rho_{\mathrm{sgn}}(\sigma) = \mathrm{sgn}(\sigma)$，是一维不可约表示（当 $n \geq 2$ 时与平凡表示不同构）。
> 3. **置换表示** $\rho_X: S_n \to GL(\mathbb{C}^n)$，$\rho_X(\sigma)(e_i) = e_{\sigma(i)}$，是 $n$ 维表示，可分解为平凡表示与标准表示的直和。
> 4. **标准表示** $\rho_{\mathrm{std}}: S_n \to GL(W)$，其中 $W = \{(a_1,\ldots,a_n) \mid \sum a_i = 0\}$，是 $(n-1)$ 维不可约表示（当 $n \geq 3$ 时）。

> **注**：当 $n \geq 2$ 时，平凡表示与符号表示不同构；置换表示分解为 $\rho_X \cong \rho_{\mathrm{triv}} \oplus \rho_{\mathrm{std}}$。

<!-- symmetric_group_s2_decomposition -->
> [!Example]+
> **$S_2$ 的不可约表示**：$S_2 = \{e, (12)\}$ 是 $2$ 阶循环群，有 $2$ 个共轭类 $\{e\}, \{(12)\}$，因此恰有 $2$ 个一维不可约表示：
>
> | | $e$ | $(12)$ |
> |---|---|---|
> | $\chi_{\mathrm{triv}}$ | $1$ | $1$ |
> | $\chi_{\mathrm{sgn}}$ | $1$ | $-1$ |
>
> $S_2$ 的每个表示都完全可约为这两个一维不可约表示的直和。

<!-- symmetric_group_s3_decomposition -->
> [!Example]+
> **$S_3$ 的不可约表示**：$S_3$ 有 $|S_3| = 6$，共轭类为 $\{e\}$、$\{(12),(13),(23)\}$、$\{(123),(132)\}$，共 $3$ 个共轭类，故有 $3$ 个不可约表示，其维数 $d_1, d_2, d_3$ 满足
> $$d_1^2 + d_2^2 + d_3^2 = |S_3| = 6.$$
> 唯一满足的正整数解（按升序）为 $1,1,2$，即两个一维不可约表示（平凡表示 $\chi_{\mathrm{triv}}$ 和符号表示 $\chi_{\mathrm{sgn}}$）和一个二维不可约表示（标准表示 $\chi_{\mathrm{std}}$）。特征标表为
>
> | | $e$ | $(12)$ | $(123)$ |
> |---|---|---|---|
> | $\chi_{\mathrm{triv}}$ | $1$ | $1$ | $1$ |
> | $\chi_{\mathrm{sgn}}$ | $1$ | $-1$ | $1$ |
> | $\chi_{\mathrm{std}}$ | $2$ | $0$ | $-1$ |
>
> 二维标准表示可明确给出：将 $S_3$ 视为等边三角形的对称群，$\rho_{\mathrm{std}}$ 由 $(12)$ 对应矩阵 $\begin{pmatrix}0&1\\1&0\end{pmatrix}$（关于基 $e_1-e_2, e_1-e_3$ 重新取基后）实现。

<!-- symmetric_group_s4_summary -->
> [!Example]+
> **$S_4$ 的不可约表示（概述）**：$S_4$ 有 $|S_4| = 24$，共轭类（按轮换型分类）为
> $\{e\}$（型 $1^4$）、$\{(ij)\}$（型 $2 \cdot 1^2$，共 $6$ 个）、$\{(ijk)\}$（型 $3 \cdot 1$，共 $8$ 个）、$\{(ijkl)\}$（型 $4$，共 $6$ 个）、$\{(ij)(kl)\}$（型 $2^2$，共 $3$ 个），共 $5$ 个共轭类。故有 $5$ 个不可约表示，维数满足
> $$d_1^2 + d_2^2 + d_3^2 + d_4^2 + d_5^2 = 24,$$
> 解为 $1,1,2,3,3$（对应平凡表示、符号表示、二维表示和两个三维表示）。
