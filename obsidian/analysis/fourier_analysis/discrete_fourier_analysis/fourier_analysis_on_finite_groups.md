# 有限群上的 Fourier 分析

## 有限阿贝尔群的特征

<!-- character_of_finite_abelian_group_definition -->
> [!Definition]
> **有限阿贝尔群的特征 Character of a Finite Abelian Group**：设 $G$ 为有限阿贝尔群。群同态
> $$
> \chi:G\longrightarrow\mathbb{T}
> $$
> 称为 $G$ 的一个（复）特征。全体特征在逐点相乘下构成群，称为 $G$ 的对偶群，记为 $\widehat G$。

<!-- character_orthogonality_finite_abelian_group -->
> [!Theorem]
> **特征正交性 Orthogonality of Characters**：若 $\chi,\psi\in\widehat G$，则
> $$
> \frac{1}{|G|}\sum_{x\in G}\chi(x)\overline{\psi(x)}
> =\begin{cases}
> 1,&\chi=\psi,\\
> 0,&\chi\ne\psi.
> \end{cases}
> $$
> 此外，对任意 $x,y\in G$，有
> $$
> \sum_{\chi\in\widehat G}\chi(x)\overline{\chi(y)}=|G|\mathbf{1}_{\{y\}}(x).
> $$
>
> **证明思路**：当 $\chi\overline\psi$ 为非平凡特征时，取其不等于 $1$ 的函数值对应的群元素作平移，比较平移前后的和即可推出和为零。第二式是第一式的对偶表述，也可由特征矩阵的酉性得到。

<!-- finite_abelian_duality_theorem -->
> [!Theorem]
> **有限 Pontryagin 对偶 Finite Pontryagin Duality**：对有限阿贝尔群 $G$，有
> $$
> |\widehat G|=|G|,
> $$
> 且自然映射
> $$
> G\longrightarrow\widehat{\widehat G},
> \qquad x\longmapsto\bigl(\chi\mapsto\chi(x)\bigr)
> $$
> 是群同构。
>
> **证明思路**：将有限阿贝尔群分解为循环群的直积；循环群的特征由单位根完全刻画，且对偶群仍是同阶循环群。再对直积逐分量应用该结论。

## 群 Fourier 变换

<!-- finite_group_fourier_transform_definition -->
> [!Definition]
> **有限阿贝尔群上的 Fourier 变换 Fourier Transform on a Finite Abelian Group**：对函数 $f:G\to\mathbb{C}$，定义
> $$
> \widehat f(\chi)=\sum_{x\in G}f(x)\overline{\chi(x)},
> \qquad \chi\in\widehat G.
> $$

<!-- finite_group_fourier_inversion -->
> [!Theorem]
> **有限群 Fourier 反演 Fourier Inversion on a Finite Group**：对每个 $x\in G$，有
> $$
> f(x)=\frac{1}{|G|}\sum_{\chi\in\widehat G}\widehat f(\chi)\chi(x).
> $$
>
> **证明思路**：代入 Fourier 变换的定义并交换有限求和；特征正交性将内层和化为 $|G|\mathbf{1}_{\{x\}}(y)$。

<!-- finite_group_plancherel_theorem -->
> [!Theorem]
> **有限群 Plancherel 定理 Plancherel Theorem for Finite Groups**：对 $f,g:G\to\mathbb{C}$，有
> $$
> \sum_{x\in G}f(x)\overline{g(x)}
> =\frac{1}{|G|}\sum_{\chi\in\widehat G}\widehat f(\chi)\overline{\widehat g(\chi)}.
> $$
> 特别地，
> $$
> \sum_{x\in G}|f(x)|^2
> =\frac{1}{|G|}\sum_{\chi\in\widehat G}|\widehat f(\chi)|^2.
> $$
>
> **证明思路**：对 $g$ 使用 Fourier 反演公式并代入左端，交换有限求和即可；也可将特征正交性视为函数空间 $\mathbb{C}^G$ 的一组正交基。

<!-- cyclic_group_dft_example -->
> [!Example]+
> **循环群上的 Fourier 变换 Fourier Transform on a Cyclic Group**：对 $G=\mathbb{Z}/N\mathbb{Z}$，其特征为
> $$
> \chi_k(j)=\omega_N^{-jk},
> \qquad k=0,\ldots,N-1.
> $$
> 有限群 Fourier 变换恰为离散 Fourier 变换：
> $$
> \widehat f(k)=\sum_{j=0}^{N-1}f(j)\overline{\chi_k(j)}
> =\sum_{j=0}^{N-1}f(j)\omega_N^{jk}.
> $$
> 这与本 section 的 DFT 约定一致。

> **来源**：Terence Tao and Van H. Vu, *Additive Combinatorics*, Appendix 4；Audrey Terras, *Fourier Analysis on Finite Groups and Applications*, Chapters 1--2。