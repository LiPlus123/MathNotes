# 循环群的表示 Representations of Cyclic Groups

<!-- cyclic_group_one_dim_irrep -->
> [!Theorem]
> **循环群的不可约表示 Irreducible Representations of Cyclic Groups**：设 $G = \langle r \rangle \cong \mathbb{Z}/n\mathbb{Z}$ 是 $n$ 阶循环群，$F$ 是包含所有 $n$ 次单位根的域（例如 $F = \mathbb{C}$）。则 $G$ 的每个不可约 $F$-表示都是一维的，且恰好有 $n$ 个互不同构的不可约表示
> $$\rho_k: G \to F^\times, \quad \rho_k(r^j) = \zeta_n^{jk}, \quad k = 0, 1, \ldots, n-1,$$
> 其中 $\zeta_n = e^{2\pi i/n}$ 是 $n$ 次本原单位根。

> **证明思路**：由 Maschke 定理，$G$ 的任意表示完全可约；由 Schur 引理（代数闭域上），$G$ 在代数闭域上的不可约表示在同构意义下必为一维（因 $G$ 是 Abel 群，所有不可约表示维数为 1）。一维表示 $\rho: G \to F^\times$ 由 $\rho(r)$ 唯一确定，且 $\rho(r)^n = \rho(r^n) = \rho(e) = 1$，故 $\rho(r)$ 必为 $n$ 次单位根 $\zeta_n^k$（$k = 0, 1, \ldots, n-1$）。这 $n$ 个选取给出 $n$ 个互不同构的一维表示，恰与共轭类个数（$n$ 个）相符。

> **注**：若 $F$ 不包含所有 $n$ 次单位根（如 $F = \mathbb{R}$ 而 $n \geq 3$），则情况不同，部分不可约实表示的维数大于 $1$。本文默认 $F = \mathbb{C}$。

<!-- cyclic_group_character_table -->
> [!Example]+
> **循环群 $\mathbb{Z}/n\mathbb{Z}$ 的特征标表**：$n$ 阶循环群 $G = \langle r \rangle$ 有 $n$ 个共轭类（每个元素自成一类）和 $n$ 个不可约表示 $\rho_0, \rho_1, \ldots, \rho_{n-1}$，特征标表为
> $$\chi_k(r^j) = \zeta_n^{jk}, \quad 0 \leq k, j \leq n-1.$$
> 特征标表矩阵即 $n$ 阶 DFT（离散 Fourier 变换）矩阵。

<!-- cyclic_group_z4_example -->
> [!Example]+
> **$\mathbb{Z}/4\mathbb{Z}$ 的不可约表示**：设 $G = \langle r \mid r^4 = e \rangle$，$\zeta_4 = i$。四个不可约表示为
>
> | | $e$ | $r$ | $r^2$ | $r^3$ |
> |---|---|---|---|---|
> | $\chi_0$ | $1$ | $1$ | $1$ | $1$ |
> | $\chi_1$ | $1$ | $i$ | $-1$ | $-i$ |
> | $\chi_2$ | $1$ | $-1$ | $1$ | $-1$ |
> | $\chi_3$ | $1$ | $-i$ | $-1$ | $i$ |
>
> 其中 $\chi_0$ 是平凡表示，$\chi_2$ 是符号型表示（值域为 $\{1,-1\}$），$\chi_1, \chi_3$ 互为复共轭。
