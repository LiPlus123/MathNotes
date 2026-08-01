# Peter-Weyl 定理

## 紧群的酉表示分解

<!-- abstract_matrix_coefficient_definition -->
> [!Definition]
> **矩阵元素 Matrix Coefficient**：设 $\pi:G\to\mathcal{U}(V_\pi)$ 是紧群 $G$ 的有限维酉表示，$v,w\in V_\pi$。函数
> $$
> g\longmapsto\langle\pi(g)v,w\rangle
> $$
> 称为 $\pi$ 的矩阵元素。不可约表示的矩阵元素构成紧群 Fourier 分析的基本函数族。

<!-- abstract_peter_weyl_theorem -->
> [!Theorem]
> **Peter-Weyl 定理 Peter-Weyl Theorem**：设 $G$ 为紧 Hausdorff 群。所有有限维不可约酉表示的矩阵元素在 $C(G)$ 中一致稠密，并且在 $L^2(G)$ 中给出正交直和分解
> $$
> L^2(G)\cong\widehat{\bigoplus}_{\pi\in\widehat G}V_\pi\otimes V_\pi^*.
> $$
> 此处 Haar 测度归一化为总质量 $1$，$\widehat G$ 表示不可约酉表示的等价类集合。
>
> **证明思路**：由正则表示的有限维不变子空间构造矩阵元素代数；Stone-Weierstrass 定理给出一致稠密性。Schur 正交关系给出 $L^2$ 正交分解。

<!-- abstract_schur_orthogonality -->
> [!Theorem]
> **Schur 正交关系 Schur Orthogonality Relations**：若 $\pi,\rho$ 为不可约酉表示，维数分别为 $d_\pi,d_\rho$，则对正交基下的矩阵元素有
> $$
> \int_G\pi_{ij}(g)\overline{\rho_{k\ell}(g)}\,dg
> =\begin{cases}
> d_\pi^{-1}\delta_{ik}\delta_{j\ell},&\pi\cong\rho,\\
> 0,&\pi\not\cong\rho.
> \end{cases}
> $$
>
> **证明思路**：将矩阵元素的积分组合成 intertwining 算子，再应用 Schur 引理确定其为标量；通过取迹计算该标量。

<!-- abstract_compact_group_fourier_transform -->
> [!Definition]
> **紧群 Fourier 变换 Fourier Transform on a Compact Group**：对 $f\in L^1(G)$ 和 $\pi\in\widehat G$，定义算子值 Fourier 系数
> $$
> \widehat f(\pi)=\int_Gf(g)\pi(g)^*\,dg\in\operatorname{End}(V_\pi).
> $$
> 对足够正则的 $f$，Fourier 反演写为
> $$
> f(g)=\sum_{\pi\in\widehat G}d_\pi\operatorname{tr}\bigl(\pi(g)\widehat f(\pi)\bigr).
> $$

<!-- abstract_compact_group_plancherel -->
> [!Corollary]
> **紧群 Plancherel 恒等式 Compact Group Plancherel Identity**：对 $f\in L^2(G)$，
> $$
> \|f\|_2^2=\sum_{\pi\in\widehat G}d_\pi\|\widehat f(\pi)\|_{\mathrm{HS}}^2,
> $$
> 其中 $\|\cdot\|_{\mathrm{HS}}$ 是 Hilbert-Schmidt 范数。
>
> **证明思路**：将 Peter-Weyl 正交直和中的每一不可约分量以 Schur 正交归一化；Parseval 恒等式即为各分量 Hilbert-Schmidt 范数的求和。

<!-- abstract_character_theory_note -->
> [!Definition]
> **特征标 Character**：有限维表示 $\pi$ 的特征标为类函数
> $$
> \chi_\pi(g)=\operatorname{tr}\pi(g).
> $$
> 对紧群，不可约特征标在平方可积类函数空间中两两正交；它们编码不可约表示的分解重数。

> **来源**：Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapter 5；Michael E. Taylor, *Noncommutative Harmonic Analysis*。
