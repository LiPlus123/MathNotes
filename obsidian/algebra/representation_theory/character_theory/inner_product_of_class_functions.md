# 类函数的内积 Inner Product of Class Functions

<!-- inner_product_of_class_functions -->
> [!Definition]
> **类函数的 Hermite 内积 Hermitian Inner Product on Class Functions**：设 $G$ 是有限群，对 $\mathrm{Cl}(G)$（$G$ 上的复类函数空间）定义内积
> $$\langle f_1, f_2 \rangle = \frac{1}{|G|} \sum_{g \in G} f_1(g) \overline{f_2(g)},$$
> 其中 $\overline{(\cdot)}$ 表示复共轭。此内积满足 Hermite 对称性、线性性与正定性，使 $\mathrm{Cl}(G)$ 成为一个有限维复 Hilbert 空间。

> **注**：这一内积也可等价地写为对共轭类求和：若 $G$ 的共轭类为 $C_1, \ldots, C_k$，则
> $$\langle f_1, f_2 \rangle = \frac{1}{|G|} \sum_{i=1}^k |C_i| \, f_1(c_i) \overline{f_2(c_i)},$$
> 其中 $c_i \in C_i$ 是任取的代表元。

<!-- schur_orthogonality_characters_preview -->
> [!Theorem]
> **不可约特征标的正交性 Orthogonality of Irreducible Characters**：设 $G$ 是有限群，$F = \mathbb{C}$，$\chi_i, \chi_j$ 是 $G$ 的两个不可约复特征标，则
> $$\langle \chi_i, \chi_j \rangle = \begin{cases} 1 & \text{若 } \chi_i = \chi_j \text{（对应同构不可约表示）}, \\ 0 & \text{若 } \chi_i \neq \chi_j \text{（对应不同构不可约表示）}. \end{cases}$$
> 这等价于说，$G$ 的全体不等价不可约复特征标构成 $\mathrm{Cl}(G)$ 的一组标准正交基。

> **注**：此定理的证明依赖于舒尔正交关系，见舒尔正交关系一节。

<!-- multiplicity_formula -->
> [!Theorem]
> **重数公式 Multiplicity Formula**：设 $G$ 是有限群，$\rho: G \to GL(V)$ 是 $G$ 的一个（有限维复）表示，$\chi_1, \ldots, \chi_k$ 是 $G$ 的全体不等价不可约复特征标。则 $\rho$ 中第 $i$ 个不可约分量 $\rho_i$ 出现的重数为
> $$m_i = \langle \chi_\rho, \chi_i \rangle = \frac{1}{|G|} \sum_{g \in G} \chi_\rho(g) \overline{\chi_i(g)}.$$
> 从而 $\rho$ 的不可约分解唯一，且
> $$\chi_\rho = \sum_{i=1}^k m_i \chi_i, \quad m_i \in \mathbb{Z}_{\geq 0}.$$

> **证明思路**：由马施克定理，$\rho \cong \bigoplus_{i=1}^k m_i \rho_i$，故 $\chi_\rho = \sum_{i} m_i \chi_i$。对两边取与 $\chi_j$ 的内积，由不可约特征标的正交性，$\langle \chi_\rho, \chi_j \rangle = m_j$。

<!-- irreducibility_criterion -->
> [!Corollary]
> **不可约性判据 Irreducibility Criterion**：设 $\rho: G \to GL(V)$ 是有限群 $G$ 的复表示，则 $\rho$ 是不可约表示当且仅当
> $$\langle \chi_\rho, \chi_\rho \rangle = \frac{1}{|G|} \sum_{g \in G} |\chi_\rho(g)|^2 = 1.$$

> **证明思路**：设 $\rho \cong \bigoplus_i m_i \rho_i$，则 $\langle \chi_\rho, \chi_\rho \rangle = \sum_i m_i^2$。此式等于 $1$ 当且仅当恰有一个 $m_i = 1$ 而其余为 $0$，即 $\rho$ 不可约。

<!-- inner_product_example_s3 -->
> [!Example]+
> **$S_3$ 的内积计算**：$S_3$ 有三个不可约特征标（值列于共轭类 $\{e\}$、$\{(12),(13),(23)\}$、$\{(123),(132)\}$）：平凡特征标 $\chi_{\mathrm{triv}} = (1,1,1)$，符号特征标 $\chi_{\mathrm{sgn}} = (1,-1,1)$，标准表示特征标 $\chi_{\mathrm{std}} = (2,0,-1)$。
>
> 验证：$\langle \chi_{\mathrm{std}}, \chi_{\mathrm{std}} \rangle = \frac{1}{6}(1 \cdot 4 + 3 \cdot 0 + 2 \cdot 1) = \frac{6}{6} = 1$，说明标准表示不可约；$\langle \chi_{\mathrm{triv}}, \chi_{\mathrm{std}} \rangle = \frac{1}{6}(1 \cdot 2 + 3 \cdot 0 + 2 \cdot (-1)) = 0$，说明两者正交。
