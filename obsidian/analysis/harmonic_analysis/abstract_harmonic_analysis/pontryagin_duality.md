# Pontryagin 对偶

## LCA 群上的 Fourier 分析

<!-- abstract_lca_group_definition -->
> [!Definition]
> **局部紧 Abel 群 Locally Compact Abelian Group**：局部紧 Abel 群，简称 LCA 群，是同时局部紧、Hausdorff 且交换的拓扑群。其连续特征标是连续同态 $\gamma:G\to\mathbb{T}$。

<!-- abstract_dual_group_definition -->
> [!Definition]
> **对偶群 Dual Group**：LCA 群 $G$ 的 Pontryagin 对偶群定义为
> $$
> \widehat G=\{\gamma:G\to\mathbb{T}:\gamma\text{ 是连续同态}\},
> $$
> 其群运算为逐点乘法，并配备紧开拓扑。此拓扑使 $\widehat G$ 再次成为 LCA 群。

<!-- abstract_lca_fourier_transform_definition -->
> [!Definition]
> **LCA 群上的 Fourier 变换 Fourier Transform on an LCA Group**：固定 $G$ 的 Haar 测度 $dx$。对 $f\in L^1(G)$，定义
> $$
> \widehat f(\gamma)=\int_Gf(x)\overline{\gamma(x)}\,dx,
> \qquad\gamma\in\widehat G.
> $$
> 它将卷积化为点乘：$\widehat{f*g}=\widehat f\,\widehat g$。

<!-- abstract_pontryagin_duality_theorem -->
> [!Theorem]
> **Pontryagin 对偶定理 Pontryagin Duality Theorem**：自然评价映射
> $$
> \iota_G:G\longrightarrow\widehat{\widehat G},
> \qquad \iota_G(x)(\gamma)=\gamma(x),
> $$
> 是 LCA 群的拓扑同构。特别地，对偶运算在 LCA 群范畴中是反变的二次等价。
>
> **证明思路**：先证明评价映射连续且单射；借助紧群和离散群的对偶性、结构定理及闭子群商群的正合性，验证其满射和拓扑性质。

<!-- abstract_pontryagin_examples -->
> [!Example]+
> **经典对偶对 Classical Dual Pairs**：在标准配对下，
> $$
> \widehat{\mathbb{Z}}\cong\mathbb{T},
> \qquad \widehat{\mathbb{T}}\cong\mathbb{Z},
> \qquad \widehat{\mathbb{R}^n}\cong\mathbb{R}^n.
> $$
> 有限 Abel 群与其对偶群非规范同构。由此，Fourier 级数、Fourier 积分和离散 Fourier 变换统一为 LCA 群 Fourier 变换。

<!-- abstract_annihilator_duality -->
> [!Proposition]
> **湮没子与子群对偶 Annihilators and Subgroup Duality**：若 $H\leq G$ 是闭子群，定义
> $$
> H^\perp=\{\gamma\in\widehat G:\gamma(h)=1\ \text{对所有 }h\in H\}.
> $$
> 则
> $$
> \widehat{G/H}\cong H^\perp,
> \qquad \widehat H\cong\widehat G/H^\perp.
> $$
> 这些同构反映了商与闭子群在对偶下的互换。
>
> **证明思路**：$G/H$ 的特征标恰对应于在 $H$ 上平凡的 $G$ 特征标；第二式由 Pontryagin 对偶定理应用于包含映射和商映射得到。

> **来源**：Walter Rudin, *Fourier Analysis on Groups*, Chapters 1--2；Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapter 4。
