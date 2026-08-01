# Hecke 代数与球表示

## 紧开双陪集与 Satake 同构

<!-- local_hecke_algebra_definition -->
> [!Definition]
> **Hecke 代数 Hecke Algebra**：设 $G$ 为全不连通局部紧群，$K\leq G$ 为紧开子群。球 Hecke 代数定义为
> $$
> \mathcal{H}(G,K)=C_c(K\backslash G/K),
> $$
> 即紧支撑、双 $K$-不变的局部常值复函数，乘法为卷积
> $$
> (f_1*f_2)(g)=\int_Gf_1(h)f_2(h^{-1}g)\,dh.
> $$
> Haar 测度通常归一化为 $\operatorname{vol}(K)=1$。

<!-- local_double_coset_basis -->
> [!Proposition]
> **双陪集基 Double-Coset Basis**：函数 $\mathbf{1}_{KgK}$（$KgK\in K\backslash G/K$）构成 $\mathcal{H}(G,K)$ 的向量空间基。卷积乘法的结构常数由双陪集分解的有限组合性决定。
>
> **证明思路**：紧支撑且双 $K$-不变函数只在有限多个双陪集上非零，故可唯一写成相应示性函数的有限线性组合；紧开性保证卷积仍为紧支撑局部常值函数。

<!-- local_spherical_representation_definition -->
> [!Definition]
> **球表示 Spherical Representation**：不可约光滑表示 $(\pi,V)$ 称为相对于 $K$ 的球表示，若
> $$
> V^K\ne0.
> $$
> 当 $(G,K)$ 是非阿基米德球对时，未分歧不可约表示通常等价于具有非零 $K$-固定向量的不可约可容许表示。

<!-- local_hecke_eigencharacter -->
> [!Proposition]
> **Hecke 特征值 Hecke Eigenvalues**：若 $(\pi,V)$ 是球表示且 $\dim V^K=1$，则 $\mathcal{H}(G,K)$ 在 $V^K$ 上按角色作用：
> $$
> \pi(f)v=\lambda_\pi(f)v
> \qquad(f\in\mathcal H(G,K),\ v\in V^K).
> $$
> 该角色编码未分歧表示的 Satake 参数。
>
> **证明思路**：$\pi(f)$ 与 $K$ 的作用交换，故保持 $V^K$；一维性迫使其为标量。卷积表示性质说明标量映射为代数同态。

<!-- local_satake_isomorphism -->
> [!Theorem]
> **Satake 同构 Satake Isomorphism**：设 $G$ 是非阿基米德域上的分裂连通约化群，$K$ 是超特殊极大紧开子群，$T$ 是极大分裂环面，$W$ 是 Weyl 群。经适当的 $q$-归一化，存在代数同构
> $$
> \mathcal{H}(G,K)\cong\mathbb{C}[X_*(T)]^W.
> $$
> 右侧也可理解为 Langlands 对偶群 $\widehat G$ 上半单共轭类的正则函数代数。
>
> **证明思路**：以 Cartan 分解参数化 $K\backslash G/K$，再取常数项（Satake 变换）到环面上的函数。三角性和主项计算证明该变换为同构。

<!-- local_unramified_representation_note -->
> [!Definition]
> **未分歧表示与 Satake 参数 Unramified Representations and Satake Parameters**：具有 $K$-固定向量的不可约可容许表示称为未分歧表示。其 Hecke 特征角色对应于对偶群 $\widehat G$ 的一个半单共轭类，称为 Satake 参数；这是局部 Langlands 对应的未分歧部分的模型。

> **来源**：I. G. Macdonald, *Spherical Functions on a Group of $p$-adic Type*；James E. Humphreys, *Introduction to Lie Algebras and Representation Theory*，Weyl 群背景；T. Haines, *Introduction to Shimura Varieties with Bad Reduction of Parahoric Type*，Satake 背景。
