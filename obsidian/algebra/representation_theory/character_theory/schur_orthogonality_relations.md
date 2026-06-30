# 舒尔正交关系 Schur Orthogonality Relations

<!-- schur_first_orthogonality -->
> [!Theorem]
> **第一正交关系（矩阵元正交）First Orthogonality Relation**：设 $G$ 是有限群，$F = \mathbb{C}$，$\rho: G \to GL(V)$ 和 $\sigma: G \to GL(W)$ 是 $G$ 的两个不可约复表示，$\rho(g)$ 在某组正交标准基下的矩阵元为 $\rho(g)_{ij}$，$\sigma(g)$ 的矩阵元为 $\sigma(g)_{kl}$。则
> $$\frac{1}{|G|} \sum_{g \in G} \rho(g)_{ij} \overline{\sigma(g)_{kl}} = \begin{cases} \dfrac{1}{\dim V} \delta_{ik} \delta_{jl} & \text{若 } \rho \cong \sigma, \\ 0 & \text{若 } \rho \not\cong \sigma. \end{cases}$$

> **证明思路**：对任意线性映射 $T: W \to V$，令 $\tilde{T} = \frac{1}{|G|} \sum_{g \in G} \rho(g) \circ T \circ \sigma(g)^{-1}$，则 $\tilde{T}$ 是从 $\sigma$ 到 $\rho$ 的交结算子。由舒尔引理：若 $\rho \not\cong \sigma$，则 $\tilde{T} = 0$；若 $\rho = \sigma$，则 $\tilde{T} = \lambda \, \mathrm{Id}_V$ 对某 $\lambda \in \mathbb{C}$，取迹定出 $\lambda = \mathrm{tr}(T)/\dim V$。取 $T$ 为矩阵单位 $E_{lk}$（仅 $(l,k)$ 位置为 $1$）代入，对各分量整理即得。

<!-- schur_character_orthogonality -->
> [!Corollary]
> **不可约特征标的正交关系 Orthogonality of Irreducible Characters**：设 $\chi_\rho, \chi_\sigma$ 是有限群 $G$ 的两个不可约复特征标，则
> $$\langle \chi_\rho, \chi_\sigma \rangle = \frac{1}{|G|} \sum_{g \in G} \chi_\rho(g) \overline{\chi_\sigma(g)} = \begin{cases} 1 & \text{若 } \rho \cong \sigma, \\ 0 & \text{若 } \rho \not\cong \sigma. \end{cases}$$

> **证明思路**：对矩阵元的第一正交关系，令 $i = j$ 和 $k = l$ 后对 $i, k$ 求和即得特征标的情形。

<!-- schur_second_orthogonality -->
> [!Theorem]
> **第二正交关系（列正交）Second Orthogonality Relation**：设 $G$ 是有限群，$\chi_1, \ldots, \chi_k$ 是 $G$ 的全体不等价不可约复特征标，$g, h \in G$，则
> $$\sum_{i=1}^k \chi_i(g) \overline{\chi_i(h)} = \begin{cases} |C_G(g)| & \text{若 } g \sim h \text{（$g$ 与 $h$ 共轭）}, \\ 0 & \text{若 } g \not\sim h, \end{cases}$$
> 其中 $|C_G(g)|$ 是 $g$ 的中心化子的阶（满足 $|C_G(g)| = |G|/|C_g|$，$|C_g|$ 为 $g$ 所在共轭类的大小）。

> **证明思路**：将不可约特征标 $\chi_i$ 的值排列成特征标表矩阵 $X$（行为不可约表示，列为共轭类代表元）。第一正交关系给出 $X$ 的行两两正交，说明 $X$ 满足行正交关系。由于 $X$ 是方阵（不可约特征标个数等于共轭类个数），行正交蕴含列正交，由此推出第二正交关系。

<!-- schur_orthogonality_example -->
> [!Example]+
> **$\mathbb{Z}/3\mathbb{Z}$ 的正交关系验证**：$G = \mathbb{Z}/3\mathbb{Z} = \{0,1,2\}$，$\omega = e^{2\pi i/3}$，三个不可约复表示均为一维：$\chi_j(k) = \omega^{jk}$，$j = 0, 1, 2$。验证第一正交关系：
> $$\frac{1}{3} \sum_{k=0}^2 \omega^{jk} \overline{\omega^{j'k}} = \frac{1}{3} \sum_{k=0}^2 \omega^{(j-j')k} = \delta_{jj'},$$
> 这正是离散 Fourier 变换的正交性。
