# 二面体群的表示 Representations of Dihedral Groups

<!-- dihedral_group_definition_reminder -->
> **注**：$n$ 阶二面体群 $D_n$（$n \geq 3$）是正 $n$ 边形的对称群，阶为 $2n$，由旋转 $r$（阶 $n$）和反射 $s$（阶 $2$）生成，关系为
> $$D_n = \langle r, s \mid r^n = s^2 = e,\; srs^{-1} = r^{-1} \rangle.$$

<!-- dihedral_group_conjugacy_classes -->
> [!Proposition]
> **$D_n$ 的共轭类**：设 $n \geq 3$。
>
> **当 $n$ 为奇数时**：$D_n$ 共有 $\dfrac{n+3}{2}$ 个共轭类，分别为：
> - $\{e\}$；
> - $\{r^k, r^{-k}\}$，$k = 1, 2, \ldots, \dfrac{n-1}{2}$（共 $\dfrac{n-1}{2}$ 个类，每类 $2$ 个元素）；
> - $\{s, sr, sr^2, \ldots, sr^{n-1}\}$（全体反射构成 $1$ 个类，共 $n$ 个元素）。
>
> **当 $n$ 为偶数时**：$D_n$ 共有 $\dfrac{n}{2} + 3$ 个共轭类，分别为：
> - $\{e\}$、$\{r^{n/2}\}$（各自为单元素类）；
> - $\{r^k, r^{-k}\}$，$k = 1, 2, \ldots, \dfrac{n}{2}-1$（共 $\dfrac{n}{2}-1$ 个类）；
> - $\{s, sr^2, sr^4, \ldots\}$（偶次反射，$\dfrac{n}{2}$ 个元素）；
> - $\{sr, sr^3, sr^5, \ldots\}$（奇次反射，$\dfrac{n}{2}$ 个元素）。

<!-- dihedral_group_irreps -->
> [!Theorem]
> **$D_n$ 的不可约表示**：设 $n \geq 3$，$\zeta_n = e^{2\pi i/n}$。
>
> **一维不可约表示**：当 $n$ 为奇数时，有 $2$ 个一维不可约表示（平凡表示 $\rho_{\mathrm{triv}}$ 和符号表示 $\rho_{\mathrm{sgn}}$）；当 $n$ 为偶数时，有 $4$ 个一维不可约表示（$\rho_{++}, \rho_{+-}, \rho_{-+}, \rho_{--}$，由 $r, s$ 各自取 $\pm 1$ 确定）。
>
> **二维不可约表示**：对 $k = 1, 2, \ldots, \lfloor (n-1)/2 \rfloor$，定义
> $$\rho_k: D_n \to GL(2, \mathbb{C}), \quad \rho_k(r) = \begin{pmatrix} \zeta_n^k & 0 \\ 0 & \zeta_n^{-k} \end{pmatrix}, \quad \rho_k(s) = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}.$$
> 这给出 $\lfloor (n-1)/2 \rfloor$ 个互不同构的二维不可约表示。
>
> 所有一维与二维不可约表示的维数平方和等于 $2n = |D_n|$，构成完整的不可约表示分类。

> **证明思路**：利用 $D_n$ 的子群 $\langle r \rangle \cong \mathbb{Z}/n\mathbb{Z}$ 的特征标将表示限制后分析，再通过维数公式验证完备性。$\rho_k$ 的不可约性由 Schur 引理验证（当 $k \not\equiv -k \pmod{n}$ 时，$\rho_k$ 与 $\rho_{n-k}$ 同构）。

<!-- dihedral_group_d3_character_table -->
> [!Example]+
> **$D_3$ 的特征标表**：$D_3 \cong S_3$，$|D_3| = 6$，$\frac{n+3}{2} = 3$ 个共轭类：$\{e\}$、$\{r, r^2\}$（即 $\{(123),(132)\}$）、$\{s, sr, sr^2\}$（即三个反射）。有 $2$ 个一维和 $1$ 个二维不可约表示：
>
> | | $e$ | $r$ | $s$ |
> |---|---|---|---|
> | $\chi_{\mathrm{triv}}$ | $1$ | $1$ | $1$ |
> | $\chi_{\mathrm{sgn}}$ | $1$ | $1$ | $-1$ |
> | $\chi_1$ | $2$ | $-1$ | $0$ |

<!-- dihedral_group_d4_character_table -->
> [!Example]+
> **$D_4$ 的特征标表**：$|D_4| = 8$，$n = 4$ 为偶数，共有 $\frac{4}{2}+3 = 5$ 个共轭类：$\{e\}$、$\{r^2\}$、$\{r, r^3\}$、$\{s, sr^2\}$、$\{sr, sr^3\}$。有 $4$ 个一维和 $1$ 个二维不可约表示，维数满足 $1^2 \times 4 + 2^2 = 8$。特征标表为：
>
> | | $e$ | $r^2$ | $r$ | $s$ | $sr$ |
> |---|---|---|---|---|---|
> | $\chi_{++}$ | $1$ | $1$ | $1$ | $1$ | $1$ |
> | $\chi_{+-}$ | $1$ | $1$ | $1$ | $-1$ | $-1$ |
> | $\chi_{-+}$ | $1$ | $1$ | $-1$ | $1$ | $-1$ |
> | $\chi_{--}$ | $1$ | $1$ | $-1$ | $-1$ | $1$ |
> | $\chi_1$ | $2$ | $-2$ | $0$ | $0$ | $0$ |
>
> 其中 $\chi_{++}$ 为平凡表示，$\chi_{--}$ 为符号表示；$\rho_1(r) = \begin{pmatrix}i&0\\0&-i\end{pmatrix}$，$\rho_1(s) = \begin{pmatrix}0&1\\1&0\end{pmatrix}$。
