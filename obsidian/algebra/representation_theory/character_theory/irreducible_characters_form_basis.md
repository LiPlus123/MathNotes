# 不可约特征标构成基 Irreducible Characters Form a Basis

<!-- irreducible_characters_orthonormal_basis -->
> [!Theorem]
> **不可约特征标构成正交规范基 Irreducible Characters Form an Orthonormal Basis**：设 $G$ 是有限群，$\chi_1, \chi_2, \ldots, \chi_k$ 是 $G$ 的全体不等价不可约复特征标（共 $k$ 个）。则 $\{\chi_1, \ldots, \chi_k\}$ 构成类函数空间 $\mathrm{Cl}(G)$ 的一组标准正交基，即：
> 1. **正交规范性**：$\langle \chi_i, \chi_j \rangle = \delta_{ij}$；
> 2. **完备性**：每个类函数 $f \in \mathrm{Cl}(G)$ 均可唯一表示为 $f = \sum_{i=1}^k \langle f, \chi_i \rangle \, \chi_i$。

> **证明思路**：正交规范性由舒尔正交关系直接给出。完备性方面，需说明不可约特征标个数等于共轭类个数（即 $k = \dim \mathrm{Cl}(G)$），并且它们线性无关（由正交性自动成立）。因此 $k$ 个线性无关向量张成一个 $k$ 维空间，即整个 $\mathrm{Cl}(G)$。

<!-- number_of_irreducible_equals_conjugacy_classes -->
> [!Theorem]
> **不可约表示个数等于共轭类个数 Number of Irreducible Representations Equals Number of Conjugacy Classes**：有限群 $G$ 的不等价不可约复表示的个数等于 $G$ 的共轭类的个数。

> **证明思路**：一方面，由舒尔正交关系，不可约特征标两两正交，故不等价不可约复表示的个数 $k \leq \dim \mathrm{Cl}(G) = $ 共轭类个数。另一方面，通过群代数 $\mathbb{C}G$ 的 Wedderburn 分解（或通过考虑正则表示的分解），可以证明不可约表示的个数至少等于共轭类个数，从而两者相等。

<!-- dimension_identity -->
> [!Theorem]
> **维数恒等式 Dimension Identity**：设 $G$ 是有限群，$\rho_1, \ldots, \rho_k$ 是 $G$ 的全体不等价不可约复表示，维数分别为 $n_1, \ldots, n_k$，则
> $$\sum_{i=1}^k n_i^2 = |G|.$$

> **证明思路**：考虑正则表示 $\rho_{\mathrm{reg}}: G \to GL(\mathbb{C}G)$。正则表示的特征标为
> $$\chi_{\mathrm{reg}}(g) = \begin{cases} |G| & \text{若 } g = e, \\ 0 & \text{若 } g \neq e. \end{cases}$$
> 由重数公式，第 $i$ 个不可约分量的重数为
> $$m_i = \langle \chi_{\mathrm{reg}}, \chi_i \rangle = \frac{1}{|G|} \cdot |G| \cdot \chi_i(e) = \chi_i(e) = n_i.$$
> 故正则表示的维数 $|G| = \sum_i m_i n_i = \sum_i n_i^2$。

<!-- irreducible_basis_example -->
> [!Example]+
> **$D_4$ 的不可约表示维数验证**：$D_4$（$8$ 阶二面体群）有 $5$ 个共轭类，故有 $5$ 个不等价不可约复表示，维数满足 $n_1^2 + \cdots + n_5^2 = 8$。解为 $1^2 + 1^2 + 1^2 + 1^2 + 2^2 = 8$，即有 $4$ 个一维表示和 $1$ 个二维表示。
